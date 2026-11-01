package g;

import java.security.cert.Certificate;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;

/* loaded from: classes3.dex */
public final class gvr implements HostnameVerifier {

    /* renamed from: a, reason: collision with root package name */
    public static final gvr f18833a = new gvr();

    public static List b(X509Certificate x509Certificate, int i) {
        Collection<List<?>> subjectAlternativeNames;
        Object obj;
        try {
            subjectAlternativeNames = x509Certificate.getSubjectAlternativeNames();
        } catch (CertificateParsingException unused) {
        }
        if (subjectAlternativeNames == null) {
            return fai.f16469a;
        }
        ArrayList arrayList = new ArrayList();
        for (List<?> list : subjectAlternativeNames) {
            if (list != null && list.size() >= 2 && bff.n(list.get(0), Integer.valueOf(i)) && (obj = list.get(1)) != null) {
                arrayList.add((String) obj);
            }
        }
        return arrayList;
    }

    public static boolean c(String str) {
        int i;
        int length = str.length();
        int length2 = str.length();
        if (length2 < 0) {
            throw new IllegalArgumentException(awf.b(length2, "endIndex < beginIndex: ", " < 0").toString());
        }
        if (length2 > str.length()) {
            StringBuilder z = tn.z(length2, "endIndex > string.length: ", " > ");
            z.append(str.length());
            throw new IllegalArgumentException(z.toString().toString());
        }
        long j = 0;
        int i2 = 0;
        while (i2 < length2) {
            char charAt = str.charAt(i2);
            if (charAt < 128) {
                j++;
            } else {
                if (charAt < 2048) {
                    i = 2;
                } else if (charAt < 55296 || charAt > 57343) {
                    i = 3;
                } else {
                    int i3 = i2 + 1;
                    char charAt2 = i3 < length2 ? str.charAt(i3) : (char) 0;
                    if (charAt > 56319 || charAt2 < 56320 || charAt2 > 57343) {
                        j++;
                        i2 = i3;
                    } else {
                        j += 4;
                        i2 += 2;
                    }
                }
                j += i;
            }
            i2++;
        }
        return length == ((int) j);
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x0125 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:52:? A[LOOP:1: B:22:0x0065->B:52:?, LOOP_END, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean d(String str, X509Certificate x509Certificate) {
        boolean z;
        int length;
        bff.p(str, "host");
        byte[] bArr = erq.f16043c;
        if (erq.f16044d.a(str)) {
            String t = byh.t(str);
            List b2 = b(x509Certificate, 7);
            if (!b2.isEmpty()) {
                Iterator it = b2.iterator();
                while (it.hasNext()) {
                    if (bff.n(t, byh.t((String) it.next()))) {
                        return true;
                    }
                }
            }
            return false;
        }
        if (c(str)) {
            Locale locale = Locale.US;
            bff.e(locale, "US");
            str = str.toLowerCase(locale);
            bff.e(str, "this as java.lang.String).toLowerCase(locale)");
        }
        List<String> b3 = b(x509Certificate, 2);
        if (!b3.isEmpty()) {
            for (String str2 : b3) {
                if (str.length() != 0 && !dmc.bw(str, ".", false) && !dmc.by(str, "..") && str2 != null && str2.length() != 0 && !dmc.bw(str2, ".", false) && !dmc.by(str2, "..")) {
                    String concat = !dmc.by(str, ".") ? str.concat(".") : str;
                    if (!dmc.by(str2, ".")) {
                        str2 = str2.concat(".");
                    }
                    if (c(str2)) {
                        Locale locale2 = Locale.US;
                        bff.e(locale2, "US");
                        str2 = str2.toLowerCase(locale2);
                        bff.e(str2, "this as java.lang.String).toLowerCase(locale)");
                    }
                    if (!dcv.bq(str2, "*")) {
                        z = bff.n(concat, str2);
                    } else if (dmc.bw(str2, "*.", false) && dcv.bh(str2, '*', 1, 4) == -1 && concat.length() >= str2.length() && !"*.".equals(str2)) {
                        String substring = str2.substring(1);
                        bff.e(substring, "this as java.lang.String).substring(startIndex)");
                        if (dmc.by(concat, substring) && ((length = concat.length() - substring.length()) <= 0 || dcv.bs(concat, length - 1, 4, '.') == -1)) {
                            z = true;
                        }
                    }
                    if (!z) {
                        return true;
                    }
                }
                z = false;
                if (!z) {
                }
            }
        }
        return false;
    }

    @Override // javax.net.ssl.HostnameVerifier
    public final boolean verify(String str, SSLSession sSLSession) {
        bff.p(str, "host");
        bff.p(sSLSession, "session");
        if (c(str)) {
            try {
                Certificate certificate = sSLSession.getPeerCertificates()[0];
                bff.ag(certificate, "null cannot be cast to non-null type java.security.cert.X509Certificate");
                return d(str, (X509Certificate) certificate);
            } catch (SSLException unused) {
            }
        }
        return false;
    }
}

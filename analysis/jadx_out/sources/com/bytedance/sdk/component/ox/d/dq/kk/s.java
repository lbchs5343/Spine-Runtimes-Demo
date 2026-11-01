package com.bytedance.sdk.component.ox.d.dq.kk;

import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;

/* loaded from: classes.dex */
public final class s implements HostnameVerifier {
    public static final s dq = new s();

    private s() {
    }

    private boolean d(String str, X509Certificate x509Certificate) {
        List<String> dq2 = dq(x509Certificate, 7);
        int size = dq2.size();
        for (int i = 0; i < size; i++) {
            if (str.equalsIgnoreCase(dq2.get(i))) {
                return true;
            }
        }
        return false;
    }

    public static List<String> dq(X509Certificate x509Certificate) {
        List<String> dq2 = dq(x509Certificate, 7);
        List<String> dq3 = dq(x509Certificate, 2);
        ArrayList arrayList = new ArrayList(dq3.size() + dq2.size());
        arrayList.addAll(dq2);
        arrayList.addAll(dq3);
        return arrayList;
    }

    private static List<String> dq(X509Certificate x509Certificate, int i) {
        Integer num;
        String str;
        ArrayList arrayList = new ArrayList();
        try {
            Collection<List<?>> subjectAlternativeNames = x509Certificate.getSubjectAlternativeNames();
            if (subjectAlternativeNames == null) {
                return Collections.EMPTY_LIST;
            }
            for (List<?> list : subjectAlternativeNames) {
                if (list != null && list.size() >= 2 && (num = (Integer) list.get(0)) != null && num.intValue() == i && (str = (String) list.get(1)) != null) {
                    arrayList.add(str);
                }
            }
            return arrayList;
        } catch (CertificateParsingException unused) {
            return Collections.EMPTY_LIST;
        }
    }

    private boolean ox(String str, X509Certificate x509Certificate) {
        String dq2;
        String lowerCase = str.toLowerCase(Locale.US);
        List<String> dq3 = dq(x509Certificate, 2);
        int size = dq3.size();
        int i = 0;
        boolean z = false;
        while (i < size) {
            if (dq(lowerCase, dq3.get(i))) {
                return true;
            }
            i++;
            z = true;
        }
        if (z || (dq2 = new p(x509Certificate.getSubjectX500Principal()).dq("cn")) == null) {
            return false;
        }
        return dq(lowerCase, dq2);
    }

    public boolean dq(String str, String str2) {
        if (str != null && str.length() != 0 && !str.startsWith(".") && !str.endsWith("..") && str2 != null && str2.length() != 0 && !str2.startsWith(".") && !str2.endsWith("..")) {
            if (!str.endsWith(".")) {
                str = str.concat(".");
            }
            if (!str2.endsWith(".")) {
                str2 = str2.concat(".");
            }
            String lowerCase = str2.toLowerCase(Locale.US);
            if (!lowerCase.contains("*")) {
                return str.equals(lowerCase);
            }
            if (!lowerCase.startsWith("*.") || lowerCase.indexOf(42, 1) != -1 || str.length() < lowerCase.length() || "*.".equals(lowerCase)) {
                return false;
            }
            String substring = lowerCase.substring(1);
            if (!str.endsWith(substring)) {
                return false;
            }
            int length = str.length() - substring.length();
            return length <= 0 || str.lastIndexOf(46, length - 1) == -1;
        }
        return false;
    }

    public boolean dq(String str, X509Certificate x509Certificate) {
        return com.bytedance.sdk.component.ox.d.dq.ox.ox(str) ? d(str, x509Certificate) : ox(str, x509Certificate);
    }

    @Override // javax.net.ssl.HostnameVerifier
    public boolean verify(String str, SSLSession sSLSession) {
        try {
            return dq(str, (X509Certificate) sSLSession.getPeerCertificates()[0]);
        } catch (SSLException unused) {
            return false;
        }
    }
}

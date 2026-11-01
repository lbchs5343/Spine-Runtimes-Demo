package g;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.regex.Pattern;
import okhttp3.internal.publicsuffix.PublicSuffixDatabase;

/* loaded from: classes3.dex */
public abstract class fyd {
    static {
        gei geiVar = gei.n;
        dwm.ac("\"\\");
        dwm.ac("\t ,=");
    }

    public static final boolean a(enb enbVar) {
        if (bff.n((String) enbVar.i.f13887f, "HEAD")) {
            return false;
        }
        int i = enbVar.f15840g;
        return (((i >= 100 && i < 200) || i == 204 || i == 304) && erq.z(enbVar) == -1 && !"chunked".equalsIgnoreCase(enb.o("Transfer-Encoding", enbVar))) ? false : true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:110:0x01a7, code lost:
    
        if (g.erq.f16044d.a(r0) == false) goto L94;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void b(ao aoVar, eyn eynVar, dvq dvqVar) {
        List list;
        ayz ayzVar;
        long j;
        bff.p(aoVar, "<this>");
        bff.p(eynVar, abn.EXTRA_URL);
        bff.p(dvqVar, TTDownloadField.TT_HEADERS);
        if (aoVar == ao.k) {
            return;
        }
        Pattern pattern = ayz.f11092d;
        List d2 = dvqVar.d("Set-Cookie");
        int size = d2.size();
        int i = 0;
        int i2 = 0;
        ArrayList arrayList = null;
        while (i2 < size) {
            String str = (String) d2.get(i2);
            bff.p(str, "setCookie");
            long currentTimeMillis = System.currentTimeMillis();
            byte[] bArr = erq.f16043c;
            char c2 = ';';
            int ae = erq.ae(str, i, str.length(), ';');
            char c3 = '=';
            int ae2 = erq.ae(str, i, ae, '=');
            if (ae2 != ae) {
                String k = erq.k(i, ae2, str);
                if (k.length() != 0 && erq.n(k) == -1) {
                    String k2 = erq.k(ae2 + 1, ae, str);
                    if (erq.n(k2) == -1) {
                        int i3 = ae + 1;
                        int length = str.length();
                        long j2 = -1;
                        long j3 = 253402300799999L;
                        String str2 = null;
                        String str3 = null;
                        boolean z = false;
                        boolean z2 = true;
                        boolean z3 = false;
                        boolean z4 = false;
                        while (true) {
                            if (i3 < length) {
                                int ae3 = erq.ae(str, i3, length, c2);
                                int ae4 = erq.ae(str, i3, ae3, c3);
                                String k3 = erq.k(i3, ae4, str);
                                String k4 = ae4 < ae3 ? erq.k(ae4 + 1, ae3, str) : "";
                                if (k3.equalsIgnoreCase("expires")) {
                                    try {
                                        j3 = buj.aj(k4.length(), k4);
                                        z3 = true;
                                    } catch (NumberFormatException | IllegalArgumentException unused) {
                                    }
                                    i3 = ae3 + 1;
                                    c2 = ';';
                                    c3 = '=';
                                } else if (k3.equalsIgnoreCase("max-age")) {
                                    try {
                                        long parseLong = Long.parseLong(k4);
                                        j2 = parseLong <= 0 ? Long.MIN_VALUE : parseLong;
                                    } catch (NumberFormatException e2) {
                                        if (!new hu("-?\\d+").a(k4)) {
                                            throw e2;
                                        }
                                        j2 = dmc.bw(k4, "-", false) ? Long.MIN_VALUE : Long.MAX_VALUE;
                                    }
                                    z3 = true;
                                    i3 = ae3 + 1;
                                    c2 = ';';
                                    c3 = '=';
                                } else {
                                    if (k3.equalsIgnoreCase("domain")) {
                                        if (dmc.by(k4, ".")) {
                                            throw new IllegalArgumentException("Failed requirement.");
                                        }
                                        String t = byh.t(dcv.bp(k4, "."));
                                        if (t == null) {
                                            throw new IllegalArgumentException();
                                        }
                                        str3 = t;
                                        z2 = false;
                                    } else if (k3.equalsIgnoreCase("path")) {
                                        str2 = k4;
                                    } else if (k3.equalsIgnoreCase("secure")) {
                                        z4 = true;
                                    } else if (k3.equalsIgnoreCase("httponly")) {
                                        z = true;
                                    }
                                    i3 = ae3 + 1;
                                    c2 = ';';
                                    c3 = '=';
                                }
                            } else {
                                if (j2 == Long.MIN_VALUE) {
                                    j = Long.MIN_VALUE;
                                } else if (j2 != -1) {
                                    long j4 = currentTimeMillis + (j2 <= 9223372036854775L ? j2 * 1000 : Long.MAX_VALUE);
                                    j = (j4 < currentTimeMillis || j4 > 253402300799999L) ? 253402300799999L : j4;
                                } else {
                                    j = j3;
                                }
                                String str4 = eynVar.f16373c;
                                if (str3 == null) {
                                    str3 = str4;
                                } else if (!bff.n(str4, str3)) {
                                    if (dmc.by(str4, str3)) {
                                        if (str4.charAt((str4.length() - str3.length()) - 1) == '.') {
                                        }
                                    }
                                }
                                if (str4.length() == str3.length() || PublicSuffixDatabase.f21207c.i(str3) != null) {
                                    String str5 = "/";
                                    if (str2 == null || !dmc.bw(str2, "/", false)) {
                                        String q = eynVar.q();
                                        int bs = dcv.bs(q, 0, 6, '/');
                                        if (bs != 0) {
                                            str5 = q.substring(0, bs);
                                            bff.e(str5, "this as java.lang.String…ing(startIndex, endIndex)");
                                        }
                                        str2 = str5;
                                    }
                                    ayzVar = new ayz(k, k2, j, str3, str2, z4, z, z3, z2);
                                }
                            }
                        }
                    }
                }
            }
            ayzVar = null;
            if (ayzVar != null) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(ayzVar);
            }
            i2++;
            i = 0;
        }
        if (arrayList != null) {
            list = Collections.unmodifiableList(arrayList);
            bff.e(list, "{\n        Collections.un…ableList(cookies)\n      }");
        } else {
            list = fai.f16469a;
        }
        list.isEmpty();
    }
}

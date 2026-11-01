package g;

import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import java.lang.reflect.Method;
import ms.bz.bd.c.Pgl.p1;
import ms.bz.bd.c.Pgl.pblb;
import ms.bz.bd.c.Pgl.pbly;
import ms.bz.bd.c.Pgl.pgla;

/* loaded from: classes.dex */
public final class djb extends pblb.pgla {
    @Override // ms.bz.bd.c.Pgl.pblb.pgla
    public final Object a(Object obj, String str) {
        String str2;
        String r;
        String str3 = "0";
        String str4 = "null";
        String str5 = null;
        try {
            WifiInfo connectionInfo = ((WifiManager) pgla.f21199a.f21200b.getSystemService("wifi")).getConnectionInfo();
            Class<?> cls = connectionInfo.getClass();
            Method declaredMethod = cls.getDeclaredMethod(new String(pbly.a("6765744253534944")), null);
            declaredMethod.setAccessible(true);
            String str6 = (String) declaredMethod.invoke(connectionInfo, null);
            try {
                Method declaredMethod2 = cls.getDeclaredMethod(new String(pbly.a("67657453534944")), null);
                declaredMethod2.setAccessible(true);
                str2 = (String) declaredMethod2.invoke(connectionInfo, null);
                try {
                    Method declaredMethod3 = cls.getDeclaredMethod(new String(pbly.a("676574497041646472657373")), null);
                    declaredMethod3.setAccessible(true);
                    String num = Integer.toString(((Integer) declaredMethod3.invoke(connectionInfo, null)).intValue());
                    String a2 = p1.a(str2);
                    String a3 = p1.a(str6);
                    String a4 = p1.a(num);
                    StringBuilder sb = new StringBuilder();
                    sb.append((a3 == null || a3.length() <= 0) ? "null" : a3.trim());
                    sb.append("[<!>]");
                    if (a2 != null && a2.length() > 0) {
                        str4 = a2.trim();
                    }
                    sb.append(str4);
                    sb.append("[<!>]");
                    if (a4 != null && a4.length() > 0) {
                        str3 = a4.trim();
                    }
                    r = awf.ad(sb, str3, "[<!>]");
                } catch (Throwable unused) {
                    str5 = str6;
                    String a5 = p1.a(str2);
                    String a6 = p1.a(str5);
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append((a6 == null || a6.length() <= 0) ? "null" : a6.trim());
                    sb2.append("[<!>]");
                    if (a5 != null && a5.length() > 0) {
                        str4 = a5.trim();
                    }
                    r = awf.r(sb2, str4, "[<!>]", "0", "[<!>]");
                    return r.trim();
                }
            } catch (Throwable unused2) {
                str2 = null;
            }
        } catch (Throwable unused3) {
            str2 = null;
        }
        return r.trim();
    }
}

package ms.bz.bd.c.Pgl;

import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.text.TextUtils;
import java.lang.reflect.Method;
import ms.bz.bd.c.Pgl.pblb;

/* loaded from: classes.dex */
final class z extends pblb.pgla {
    @Override // ms.bz.bd.c.Pgl.pblb.pgla
    public final Object a(Object obj, String str) {
        String str2 = null;
        try {
            WifiInfo connectionInfo = ((WifiManager) pgla.f21199a.f21200b.getApplicationContext().getSystemService((String) pblk.a(16777217, 0, 0L, "f17b27", new byte[]{96, 58, 66, 31}))).getConnectionInfo();
            Method declaredMethod = connectionInfo.getClass().getDeclaredMethod(new String(pbly.a((String) pblk.a(16777217, 0, 0L, "7ea058", new byte[]{112, 48, 68, 17, 93, 123, 96, 29, 103, 48, 114, 54, 68, 16, 92, 123, 99, 22, 102, 53, 113, 52, 69, 23}))), null);
            declaredMethod.setAccessible(true);
            str2 = Integer.toString(((Integer) declaredMethod.invoke(connectionInfo, null)).intValue());
        } catch (Throwable unused) {
        }
        return TextUtils.isEmpty(str2) ? (String) pblk.a(16777217, 0, 0L, "011271", new byte[]{113}) : str2.trim();
    }
}

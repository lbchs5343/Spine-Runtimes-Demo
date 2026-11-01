package ms.bz.bd.c.Pgl;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import java.lang.reflect.Method;
import ms.bz.bd.c.Pgl.pblb;

/* loaded from: classes.dex */
final class u extends pblb.pgla {
    @Override // ms.bz.bd.c.Pgl.pblb.pgla
    public final Object a(Object obj, String str) {
        Context context = pgla.f21199a.f21200b;
        if (context != null) {
            try {
                ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService((String) pblk.a(16777217, 0, 0L, "1e0340", new byte[]{35, 104, 77, 73, 14, 36, 38, 77, 119, 106, 52, 126}));
                Method declaredMethod = connectivityManager.getClass().getDeclaredMethod((String) pblk.a(16777217, 0, 0L, "c84884", new byte[]{117, 63, 83, 109, 4, 55, 105, 15, 96, 70, 119, 46, 80, 67, 21, 40, 73, 23, 99, 103}), null);
                declaredMethod.setAccessible(true);
                NetworkInfo networkInfo = (NetworkInfo) declaredMethod.invoke(connectivityManager, null);
                if (networkInfo != null) {
                    Method declaredMethod2 = networkInfo.getClass().getDeclaredMethod((String) pblk.a(16777217, 0, 0L, "ac88d6", new byte[]{121, 114, 106, 90, 90, 40, 110, 67, 107, 100, 117}), null);
                    declaredMethod2.setAccessible(true);
                    Boolean bool = (Boolean) declaredMethod2.invoke(networkInfo, null);
                    bool.getClass();
                    return bool;
                }
            } catch (Throwable unused) {
            }
        }
        return Boolean.FALSE;
    }
}

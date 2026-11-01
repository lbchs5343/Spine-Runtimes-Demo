package ms.bz.bd.c.Pgl;

import android.net.ConnectivityManager;
import android.net.Network;
import android.os.Build;
import ms.bz.bd.c.Pgl.pblb;

/* loaded from: classes.dex */
final class d0 extends pblb.pgla {
    @Override // ms.bz.bd.c.Pgl.pblb.pgla
    public final Object a(Object obj, String str) {
        Network activeNetwork;
        if (Build.VERSION.SDK_INT >= 23) {
            try {
                ConnectivityManager connectivityManager = (ConnectivityManager) pgla.f21199a.f21200b.getSystemService((String) pblk.a(16777217, 0, 0L, "976758", new byte[]{43, 58, 75, 77, 15, 44, 46, 31, 113, 110, 60, 44}));
                activeNetwork = connectivityManager.getActiveNetwork();
                return (String) (connectivityManager.getNetworkCapabilities(activeNetwork).hasTransport(4) ? pblk.a(16777217, 0, 0L, "6731d9", new byte[]{118}) : pblk.a(16777217, 0, 0L, "c19cf4", new byte[]{34}));
            } catch (Throwable unused) {
            }
        }
        return (String) pblk.a(16777217, 0, 0L, "9fc28c", new byte[]{120});
    }
}

package ms.bz.bd.c.Pgl;

import android.content.Intent;
import android.content.IntentFilter;
import ms.bz.bd.c.Pgl.pblb;

/* loaded from: classes.dex */
final class p extends pblb.pgla {
    @Override // ms.bz.bd.c.Pgl.pblb.pgla
    public final Object a(Object obj, String str) {
        Intent registerReceiver = m1.d(pgla.f21199a.f21200b).f21172b.registerReceiver(null, new IntentFilter((String) pblk.a(16777217, 0, 0L, "7cb553", new byte[]{39, 111, 21, 83, 5, 45, 48, 12, 58, 107, 50, 100, 31, 85, 68, 37, 55, 86, 58, 106, 40, 47, 51, 96, 62, 16, 17, 112, 10, 90, 5, 73, 48, 111, 45, 1, 16})));
        int i = -1;
        if (registerReceiver != null) {
            int intExtra = registerReceiver.getIntExtra((String) pblk.a(16777217, 0, 0L, "e24381", new byte[]{103, 36, 70, 83, 18, 53}), -1);
            i = (intExtra == 2 || intExtra == 5) ? 1 : 0;
        }
        return Integer.valueOf(i);
    }
}

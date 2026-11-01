package ms.bz.bd.c.Pgl;

import android.telephony.TelephonyManager;
import ms.bz.bd.c.Pgl.pblb;

/* loaded from: classes.dex */
final class m extends pblb.pgla {
    @Override // ms.bz.bd.c.Pgl.pblb.pgla
    public final Object a(Object obj, String str) {
        Boolean bool = Boolean.FALSE;
        TelephonyManager telephonyManager = (TelephonyManager) pgla.f21199a.f21200b.getApplicationContext().getSystemService((String) pblk.a(16777217, 0, 0L, "02a4a0", new byte[]{49, 56, 29, 78, 91}));
        return (telephonyManager == null || telephonyManager.getSimState() != 5) ? bool : Boolean.TRUE;
    }
}

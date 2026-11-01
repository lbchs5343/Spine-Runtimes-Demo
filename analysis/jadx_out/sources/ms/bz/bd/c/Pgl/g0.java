package ms.bz.bd.c.Pgl;

import android.content.Context;
import android.util.DisplayMetrics;
import ms.bz.bd.c.Pgl.pblb;

/* loaded from: classes.dex */
final class g0 extends pblb.pgla {
    @Override // ms.bz.bd.c.Pgl.pblb.pgla
    public final Object a(Object obj, String str) {
        Context context = pgla.f21199a.f21200b;
        if (context != null) {
            try {
                new DisplayMetrics();
                k1.f21166a = context.getResources().getDisplayMetrics().densityDpi;
            } catch (Throwable unused) {
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append(k1.f21166a);
        return sb.toString();
    }
}

package g;

import android.graphics.Point;
import android.view.Display;
import android.view.WindowManager;
import ms.bz.bd.c.Pgl.pblb;
import ms.bz.bd.c.Pgl.pgla;
import ms.bz.bd.c.Pgl.q0;

/* loaded from: classes.dex */
public final class fzv extends pblb.pgla {
    @Override // ms.bz.bd.c.Pgl.pblb.pgla
    public final Object a(Object obj, String str) {
        try {
            Display defaultDisplay = ((WindowManager) pgla.f21199a.f21200b.getSystemService("window")).getDefaultDisplay();
            Point point = new Point();
            defaultDisplay.getRealSize(point);
            q0.f21201a = point.x;
            q0.f21202b = point.y;
        } catch (Throwable unused) {
        }
        return q0.f21201a + "*" + q0.f21202b;
    }
}

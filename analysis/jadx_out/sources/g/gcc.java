package g;

import android.graphics.Insets;
import android.view.View;
import android.view.WindowInsets;

/* loaded from: classes.dex */
public class gcc extends faf {
    public static final anp ap;

    static {
        WindowInsets windowInsets;
        windowInsets = WindowInsets.CONSUMED;
        ap = anp.c(null, windowInsets);
    }

    public gcc(anp anpVar, WindowInsets windowInsets) {
        super(anpVar, windowInsets);
    }

    @Override // g.efp, g.dif
    public boolean h(int i) {
        boolean isVisible;
        isVisible = this.ag.isVisible(pg.a(i));
        return isVisible;
    }

    @Override // g.efp, g.dif
    public oi i(int i) {
        Insets insets;
        insets = this.ag.getInsets(pg.a(i));
        return oi.h(insets);
    }

    @Override // g.efp, g.dif
    public final void p(View view) {
    }
}

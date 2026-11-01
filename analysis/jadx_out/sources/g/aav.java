package g;

import android.graphics.Insets;
import android.view.WindowInsets;

/* loaded from: classes.dex */
public final class aav extends hch {

    /* renamed from: g, reason: collision with root package name */
    public static final anp f9881g;

    static {
        WindowInsets windowInsets;
        windowInsets = WindowInsets.CONSUMED;
        f9881g = anp.c(null, windowInsets);
    }

    public aav(anp anpVar, WindowInsets windowInsets) {
        super(anpVar, windowInsets);
    }

    @Override // g.gcc, g.efp, g.dif
    public boolean h(int i) {
        boolean isVisible;
        isVisible = this.ag.isVisible(fsh.a(i));
        return isVisible;
    }

    @Override // g.gcc, g.efp, g.dif
    public oi i(int i) {
        Insets insets;
        insets = this.ag.getInsets(fsh.a(i));
        return oi.h(insets);
    }
}

package g;

import android.graphics.Insets;
import android.view.WindowInsets;

/* loaded from: classes.dex */
public class faf extends ask {
    public oi am;
    public oi an;
    public oi ao;

    public faf(anp anpVar, WindowInsets windowInsets) {
        super(anpVar, windowInsets);
        this.am = null;
        this.an = null;
        this.ao = null;
    }

    @Override // g.u, g.dif
    public void f(oi oiVar) {
    }

    @Override // g.dif
    public oi n() {
        Insets tappableElementInsets;
        if (this.ao == null) {
            tappableElementInsets = this.ag.getTappableElementInsets();
            this.ao = oi.h(tappableElementInsets);
        }
        return this.ao;
    }

    @Override // g.efp, g.dif
    public anp q(int i, int i2, int i3, int i4) {
        WindowInsets inset;
        inset = this.ag.inset(i, i2, i3, i4);
        return anp.c(null, inset);
    }

    @Override // g.dif
    public oi t() {
        Insets systemGestureInsets;
        if (this.am == null) {
            systemGestureInsets = this.ag.getSystemGestureInsets();
            this.am = oi.h(systemGestureInsets);
        }
        return this.am;
    }

    @Override // g.dif
    public oi w() {
        Insets mandatorySystemGestureInsets;
        if (this.an == null) {
            mandatorySystemGestureInsets = this.ag.getMandatorySystemGestureInsets();
            this.an = oi.h(mandatorySystemGestureInsets);
        }
        return this.an;
    }
}

package g;

import android.graphics.Matrix;
import android.view.View;

/* loaded from: classes.dex */
public final class dxe extends bip {
    @Override // g.bli
    public final float aa(View view) {
        float transitionAlpha;
        transitionAlpha = view.getTransitionAlpha();
        return transitionAlpha;
    }

    @Override // g.bgp, g.bli
    public final void c(View view, int i, int i2, int i3, int i4) {
        view.setLeftTopRightBottom(i, i2, i3, i4);
    }

    @Override // g.bip, g.bli
    public final void e(View view, int i) {
        view.setTransitionVisibility(i);
    }

    @Override // g.bli
    public final void w(View view, Matrix matrix) {
        view.transformMatrixToGlobal(matrix);
    }

    @Override // g.bli
    public final void x(View view, Matrix matrix) {
        view.transformMatrixToLocal(matrix);
    }

    @Override // g.bli
    public final void z(View view, float f2) {
        view.setTransitionAlpha(f2);
    }
}

package g;

import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

/* loaded from: classes3.dex */
public abstract class gbw extends dip {
    public gvg q;

    @Override // g.dip
    public boolean o(CoordinatorLayout coordinatorLayout, View view, int i) {
        p(coordinatorLayout, view, i);
        if (this.q == null) {
            this.q = new gvg(view);
        }
        gvg gvgVar = this.q;
        View view2 = (View) gvgVar.f18811c;
        gvgVar.f18813e = view2.getTop();
        gvgVar.f18810b = view2.getLeft();
        gvg gvgVar2 = this.q;
        View view3 = (View) gvgVar2.f18811c;
        goi.m(0 - (view3.getTop() - gvgVar2.f18813e), view3);
        goi.i(0 - (view3.getLeft() - gvgVar2.f18810b), view3);
        return true;
    }

    public void p(CoordinatorLayout coordinatorLayout, View view, int i) {
        coordinatorLayout.as(i, view);
    }
}

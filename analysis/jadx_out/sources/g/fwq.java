package g;

import android.view.View;
import android.view.ViewParent;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.google.android.material.behavior.SwipeDismissBehavior;

/* loaded from: classes3.dex */
public final class fwq extends eg {
    public int at;
    public int au = -1;
    public final /* synthetic */ SwipeDismissBehavior av;

    public fwq(SwipeDismissBehavior swipeDismissBehavior) {
        this.av = swipeDismissBehavior;
    }

    @Override // g.eg
    public final void aj(int i) {
        eie eieVar = this.av.s;
        if (eieVar != null) {
            cle cleVar = (cle) eieVar.f15585g;
            if (i == 0) {
                duw.j().s(cleVar.v);
            } else if (i == 1 || i == 2) {
                duw.j().q(cleVar.v);
            }
        }
    }

    @Override // g.eg
    public final int ak(int i, View view) {
        int width;
        int width2;
        int width3;
        boolean z = view.getLayoutDirection() == 1;
        int i2 = this.av.p;
        if (i2 == 0) {
            if (z) {
                width = this.at - view.getWidth();
                width2 = this.at;
            } else {
                width = this.at;
                width3 = view.getWidth();
                width2 = width3 + width;
            }
        } else if (i2 != 1) {
            width = this.at - view.getWidth();
            width2 = view.getWidth() + this.at;
        } else if (z) {
            width = this.at;
            width3 = view.getWidth();
            width2 = width3 + width;
        } else {
            width = this.at - view.getWidth();
            width2 = this.at;
        }
        return Math.min(Math.max(width, i), width2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x004f, code lost:
    
        if (java.lang.Math.abs(r9.getLeft() - r8.at) >= java.lang.Math.round(r9.getWidth() * 0.5f)) goto L27;
     */
    @Override // g.eg
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void al(View view, float f2, float f3) {
        int i;
        eie eieVar;
        this.au = -1;
        int width = view.getWidth();
        SwipeDismissBehavior swipeDismissBehavior = this.av;
        boolean z = true;
        if (f2 != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            boolean z2 = view.getLayoutDirection() == 1;
            int i2 = swipeDismissBehavior.p;
            if (i2 != 2) {
                if (i2 == 0) {
                    i = this.at;
                    z = false;
                } else {
                    i = this.at;
                    z = false;
                }
            }
            if (f2 >= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                int left = view.getLeft();
                int i3 = this.at;
                if (left >= i3) {
                    i = i3 + width;
                }
            }
            i = this.at - width;
        }
        if (swipeDismissBehavior.q.y(i, view.getTop())) {
            view.postOnAnimation(new cef(3, swipeDismissBehavior, view, z));
        } else {
            if (!z || (eieVar = swipeDismissBehavior.s) == null) {
                return;
            }
            eieVar.y(view);
        }
    }

    @Override // g.eg
    public final void am(View view, int i, int i2) {
        float width = view.getWidth();
        SwipeDismissBehavior swipeDismissBehavior = this.av;
        float f2 = width * swipeDismissBehavior.r;
        float width2 = view.getWidth() * swipeDismissBehavior.u;
        float abs = Math.abs(i - this.at);
        if (abs <= f2) {
            view.setAlpha(1.0f);
        } else if (abs >= width2) {
            view.setAlpha(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        } else {
            view.setAlpha(Math.min(Math.max(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f - ((abs - f2) / (width2 - f2))), 1.0f));
        }
    }

    @Override // g.eg
    public final int an(int i, View view) {
        return view.getTop();
    }

    @Override // g.eg
    public final int ap(View view) {
        return view.getWidth();
    }

    @Override // g.eg
    public final void aq(int i, View view) {
        this.au = i;
        this.at = view.getLeft();
        ViewParent parent = view.getParent();
        if (parent != null) {
            SwipeDismissBehavior swipeDismissBehavior = this.av;
            swipeDismissBehavior.f9002b = true;
            parent.requestDisallowInterceptTouchEvent(true);
            swipeDismissBehavior.f9002b = false;
        }
    }

    @Override // g.eg
    public final boolean as(int i, View view) {
        int i2 = this.au;
        return (i2 == -1 || i2 == i) && this.av.v(view);
    }
}

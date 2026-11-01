package g;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public final class bjd {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11689a;

    /* renamed from: b, reason: collision with root package name */
    public final androidx.recyclerview.widget.b f11690b;

    /* renamed from: c, reason: collision with root package name */
    public int f11691c = Integer.MIN_VALUE;

    /* renamed from: d, reason: collision with root package name */
    public final Rect f11692d = new Rect();

    public bjd(androidx.recyclerview.widget.b bVar, int i) {
        this.f11689a = i;
        this.f11690b = bVar;
    }

    public static bjd e(androidx.recyclerview.widget.b bVar, int i) {
        if (i == 0) {
            return new bjd(bVar, 0);
        }
        if (i == 1) {
            return new bjd(bVar, 1);
        }
        throw new IllegalArgumentException("invalid orientation");
    }

    public final int f() {
        switch (this.f11689a) {
            case 0:
                return this.f11690b.fj();
            default:
                return this.f11690b.er();
        }
    }

    public final int g() {
        int eq;
        int fj;
        switch (this.f11689a) {
            case 0:
                androidx.recyclerview.widget.b bVar = this.f11690b;
                eq = bVar.f0do - bVar.eq();
                fj = bVar.fj();
                break;
            default:
                androidx.recyclerview.widget.b bVar2 = this.f11690b;
                eq = bVar2.dn - bVar2.fd();
                fj = bVar2.er();
                break;
        }
        return eq - fj;
    }

    public final void h(int i) {
        switch (this.f11689a) {
            case 0:
                this.f11690b.fe(i);
                break;
            default:
                this.f11690b.ez(i);
                break;
        }
    }

    public final int i(View view) {
        int ea;
        int i;
        switch (this.f11689a) {
            case 0:
                yx yxVar = (yx) view.getLayoutParams();
                this.f11690b.getClass();
                ea = androidx.recyclerview.widget.b.ea(view) + ((ViewGroup.MarginLayoutParams) yxVar).topMargin;
                i = ((ViewGroup.MarginLayoutParams) yxVar).bottomMargin;
                break;
            default:
                yx yxVar2 = (yx) view.getLayoutParams();
                this.f11690b.getClass();
                ea = androidx.recyclerview.widget.b.eg(view) + ((ViewGroup.MarginLayoutParams) yxVar2).leftMargin;
                i = ((ViewGroup.MarginLayoutParams) yxVar2).rightMargin;
                break;
        }
        return ea + i;
    }

    public final int j(View view) {
        switch (this.f11689a) {
            case 0:
                androidx.recyclerview.widget.b bVar = this.f11690b;
                Rect rect = this.f11692d;
                bVar.ew(rect, view);
                return rect.right;
            default:
                androidx.recyclerview.widget.b bVar2 = this.f11690b;
                Rect rect2 = this.f11692d;
                bVar2.ew(rect2, view);
                return rect2.bottom;
        }
    }

    public final int k(View view) {
        int left;
        int i;
        switch (this.f11689a) {
            case 0:
                yx yxVar = (yx) view.getLayoutParams();
                this.f11690b.getClass();
                left = view.getLeft() - ((yx) view.getLayoutParams()).f20372c.left;
                i = ((ViewGroup.MarginLayoutParams) yxVar).leftMargin;
                break;
            default:
                yx yxVar2 = (yx) view.getLayoutParams();
                this.f11690b.getClass();
                left = view.getTop() - ((yx) view.getLayoutParams()).f20372c.top;
                i = ((ViewGroup.MarginLayoutParams) yxVar2).topMargin;
                break;
        }
        return left - i;
    }

    public final int l() {
        switch (this.f11689a) {
            case 0:
                return this.f11690b.f0do;
            default:
                return this.f11690b.dn;
        }
    }

    public final int m(View view) {
        switch (this.f11689a) {
            case 0:
                androidx.recyclerview.widget.b bVar = this.f11690b;
                Rect rect = this.f11692d;
                bVar.ew(rect, view);
                return rect.left;
            default:
                androidx.recyclerview.widget.b bVar2 = this.f11690b;
                Rect rect2 = this.f11692d;
                bVar2.ew(rect2, view);
                return rect2.top;
        }
    }

    public final int n() {
        switch (this.f11689a) {
            case 0:
                return this.f11690b.dq;
            default:
                return this.f11690b.du;
        }
    }

    public final int o(View view) {
        int right;
        int i;
        switch (this.f11689a) {
            case 0:
                yx yxVar = (yx) view.getLayoutParams();
                this.f11690b.getClass();
                right = view.getRight() + ((yx) view.getLayoutParams()).f20372c.right;
                i = ((ViewGroup.MarginLayoutParams) yxVar).rightMargin;
                break;
            default:
                yx yxVar2 = (yx) view.getLayoutParams();
                this.f11690b.getClass();
                right = view.getBottom() + ((yx) view.getLayoutParams()).f20372c.bottom;
                i = ((ViewGroup.MarginLayoutParams) yxVar2).bottomMargin;
                break;
        }
        return right + i;
    }

    public final int p() {
        switch (this.f11689a) {
            case 0:
                return this.f11690b.eq();
            default:
                return this.f11690b.fd();
        }
    }

    public final int q(View view) {
        int eg;
        int i;
        switch (this.f11689a) {
            case 0:
                yx yxVar = (yx) view.getLayoutParams();
                this.f11690b.getClass();
                eg = androidx.recyclerview.widget.b.eg(view) + ((ViewGroup.MarginLayoutParams) yxVar).leftMargin;
                i = ((ViewGroup.MarginLayoutParams) yxVar).rightMargin;
                break;
            default:
                yx yxVar2 = (yx) view.getLayoutParams();
                this.f11690b.getClass();
                eg = androidx.recyclerview.widget.b.ea(view) + ((ViewGroup.MarginLayoutParams) yxVar2).topMargin;
                i = ((ViewGroup.MarginLayoutParams) yxVar2).bottomMargin;
                break;
        }
        return eg + i;
    }

    public final int r() {
        int i;
        int fj;
        switch (this.f11689a) {
            case 0:
                androidx.recyclerview.widget.b bVar = this.f11690b;
                i = bVar.f0do;
                fj = bVar.fj();
                break;
            default:
                androidx.recyclerview.widget.b bVar2 = this.f11690b;
                i = bVar2.dn;
                fj = bVar2.er();
                break;
        }
        return i - fj;
    }
}

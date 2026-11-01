package g;

import android.view.View;

/* loaded from: classes.dex */
public final class cea {

    /* renamed from: a, reason: collision with root package name */
    public boolean f12722a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f12723b;

    /* renamed from: c, reason: collision with root package name */
    public bjd f12724c;

    /* renamed from: d, reason: collision with root package name */
    public int f12725d;

    /* renamed from: e, reason: collision with root package name */
    public int f12726e;

    public cea() {
        f();
    }

    public final void f() {
        this.f12725d = -1;
        this.f12726e = Integer.MIN_VALUE;
        this.f12722a = false;
        this.f12723b = false;
    }

    public final void g() {
        this.f12726e = this.f12722a ? this.f12724c.r() : this.f12724c.p();
    }

    public final void h(int i, View view) {
        if (this.f12722a) {
            int o = this.f12724c.o(view);
            bjd bjdVar = this.f12724c;
            this.f12726e = (Integer.MIN_VALUE == bjdVar.f11691c ? 0 : bjdVar.g() - bjdVar.f11691c) + o;
        } else {
            this.f12726e = this.f12724c.k(view);
        }
        this.f12725d = i;
    }

    public final void i(int i, View view) {
        bjd bjdVar = this.f12724c;
        int g2 = Integer.MIN_VALUE == bjdVar.f11691c ? 0 : bjdVar.g() - bjdVar.f11691c;
        if (g2 >= 0) {
            h(i, view);
            return;
        }
        this.f12725d = i;
        if (!this.f12722a) {
            int k = this.f12724c.k(view);
            int p = k - this.f12724c.p();
            this.f12726e = k;
            if (p > 0) {
                int r = (this.f12724c.r() - Math.min(0, (this.f12724c.r() - g2) - this.f12724c.o(view))) - (this.f12724c.q(view) + k);
                if (r < 0) {
                    this.f12726e -= Math.min(p, -r);
                    return;
                }
                return;
            }
            return;
        }
        int r2 = (this.f12724c.r() - g2) - this.f12724c.o(view);
        this.f12726e = this.f12724c.r() - r2;
        if (r2 > 0) {
            int q = this.f12726e - this.f12724c.q(view);
            int p2 = this.f12724c.p();
            int min = q - (Math.min(this.f12724c.k(view) - p2, 0) + p2);
            if (min < 0) {
                this.f12726e = Math.min(r2, -min) + this.f12726e;
            }
        }
    }

    public final String toString() {
        return "AnchorInfo{mPosition=" + this.f12725d + ", mCoordinate=" + this.f12726e + ", mLayoutFromEnd=" + this.f12722a + ", mValid=" + this.f12723b + '}';
    }
}

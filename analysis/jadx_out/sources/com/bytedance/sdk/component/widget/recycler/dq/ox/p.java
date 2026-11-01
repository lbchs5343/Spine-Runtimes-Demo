package com.bytedance.sdk.component.widget.recycler.dq.ox;

import android.view.View;
import android.view.ViewParent;

/* loaded from: classes.dex */
public class p {

    /* renamed from: d, reason: collision with root package name */
    private ViewParent f2271d;
    private ViewParent dq;
    private final View ox;
    private boolean p;
    private int[] s;

    public p(View view) {
        this.ox = view;
    }

    private void dq(int i, ViewParent viewParent) {
        if (i == 0) {
            this.dq = viewParent;
        } else {
            if (i != 1) {
                return;
            }
            this.f2271d = viewParent;
        }
    }

    private ViewParent p(int i) {
        if (i == 0) {
            return this.dq;
        }
        if (i != 1) {
            return null;
        }
        return this.f2271d;
    }

    public boolean d() {
        return dq(0);
    }

    public boolean d(int i) {
        return dq(i, 0);
    }

    public void dq(boolean z) {
        if (this.p) {
            mn.o(this.ox);
        }
        this.p = z;
    }

    public boolean dq() {
        return this.p;
    }

    public boolean dq(float f2, float f3) {
        ViewParent p;
        if (!dq() || (p = p(0)) == null) {
            return false;
        }
        return ia.dq(p, this.ox, f2, f3);
    }

    public boolean dq(float f2, float f3, boolean z) {
        ViewParent p;
        if (!dq() || (p = p(0)) == null) {
            return false;
        }
        return ia.dq(p, this.ox, f2, f3, z);
    }

    public boolean dq(int i) {
        return p(i) != null;
    }

    public boolean dq(int i, int i2) {
        if (dq(i2)) {
            return true;
        }
        if (!dq()) {
            return false;
        }
        View view = this.ox;
        for (ViewParent parent = this.ox.getParent(); parent != null; parent = parent.getParent()) {
            if (ia.dq(parent, view, this.ox, i, i2)) {
                dq(i2, parent);
                ia.d(parent, view, this.ox, i, i2);
                return true;
            }
            if (parent instanceof View) {
                view = (View) parent;
            }
        }
        return false;
    }

    public boolean dq(int i, int i2, int i3, int i4, int[] iArr) {
        return dq(i, i2, i3, i4, iArr, 0);
    }

    public boolean dq(int i, int i2, int i3, int i4, int[] iArr, int i5) {
        ViewParent p;
        int i6;
        int i7;
        if (!dq() || (p = p(i5)) == null) {
            return false;
        }
        if (i == 0 && i2 == 0 && i3 == 0 && i4 == 0) {
            if (iArr != null) {
                iArr[0] = 0;
                iArr[1] = 0;
            }
            return false;
        }
        if (iArr != null) {
            this.ox.getLocationInWindow(iArr);
            i6 = iArr[0];
            i7 = iArr[1];
        } else {
            i6 = 0;
            i7 = 0;
        }
        ia.dq(p, this.ox, i, i2, i3, i4, i5);
        if (iArr != null) {
            this.ox.getLocationInWindow(iArr);
            iArr[0] = iArr[0] - i6;
            iArr[1] = iArr[1] - i7;
        }
        return true;
    }

    public boolean dq(int i, int i2, int[] iArr, int[] iArr2) {
        return dq(i, i2, iArr, iArr2, 0);
    }

    public boolean dq(int i, int i2, int[] iArr, int[] iArr2, int i3) {
        ViewParent p;
        int i4;
        int i5;
        if (!dq() || (p = p(i3)) == null) {
            return false;
        }
        if (i == 0 && i2 == 0) {
            if (iArr2 != null) {
                iArr2[0] = 0;
                iArr2[1] = 0;
            }
            return false;
        }
        if (iArr2 != null) {
            this.ox.getLocationInWindow(iArr2);
            i4 = iArr2[0];
            i5 = iArr2[1];
        } else {
            i4 = 0;
            i5 = 0;
        }
        if (iArr == null) {
            if (this.s == null) {
                this.s = new int[2];
            }
            iArr = this.s;
        }
        int[] iArr3 = iArr;
        iArr3[0] = 0;
        iArr3[1] = 0;
        ia.dq(p, this.ox, i, i2, iArr3, i3);
        if (iArr2 != null) {
            this.ox.getLocationInWindow(iArr2);
            iArr2[0] = iArr2[0] - i4;
            iArr2[1] = iArr2[1] - i5;
        }
        return (iArr3[0] == 0 && iArr3[1] == 0) ? false : true;
    }

    public void ox() {
        ox(0);
    }

    public void ox(int i) {
        ViewParent p = p(i);
        if (p != null) {
            ia.dq(p, this.ox, i);
            dq(i, (ViewParent) null);
        }
    }
}

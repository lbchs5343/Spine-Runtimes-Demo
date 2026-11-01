package g;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class dum {

    /* renamed from: a, reason: collision with root package name */
    public cxc f14843a;

    /* renamed from: b, reason: collision with root package name */
    public cxc f14844b;

    /* renamed from: c, reason: collision with root package name */
    public final View f14845c;

    /* renamed from: d, reason: collision with root package name */
    public cxc f14846d;

    /* renamed from: f, reason: collision with root package name */
    public int f14848f = -1;

    /* renamed from: e, reason: collision with root package name */
    public final cfl f14847e = cfl.f();

    public dum(View view) {
        this.f14845c = view;
    }

    public final void g(ColorStateList colorStateList) {
        if (this.f14844b == null) {
            this.f14844b = new cxc(2);
        }
        cxc cxcVar = this.f14844b;
        cxcVar.f13671a = colorStateList;
        cxcVar.f13675e = true;
        j();
    }

    public final void h(AttributeSet attributeSet, int i) {
        ColorStateList u;
        View view = this.f14845c;
        Context context = view.getContext();
        int[] iArr = acs.f9995a;
        dzh j = dzh.j(context, attributeSet, iArr, i);
        TypedArray typedArray = (TypedArray) j.f15121f;
        View view2 = this.f14845c;
        goi.x(view2, view2.getContext(), iArr, attributeSet, (TypedArray) j.f15121f, i);
        try {
            if (typedArray.hasValue(0)) {
                this.f14848f = typedArray.getResourceId(0, -1);
                cfl cflVar = this.f14847e;
                Context context2 = view.getContext();
                int i2 = this.f14848f;
                synchronized (cflVar) {
                    u = cflVar.f12790c.u(context2, i2);
                }
                if (u != null) {
                    o(u);
                }
            }
            if (typedArray.hasValue(1)) {
                goi.y(view, j.aa(1));
            }
            if (typedArray.hasValue(2)) {
                PorterDuff.Mode f2 = edd.f(typedArray.getInt(2, -1), null);
                int i3 = Build.VERSION.SDK_INT;
                cd.i(view, f2);
                if (i3 == 21) {
                    Drawable background = view.getBackground();
                    boolean z = (cd.l(view) == null && cd.c(view) == null) ? false : true;
                    if (background != null && z) {
                        if (background.isStateful()) {
                            background.setState(view.getDrawableState());
                        }
                        view.setBackground(background);
                    }
                }
            }
            j.af();
        } catch (Throwable th) {
            j.af();
            throw th;
        }
    }

    public final void i() {
        this.f14848f = -1;
        o(null);
        j();
    }

    public final void j() {
        View view = this.f14845c;
        Drawable background = view.getBackground();
        if (background != null) {
            int i = Build.VERSION.SDK_INT;
            if (i <= 21 ? i == 21 : this.f14843a != null) {
                if (this.f14846d == null) {
                    this.f14846d = new cxc(2);
                }
                cxc cxcVar = this.f14846d;
                cxcVar.f13671a = null;
                cxcVar.f13675e = false;
                cxcVar.f13672b = null;
                cxcVar.f13674d = false;
                WeakHashMap weakHashMap = goi.f18490c;
                ColorStateList l = cd.l(view);
                if (l != null) {
                    cxcVar.f13675e = true;
                    cxcVar.f13671a = l;
                }
                PorterDuff.Mode c2 = cd.c(view);
                if (c2 != null) {
                    cxcVar.f13674d = true;
                    cxcVar.f13672b = c2;
                }
                if (cxcVar.f13675e || cxcVar.f13674d) {
                    cfl.e(background, cxcVar, view.getDrawableState());
                    return;
                }
            }
            cxc cxcVar2 = this.f14844b;
            if (cxcVar2 != null) {
                cfl.e(background, cxcVar2, view.getDrawableState());
                return;
            }
            cxc cxcVar3 = this.f14843a;
            if (cxcVar3 != null) {
                cfl.e(background, cxcVar3, view.getDrawableState());
            }
        }
    }

    public final void k(int i) {
        ColorStateList colorStateList;
        this.f14848f = i;
        cfl cflVar = this.f14847e;
        if (cflVar != null) {
            Context context = this.f14845c.getContext();
            synchronized (cflVar) {
                colorStateList = cflVar.f12790c.u(context, i);
            }
        } else {
            colorStateList = null;
        }
        o(colorStateList);
        j();
    }

    public final void l(PorterDuff.Mode mode) {
        if (this.f14844b == null) {
            this.f14844b = new cxc(2);
        }
        cxc cxcVar = this.f14844b;
        cxcVar.f13672b = mode;
        cxcVar.f13674d = true;
        j();
    }

    public final ColorStateList m() {
        cxc cxcVar = this.f14844b;
        if (cxcVar != null) {
            return (ColorStateList) cxcVar.f13671a;
        }
        return null;
    }

    public final PorterDuff.Mode n() {
        cxc cxcVar = this.f14844b;
        if (cxcVar != null) {
            return (PorterDuff.Mode) cxcVar.f13672b;
        }
        return null;
    }

    public final void o(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (this.f14843a == null) {
                this.f14843a = new cxc(2);
            }
            cxc cxcVar = this.f14843a;
            cxcVar.f13671a = colorStateList;
            cxcVar.f13675e = true;
        } else {
            this.f14843a = null;
        }
        j();
    }
}

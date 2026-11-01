package g;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.view.View;

/* loaded from: classes.dex */
public final class dv implements aeb {

    /* renamed from: a, reason: collision with root package name */
    public float f14872a;

    /* renamed from: b, reason: collision with root package name */
    public float f14873b;

    /* renamed from: c, reason: collision with root package name */
    public float f14874c;

    /* renamed from: d, reason: collision with root package name */
    public final View f14875d;

    /* renamed from: e, reason: collision with root package name */
    public float f14876e;

    /* renamed from: f, reason: collision with root package name */
    public float f14877f;

    public dv(View view) {
        this.f14875d = view;
    }

    public final void g(float f2) {
        View view = this.f14875d;
        if (view == null) {
            return;
        }
        this.f14876e = f2;
        Drawable background = view.getBackground();
        if (background instanceof GradientDrawable) {
            ((GradientDrawable) background).setCornerRadius(f2);
        }
    }

    @Override // g.aeb
    public final float getRipple() {
        return this.f14872a;
    }

    @Override // g.aeb
    public final float getRubIn() {
        return this.f14877f;
    }

    @Override // g.aeb
    public final float getShine() {
        return this.f14873b;
    }

    @Override // g.aeb
    public final float getStretch() {
        return this.f14874c;
    }

    public final void h(int i) {
        View view = this.f14875d;
        if (view == null) {
            return;
        }
        Drawable background = view.getBackground();
        if (background instanceof GradientDrawable) {
            ((GradientDrawable) background).setColor(i);
        } else if (background instanceof ColorDrawable) {
            ((ColorDrawable) background.mutate()).setColor(i);
        }
    }
}

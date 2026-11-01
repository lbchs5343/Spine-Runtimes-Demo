package g;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;

/* loaded from: classes.dex */
public final class dmf extends Drawable {

    /* renamed from: a, reason: collision with root package name */
    public ColorStateList f14418a;

    /* renamed from: c, reason: collision with root package name */
    public final Rect f14420c;

    /* renamed from: d, reason: collision with root package name */
    public float f14421d;

    /* renamed from: e, reason: collision with root package name */
    public float f14422e;

    /* renamed from: g, reason: collision with root package name */
    public PorterDuffColorFilter f14424g;
    public final Paint h;
    public ColorStateList i;
    public final RectF j;

    /* renamed from: f, reason: collision with root package name */
    public boolean f14423f = false;
    public boolean k = true;

    /* renamed from: b, reason: collision with root package name */
    public PorterDuff.Mode f14419b = PorterDuff.Mode.SRC_IN;

    public dmf(ColorStateList colorStateList, float f2) {
        this.f14422e = f2;
        Paint paint = new Paint(5);
        this.h = paint;
        colorStateList = colorStateList == null ? ColorStateList.valueOf(0) : colorStateList;
        this.f14418a = colorStateList;
        paint.setColor(colorStateList.getColorForState(getState(), this.f14418a.getDefaultColor()));
        this.j = new RectF();
        this.f14420c = new Rect();
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        boolean z;
        PorterDuffColorFilter porterDuffColorFilter = this.f14424g;
        Paint paint = this.h;
        if (porterDuffColorFilter == null || paint.getColorFilter() != null) {
            z = false;
        } else {
            paint.setColorFilter(this.f14424g);
            z = true;
        }
        RectF rectF = this.j;
        float f2 = this.f14422e;
        canvas.drawRoundRect(rectF, f2, f2, paint);
        if (z) {
            paint.setColorFilter(null);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        outline.setRoundRect(this.f14420c, this.f14422e);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        ColorStateList colorStateList = this.i;
        if (colorStateList != null && colorStateList.isStateful()) {
            return true;
        }
        ColorStateList colorStateList2 = this.f14418a;
        return (colorStateList2 != null && colorStateList2.isStateful()) || super.isStateful();
    }

    public final PorterDuffColorFilter l(ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    public final void m(Rect rect) {
        if (rect == null) {
            rect = getBounds();
        }
        float f2 = rect.left;
        float f3 = rect.top;
        float f4 = rect.right;
        float f5 = rect.bottom;
        RectF rectF = this.j;
        rectF.set(f2, f3, f4, f5);
        Rect rect2 = this.f14420c;
        rect2.set(rect);
        if (this.f14423f) {
            rect2.inset((int) Math.ceil(gbj.b(this.f14421d, this.f14422e, this.k)), (int) Math.ceil(gbj.c(this.f14421d, this.f14422e, this.k)));
            rectF.set(rect2);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        m(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] iArr) {
        PorterDuff.Mode mode;
        ColorStateList colorStateList = this.f14418a;
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        Paint paint = this.h;
        boolean z = colorForState != paint.getColor();
        if (z) {
            paint.setColor(colorForState);
        }
        ColorStateList colorStateList2 = this.i;
        if (colorStateList2 == null || (mode = this.f14419b) == null) {
            return z;
        }
        this.f14424g = l(colorStateList2, mode);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        this.h.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.h.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        this.i = colorStateList;
        this.f14424g = l(colorStateList, this.f14419b);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        this.f14419b = mode;
        this.f14424g = l(this.i, mode);
        invalidateSelf();
    }
}

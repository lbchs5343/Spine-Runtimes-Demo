package g;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public final class brt extends Drawable implements Drawable.Callback, ai, djx {

    /* renamed from: a, reason: collision with root package name */
    public static Method f12088a;

    /* renamed from: b, reason: collision with root package name */
    public static final PorterDuff.Mode f12089b = PorterDuff.Mode.SRC_IN;

    /* renamed from: c, reason: collision with root package name */
    public boolean f12090c;

    /* renamed from: d, reason: collision with root package name */
    public fq f12091d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f12092e;

    /* renamed from: f, reason: collision with root package name */
    public int f12093f;

    /* renamed from: g, reason: collision with root package name */
    public PorterDuff.Mode f12094g;
    public Drawable h;

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        this.h.draw(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getChangingConfigurations() {
        int changingConfigurations = super.getChangingConfigurations();
        fq fqVar = this.f12091d;
        return changingConfigurations | (fqVar != null ? fqVar.getChangingConfigurations() : 0) | this.h.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        fq fqVar = this.f12091d;
        if (fqVar == null || fqVar.f17225c == null) {
            return null;
        }
        fqVar.f17224b = getChangingConfigurations();
        return this.f12091d;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable getCurrent() {
        return this.h.getCurrent();
    }

    @Override // android.graphics.drawable.Drawable
    public final Rect getDirtyBounds() {
        return this.h.getDirtyBounds();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return this.h.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return this.h.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getLayoutDirection() {
        return dzm.ap(this.h);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getMinimumHeight() {
        return this.h.getMinimumHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getMinimumWidth() {
        return this.h.getMinimumWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return this.h.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        this.h.getOutline(outline);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean getPadding(Rect rect) {
        return this.h.getPadding(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public final int[] getState() {
        return this.h.getState();
    }

    @Override // android.graphics.drawable.Drawable
    public final Region getTransparentRegion() {
        return this.h.getTransparentRegion();
    }

    public final boolean i(int[] iArr) {
        if (l()) {
            fq fqVar = this.f12091d;
            ColorStateList colorStateList = fqVar.f17226d;
            PorterDuff.Mode mode = fqVar.f17223a;
            if (colorStateList == null || mode == null) {
                this.f12090c = false;
                clearColorFilter();
                return false;
            }
            int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
            if (!this.f12090c || colorForState != this.f12093f || mode != this.f12094g) {
                setColorFilter(colorForState, mode);
                this.f12093f = colorForState;
                this.f12094g = mode;
                this.f12090c = true;
                return true;
            }
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isAutoMirrored() {
        return this.h.isAutoMirrored();
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isProjected() {
        Method method;
        Drawable drawable = this.h;
        if (drawable == null || (method = f12088a) == null) {
            return false;
        }
        try {
            return ((Boolean) method.invoke(drawable, null)).booleanValue();
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        fq fqVar;
        ColorStateList colorStateList = (!l() || (fqVar = this.f12091d) == null) ? null : fqVar.f17226d;
        return (colorStateList != null && colorStateList.isStateful()) || this.h.isStateful();
    }

    public final void j(int i) {
        setTintList(ColorStateList.valueOf(i));
    }

    @Override // android.graphics.drawable.Drawable
    public final void jumpToCurrentState() {
        this.h.jumpToCurrentState();
    }

    public final void k(ColorStateList colorStateList) {
        this.f12091d.f17226d = colorStateList;
        i(this.h.getState());
    }

    public final boolean l() {
        if (Build.VERSION.SDK_INT != 21) {
            return false;
        }
        Drawable drawable = this.h;
        return (drawable instanceof GradientDrawable) || (drawable instanceof DrawableContainer) || (drawable instanceof InsetDrawable) || (drawable instanceof RippleDrawable);
    }

    public final void m(PorterDuff.Mode mode) {
        this.f12091d.f17223a = mode;
        i(this.h.getState());
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable mutate() {
        if (!this.f12092e && super.mutate() == this) {
            this.f12091d = n();
            Drawable drawable = this.h;
            if (drawable != null) {
                drawable.mutate();
            }
            fq fqVar = this.f12091d;
            if (fqVar != null) {
                Drawable drawable2 = this.h;
                fqVar.f17225c = drawable2 != null ? drawable2.getConstantState() : null;
            }
            this.f12092e = true;
        }
        return this;
    }

    public final fq n() {
        fq fqVar = this.f12091d;
        fq fqVar2 = new fq();
        fqVar2.f17226d = null;
        fqVar2.f17223a = f12089b;
        if (fqVar != null) {
            fqVar2.f17224b = fqVar.f17224b;
            fqVar2.f17225c = fqVar.f17225c;
            fqVar2.f17226d = fqVar.f17226d;
            fqVar2.f17223a = fqVar.f17223a;
        }
        return fqVar2;
    }

    public final boolean o(int[] iArr) {
        return i(iArr) || this.h.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        Drawable drawable = this.h;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLayoutDirectionChanged(int i) {
        return dzm.bb(this.h, i);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLevelChange(int i) {
        return this.h.setLevel(i);
    }

    public final void p(Drawable drawable) {
        Drawable drawable2 = this.h;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.h = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            setVisible(drawable.isVisible(), true);
            setState(drawable.getState());
            setLevel(drawable.getLevel());
            setBounds(drawable.getBounds());
            fq fqVar = this.f12091d;
            if (fqVar != null) {
                fqVar.f17225c = drawable.getConstantState();
            }
        }
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        scheduleSelf(runnable, j);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        this.h.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAutoMirrored(boolean z) {
        this.h.setAutoMirrored(z);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setChangingConfigurations(int i) {
        this.h.setChangingConfigurations(i);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.h.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setDither(boolean z) {
        this.h.setDither(z);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setFilterBitmap(boolean z) {
        this.h.setFilterBitmap(z);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setHotspot(float f2, float f3) {
        this.h.setHotspot(f2, f3);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setHotspotBounds(int i, int i2, int i3, int i4) {
        this.h.setHotspotBounds(i, i2, i3, i4);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setState(int[] iArr) {
        if (!o(iArr)) {
            return false;
        }
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTint(int i) {
        if (l()) {
            j(i);
        } else {
            this.h.setTint(i);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        if (l()) {
            k(colorStateList);
        } else {
            this.h.setTintList(colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        if (l()) {
            m(mode);
        } else {
            this.h.setTintMode(mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z, boolean z2) {
        return super.setVisible(z, z2) || this.h.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        unscheduleSelf(runnable);
    }
}

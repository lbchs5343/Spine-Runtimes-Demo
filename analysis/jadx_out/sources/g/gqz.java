package g;

import android.animation.ValueAnimator;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.provider.Settings;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ProgressBar;
import cn.trinea.android.developertools.R;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;
import java.util.Arrays;

/* loaded from: classes3.dex */
public abstract class gqz extends ProgressBar {

    /* renamed from: c, reason: collision with root package name */
    public boolean f18619c;

    /* renamed from: d, reason: collision with root package name */
    public int f18620d;

    /* renamed from: e, reason: collision with root package name */
    public final fer f18621e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f18622f;

    /* renamed from: g, reason: collision with root package name */
    public final bbg f18623g;
    public final bbg h;
    public final int i;
    public fec j;
    public final dzw k;
    public final fer l;
    public int m;
    public boolean n;

    public gqz(Context context, AttributeSet attributeSet, int i, int i2) {
        super(egh.ax(context, attributeSet, i, R.style.Widget_MaterialComponents_ProgressIndicator), attributeSet, i);
        this.n = false;
        this.f18620d = 4;
        this.l = new fer(this, 0);
        this.f18621e = new fer(this, 1);
        this.h = new bbg(this, 0);
        this.f18623g = new bbg(this, 1);
        Context context2 = getContext();
        this.k = a(context2, attributeSet);
        eyt.bn(context2, attributeSet, i, i2);
        int[] iArr = git.m;
        eyt.ap(context2, attributeSet, iArr, i, i2, new int[0]);
        TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, iArr, i, i2);
        obtainStyledAttributes.getInt(7, -1);
        this.i = Math.min(obtainStyledAttributes.getInt(5, -1), 1000);
        obtainStyledAttributes.recycle();
        this.j = new fec();
        this.f18622f = true;
    }

    private elw getCurrentDrawingDelegate() {
        if (isIndeterminate()) {
            if (getIndeterminateDrawable() == null) {
                return null;
            }
            return getIndeterminateDrawable().v;
        }
        if (getProgressDrawable() == null) {
            return null;
        }
        return getProgressDrawable().ac;
    }

    public abstract dzw a(Context context, AttributeSet attributeSet);

    public void b(int i) {
        if (!isIndeterminate()) {
            super.setProgress(i);
            if (getProgressDrawable() != null) {
                getProgressDrawable().jumpToCurrentState();
                return;
            }
            return;
        }
        if (getProgressDrawable() != null) {
            this.m = i;
            this.n = true;
            if (getIndeterminateDrawable().isVisible()) {
                fec fecVar = this.j;
                ContentResolver contentResolver = getContext().getContentResolver();
                fecVar.getClass();
                if (Settings.Global.getFloat(contentResolver, "animator_duration_scale", 1.0f) != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                    getIndeterminateDrawable().u.z();
                    return;
                }
            }
            this.h.b(getIndeterminateDrawable());
        }
    }

    @Override // android.widget.ProgressBar
    public Drawable getCurrentDrawable() {
        return isIndeterminate() ? getIndeterminateDrawable() : getProgressDrawable();
    }

    public int getHideAnimationBehavior() {
        return this.k.m;
    }

    @Override // android.widget.ProgressBar
    public fkr getIndeterminateDrawable() {
        return (fkr) super.getIndeterminateDrawable();
    }

    public int[] getIndicatorColor() {
        return this.k.r;
    }

    public int getIndicatorTrackGapSize() {
        return this.k.v;
    }

    @Override // android.widget.ProgressBar
    public glg getProgressDrawable() {
        return (glg) super.getProgressDrawable();
    }

    public int getShowAnimationBehavior() {
        return this.k.z;
    }

    public int getTrackColor() {
        return this.k.t;
    }

    public int getTrackCornerRadius() {
        return this.k.w;
    }

    public float getTrackCornerRadiusFraction() {
        return this.k.y;
    }

    public int getTrackThickness() {
        return this.k.s;
    }

    public int getWaveAmplitude() {
        return this.k.q;
    }

    public int getWaveSpeed() {
        return this.k.u;
    }

    public int getWavelengthDeterminate() {
        return this.k.x;
    }

    public int getWavelengthIndeterminate() {
        return this.k.n;
    }

    @Override // android.view.View
    public final void invalidate() {
        super.invalidate();
        if (getCurrentDrawable() != null) {
            getCurrentDrawable().invalidateSelf();
        }
    }

    public final boolean o() {
        if (!isAttachedToWindow() || getWindowVisibility() != 0) {
            return false;
        }
        View view = this;
        while (view.getVisibility() == 0) {
            Object parent = view.getParent();
            if (parent == null) {
                return getWindowVisibility() == 0;
            }
            if (!(parent instanceof View)) {
                return true;
            }
            view = (View) parent;
        }
        return false;
    }

    @Override // android.widget.ProgressBar, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        p();
        glg progressDrawable = getProgressDrawable();
        bbg bbgVar = this.f18623g;
        if (progressDrawable != null) {
            glg progressDrawable2 = getProgressDrawable();
            if (progressDrawable2.f15139c == null) {
                progressDrawable2.f15139c = new ArrayList();
            }
            if (!progressDrawable2.f15139c.contains(bbgVar)) {
                progressDrawable2.f15139c.add(bbgVar);
            }
        }
        if (getIndeterminateDrawable() != null) {
            fkr indeterminateDrawable = getIndeterminateDrawable();
            if (indeterminateDrawable.f15139c == null) {
                indeterminateDrawable.f15139c = new ArrayList();
            }
            if (!indeterminateDrawable.f15139c.contains(bbgVar)) {
                indeterminateDrawable.f15139c.add(bbgVar);
            }
        }
        if (o()) {
            if (this.i > 0) {
                SystemClock.uptimeMillis();
            }
            setVisibility(0);
        }
    }

    @Override // android.widget.ProgressBar, android.view.View
    public final void onDetachedFromWindow() {
        removeCallbacks(this.f18621e);
        removeCallbacks(this.l);
        ((dzo) getCurrentDrawable()).o(false, false, false);
        fkr indeterminateDrawable = getIndeterminateDrawable();
        bbg bbgVar = this.f18623g;
        if (indeterminateDrawable != null) {
            getIndeterminateDrawable().q(bbgVar);
            getIndeterminateDrawable().u.u();
        }
        if (getProgressDrawable() != null) {
            getProgressDrawable().q(bbgVar);
        }
        super.onDetachedFromWindow();
    }

    @Override // android.widget.ProgressBar, android.view.View
    public final synchronized void onDraw(Canvas canvas) {
        try {
            int save = canvas.save();
            if (getPaddingLeft() == 0) {
                if (getPaddingTop() != 0) {
                }
                if (getPaddingRight() == 0 || getPaddingBottom() != 0) {
                    canvas.clipRect(0, 0, getWidth() - (getPaddingLeft() + getPaddingRight()), getHeight() - (getPaddingTop() + getPaddingBottom()));
                }
                getCurrentDrawable().draw(canvas);
                canvas.restoreToCount(save);
            }
            canvas.translate(getPaddingLeft(), getPaddingTop());
            if (getPaddingRight() == 0) {
            }
            canvas.clipRect(0, 0, getWidth() - (getPaddingLeft() + getPaddingRight()), getHeight() - (getPaddingTop() + getPaddingBottom()));
            getCurrentDrawable().draw(canvas);
            canvas.restoreToCount(save);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        getCurrentDrawingDelegate().s();
    }

    @Override // android.widget.ProgressBar, android.view.View
    public final synchronized void onMeasure(int i, int i2) {
        try {
            elw currentDrawingDelegate = getCurrentDrawingDelegate();
            if (currentDrawingDelegate == null) {
                return;
            }
            setMeasuredDimension(currentDrawingDelegate.n() < 0 ? View.getDefaultSize(getSuggestedMinimumWidth(), i) : currentDrawingDelegate.n() + getPaddingLeft() + getPaddingRight(), currentDrawingDelegate.l() < 0 ? View.getDefaultSize(getSuggestedMinimumHeight(), i2) : currentDrawingDelegate.l() + getPaddingTop() + getPaddingBottom());
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        boolean z = i == 0;
        if (this.f18622f) {
            ((dzo) getCurrentDrawable()).o(o(), false, z);
        }
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        if (this.f18622f) {
            ((dzo) getCurrentDrawable()).o(o(), false, false);
        }
    }

    public final void p() {
        if (getProgressDrawable() == null || getIndeterminateDrawable() == null) {
            return;
        }
        getIndeterminateDrawable().u.w(this.h);
    }

    public void setAnimatorDurationScaleProvider(fec fecVar) {
        this.j = fecVar;
        if (getProgressDrawable() != null) {
            getProgressDrawable().f15141e = fecVar;
        }
        if (getIndeterminateDrawable() != null) {
            getIndeterminateDrawable().f15141e = fecVar;
        }
    }

    public void setHideAnimationBehavior(int i) {
        this.k.m = i;
        invalidate();
    }

    @Override // android.widget.ProgressBar
    public synchronized void setIndeterminate(boolean z) {
        try {
            if (z == isIndeterminate()) {
                return;
            }
            dzo dzoVar = (dzo) getCurrentDrawable();
            if (dzoVar != null) {
                dzoVar.o(false, false, false);
            }
            super.setIndeterminate(z);
            dzo dzoVar2 = (dzo) getCurrentDrawable();
            if (dzoVar2 != null) {
                dzoVar2.o(o(), false, false);
            }
            if ((dzoVar2 instanceof fkr) && o()) {
                ((fkr) dzoVar2).u.x();
            }
            this.n = false;
        } catch (Throwable th) {
            throw th;
        }
    }

    public void setIndeterminateAnimatorDurationScale(float f2) {
        dzw dzwVar = this.k;
        if (dzwVar.o != f2) {
            dzwVar.o = f2;
            getIndeterminateDrawable().u.t();
        }
    }

    @Override // android.widget.ProgressBar
    public void setIndeterminateDrawable(Drawable drawable) {
        if (drawable instanceof fkr) {
            ((dzo) drawable).o(false, false, false);
            super.setIndeterminateDrawable(drawable);
        } else {
            if (this.f18619c) {
                throw new IllegalArgumentException("Cannot set framework drawable as indeterminate drawable.");
            }
            super.setIndeterminateDrawable(drawable);
        }
    }

    public void setIndicatorColor(int... iArr) {
        if (iArr.length == 0) {
            iArr = new int[]{eyt.z(getContext(), R.attr.colorPrimary, -1)};
        }
        if (Arrays.equals(getIndicatorColor(), iArr)) {
            return;
        }
        this.k.r = iArr;
        getIndeterminateDrawable().u.t();
        invalidate();
    }

    public void setIndicatorTrackGapSize(int i) {
        dzw dzwVar = this.k;
        if (dzwVar.v != i) {
            dzwVar.v = i;
            dzwVar.j();
            invalidate();
        }
    }

    @Override // android.widget.ProgressBar
    public synchronized void setProgress(int i) {
        if (isIndeterminate()) {
            return;
        }
        b(i);
    }

    @Override // android.widget.ProgressBar
    public void setProgressDrawable(Drawable drawable) {
        if (!(drawable instanceof glg)) {
            if (this.f18619c) {
                throw new IllegalArgumentException("Cannot set framework drawable as progress drawable.");
            }
            super.setProgressDrawable(drawable);
        } else {
            glg glgVar = (glg) drawable;
            glgVar.o(false, false, false);
            super.setProgressDrawable(glgVar);
            glgVar.setLevel((int) ((getProgress() / getMax()) * 10000.0f));
        }
    }

    public void setShowAnimationBehavior(int i) {
        this.k.z = i;
        invalidate();
    }

    public void setTrackColor(int i) {
        dzw dzwVar = this.k;
        if (dzwVar.t != i) {
            dzwVar.t = i;
            invalidate();
        }
    }

    public void setTrackCornerRadius(int i) {
        dzw dzwVar = this.k;
        if (dzwVar.w != i) {
            dzwVar.w = Math.min(i, dzwVar.s / 2);
            dzwVar.p = false;
            invalidate();
        }
    }

    public void setTrackCornerRadiusFraction(float f2) {
        dzw dzwVar = this.k;
        if (dzwVar.y != f2) {
            dzwVar.y = Math.min(f2, 0.5f);
            dzwVar.p = true;
            invalidate();
        }
    }

    public void setTrackThickness(int i) {
        dzw dzwVar = this.k;
        if (dzwVar.s != i) {
            dzwVar.s = i;
            requestLayout();
        }
    }

    public void setVisibilityAfterHide(int i) {
        if (i != 0 && i != 4 && i != 8) {
            throw new IllegalArgumentException("The component's visibility must be one of VISIBLE, INVISIBLE, and GONE defined in View.");
        }
        this.f18620d = i;
    }

    public void setWaveAmplitude(int i) {
        dzw dzwVar = this.k;
        if (dzwVar.q != i) {
            dzwVar.q = Math.abs(i);
            requestLayout();
        }
    }

    public void setWaveSpeed(int i) {
        dzw dzwVar = this.k;
        dzwVar.u = i;
        glg progressDrawable = getProgressDrawable();
        boolean z = dzwVar.u != 0;
        ValueAnimator valueAnimator = progressDrawable.v;
        if (z && !valueAnimator.isRunning()) {
            valueAnimator.start();
        } else {
            if (z || !valueAnimator.isRunning()) {
                return;
            }
            valueAnimator.cancel();
        }
    }

    public void setWavelength(int i) {
        setWavelengthDeterminate(i);
        setWavelengthIndeterminate(i);
    }

    public void setWavelengthDeterminate(int i) {
        dzw dzwVar = this.k;
        if (dzwVar.x != i) {
            dzwVar.x = Math.abs(i);
            if (isIndeterminate()) {
                return;
            }
            requestLayout();
        }
    }

    public void setWavelengthIndeterminate(int i) {
        dzw dzwVar = this.k;
        if (dzwVar.n != i) {
            dzwVar.n = Math.abs(i);
            if (isIndeterminate()) {
                requestLayout();
            }
        }
    }
}

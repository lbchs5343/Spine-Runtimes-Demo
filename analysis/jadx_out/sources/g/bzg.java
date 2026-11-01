package g;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.graphics.PointF;
import android.os.Build;
import android.view.Choreographer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;

/* loaded from: classes.dex */
public final class bzg extends ValueAnimator implements Choreographer.FrameCallback {

    /* renamed from: e, reason: collision with root package name */
    public cgf f12498e;
    public final CopyOnWriteArraySet i = new CopyOnWriteArraySet();
    public final CopyOnWriteArraySet k = new CopyOnWriteArraySet();

    /* renamed from: d, reason: collision with root package name */
    public final CopyOnWriteArraySet f12497d = new CopyOnWriteArraySet();

    /* renamed from: g, reason: collision with root package name */
    public float f12500g = 1.0f;
    public boolean h = false;
    public long n = 0;

    /* renamed from: b, reason: collision with root package name */
    public float f12495b = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;

    /* renamed from: a, reason: collision with root package name */
    public float f12494a = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    public int j = 0;

    /* renamed from: c, reason: collision with root package name */
    public float f12496c = -2.1474836E9f;

    /* renamed from: f, reason: collision with root package name */
    public float f12499f = 2.1474836E9f;
    public boolean m = false;
    public boolean l = false;

    @Override // android.animation.Animator
    public final void addListener(Animator.AnimatorListener animatorListener) {
        this.k.add(animatorListener);
    }

    @Override // android.animation.Animator
    public final void addPauseListener(Animator.AnimatorPauseListener animatorPauseListener) {
        this.f12497d.add(animatorPauseListener);
    }

    @Override // android.animation.ValueAnimator
    public final void addUpdateListener(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.i.add(animatorUpdateListener);
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public final void cancel() {
        Iterator it = this.k.iterator();
        while (it.hasNext()) {
            ((Animator.AnimatorListener) it.next()).onAnimationCancel(this);
        }
        r(t());
        p(true);
    }

    @Override // android.view.Choreographer.FrameCallback
    public final void doFrame(long j) {
        if (this.m) {
            p(false);
            Choreographer.getInstance().postFrameCallback(this);
        }
        cgf cgfVar = this.f12498e;
        if (cgfVar == null || !this.m) {
            return;
        }
        float abs = (this.n != 0 ? j - r2 : 0L) / ((1.0E9f / cgfVar.l) / Math.abs(this.f12500g));
        float f2 = this.f12495b;
        if (t()) {
            abs = -abs;
        }
        float f3 = f2 + abs;
        float u = u();
        float s = s();
        PointF pointF = din.f14231a;
        boolean z = f3 >= u && f3 <= s;
        float f4 = this.f12495b;
        float c2 = din.c(f3, u(), s());
        this.f12495b = c2;
        if (this.l) {
            c2 = (float) Math.floor(c2);
        }
        this.f12494a = c2;
        this.n = j;
        if (!this.l || this.f12495b != f4) {
            v();
        }
        if (!z) {
            if (getRepeatCount() == -1 || this.j < getRepeatCount()) {
                Iterator it = this.k.iterator();
                while (it.hasNext()) {
                    ((Animator.AnimatorListener) it.next()).onAnimationRepeat(this);
                }
                this.j++;
                if (getRepeatMode() == 2) {
                    this.h = !this.h;
                    this.f12500g = -this.f12500g;
                } else {
                    float s2 = t() ? s() : u();
                    this.f12495b = s2;
                    this.f12494a = s2;
                }
                this.n = j;
            } else {
                float u2 = this.f12500g < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT ? u() : s();
                this.f12495b = u2;
                this.f12494a = u2;
                p(true);
                r(t());
            }
        }
        if (this.f12498e != null) {
            float f5 = this.f12494a;
            if (f5 < this.f12496c || f5 > this.f12499f) {
                throw new IllegalStateException(String.format("Frame must be [%f,%f]. It is %f", Float.valueOf(this.f12496c), Float.valueOf(this.f12499f), Float.valueOf(this.f12494a)));
            }
        }
        buj.bd();
    }

    @Override // android.animation.ValueAnimator
    public final float getAnimatedFraction() {
        float u;
        float s;
        float u2;
        if (this.f12498e == null) {
            return TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        }
        if (t()) {
            u = s() - this.f12494a;
            s = s();
            u2 = u();
        } else {
            u = this.f12494a - u();
            s = s();
            u2 = u();
        }
        return u / (s - u2);
    }

    @Override // android.animation.ValueAnimator
    public final Object getAnimatedValue() {
        return Float.valueOf(w());
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public final long getDuration() {
        cgf cgfVar = this.f12498e;
        if (cgfVar == null) {
            return 0L;
        }
        return (long) cgfVar.v();
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public final long getStartDelay() {
        throw new UnsupportedOperationException("LottieAnimator does not support getStartDelay.");
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public final boolean isRunning() {
        return this.m;
    }

    public final void o(float f2) {
        if (this.f12495b == f2) {
            return;
        }
        float c2 = din.c(f2, u(), s());
        this.f12495b = c2;
        if (this.l) {
            c2 = (float) Math.floor(c2);
        }
        this.f12494a = c2;
        this.n = 0L;
        v();
    }

    public final void p(boolean z) {
        Choreographer.getInstance().removeFrameCallback(this);
        if (z) {
            this.m = false;
        }
    }

    public final void q(float f2, float f3) {
        if (f2 > f3) {
            throw new IllegalArgumentException("minFrame (" + f2 + ") must be <= maxFrame (" + f3 + ")");
        }
        cgf cgfVar = this.f12498e;
        float f4 = cgfVar == null ? -3.4028235E38f : cgfVar.f12824b;
        float f5 = cgfVar == null ? Float.MAX_VALUE : cgfVar.f12828f;
        float c2 = din.c(f2, f4, f5);
        float c3 = din.c(f3, f4, f5);
        if (c2 == this.f12496c && c3 == this.f12499f) {
            return;
        }
        this.f12496c = c2;
        this.f12499f = c3;
        o((int) din.c(this.f12494a, c2, c3));
    }

    public final void r(boolean z) {
        Iterator it = this.k.iterator();
        while (it.hasNext()) {
            Animator.AnimatorListener animatorListener = (Animator.AnimatorListener) it.next();
            if (Build.VERSION.SDK_INT >= 26) {
                animatorListener.onAnimationEnd(this, z);
            } else {
                animatorListener.onAnimationEnd(this);
            }
        }
    }

    @Override // android.animation.Animator
    public final void removeAllListeners() {
        this.k.clear();
    }

    @Override // android.animation.ValueAnimator
    public final void removeAllUpdateListeners() {
        this.i.clear();
    }

    @Override // android.animation.Animator
    public final void removeListener(Animator.AnimatorListener animatorListener) {
        this.k.remove(animatorListener);
    }

    @Override // android.animation.Animator
    public final void removePauseListener(Animator.AnimatorPauseListener animatorPauseListener) {
        this.f12497d.remove(animatorPauseListener);
    }

    @Override // android.animation.ValueAnimator
    public final void removeUpdateListener(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.i.remove(animatorUpdateListener);
    }

    public final float s() {
        cgf cgfVar = this.f12498e;
        if (cgfVar == null) {
            return TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        }
        float f2 = this.f12499f;
        return f2 == 2.1474836E9f ? cgfVar.f12828f : f2;
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public final /* bridge */ /* synthetic */ Animator setDuration(long j) {
        setDuration(j);
        throw null;
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public final ValueAnimator setDuration(long j) {
        throw new UnsupportedOperationException("LottieAnimator does not support setDuration.");
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public final void setInterpolator(TimeInterpolator timeInterpolator) {
        throw new UnsupportedOperationException("LottieAnimator does not support setInterpolator.");
    }

    @Override // android.animation.ValueAnimator
    public final void setRepeatMode(int i) {
        super.setRepeatMode(i);
        if (i == 2 || !this.h) {
            return;
        }
        this.h = false;
        this.f12500g = -this.f12500g;
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public final void setStartDelay(long j) {
        throw new UnsupportedOperationException("LottieAnimator does not support setStartDelay.");
    }

    public final boolean t() {
        return this.f12500g < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    }

    public final float u() {
        cgf cgfVar = this.f12498e;
        if (cgfVar == null) {
            return TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        }
        float f2 = this.f12496c;
        return f2 == -2.1474836E9f ? cgfVar.f12824b : f2;
    }

    public final void v() {
        Iterator it = this.i.iterator();
        while (it.hasNext()) {
            ((ValueAnimator.AnimatorUpdateListener) it.next()).onAnimationUpdate(this);
        }
    }

    public final float w() {
        cgf cgfVar = this.f12498e;
        if (cgfVar == null) {
            return TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        }
        float f2 = this.f12494a;
        float f3 = cgfVar.f12824b;
        return (f2 - f3) / (cgfVar.f12828f - f3);
    }
}

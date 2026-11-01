package com.bytedance.sdk.openadsdk.core.component.splash.countdown;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.animation.LinearInterpolator;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.wp;
import java.lang.reflect.Field;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes3.dex */
public class TTCountdownViewForCircle extends View implements d {
    private Paint cd;

    /* renamed from: d, reason: collision with root package name */
    private int f2696d;
    private int dq;

    /* renamed from: e, reason: collision with root package name */
    private ValueAnimator f2697e;

    /* renamed from: f, reason: collision with root package name */
    private Paint f2698f;
    private Paint fw;
    private float gh;
    private boolean h;
    private RectF i;
    private int ia;
    private float ig;
    private float iw;
    private AtomicBoolean ji;
    private Paint jy;
    private AnimatorSet k;
    private boolean kk;
    private ValueAnimator kx;
    private dq le;
    private float mn;
    private String mp;
    private float no;
    private float o;
    private int ox;
    private int p;
    private boolean q;
    private float r;
    private float s;
    private ValueAnimator wp;

    public TTCountdownViewForCircle(Context context) {
        this(context, null);
    }

    public TTCountdownViewForCircle(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TTCountdownViewForCircle(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.dq = Color.parseColor("#fce8b6");
        this.f2696d = Color.parseColor("#f0f0f0");
        this.ox = Color.parseColor("#ffffff");
        this.p = Color.parseColor("#7c7c7c");
        this.s = 2.0f;
        this.iw = 12.0f;
        this.mn = 18.0f;
        this.ia = MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_SWITCH_CACHE_TIME;
        this.kk = false;
        this.o = 5.0f;
        this.no = 5.0f;
        this.ig = 0.8f;
        this.mp = "跳过";
        this.q = false;
        this.gh = 1.0f;
        this.r = 1.0f;
        this.h = false;
        this.ji = new AtomicBoolean(true);
        this.s = dq(2.0f);
        this.mn = dq(18.0f);
        this.iw = d(12.0f);
        this.ia %= MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DEMUXER_STALL;
        p();
        s();
    }

    private float d(float f2) {
        return TypedValue.applyDimension(2, f2, getResources().getDisplayMetrics());
    }

    private void d(Canvas canvas) {
        canvas.save();
        float dq = dq(this.gh, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DEMUXER_STALL);
        float f2 = this.kk ? this.ia - dq : this.ia;
        canvas.drawCircle(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, this.mn, this.f2698f);
        canvas.drawCircle(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, this.mn, this.fw);
        canvas.drawArc(this.i, f2, dq, false, this.jy);
        canvas.restore();
    }

    private float dq(float f2) {
        return TypedValue.applyDimension(1, f2, getResources().getDisplayMetrics());
    }

    private void dq(Canvas canvas) {
        canvas.save();
        Paint.FontMetrics fontMetrics = this.cd.getFontMetrics();
        String cc = wp.d().cc();
        this.mp = cc;
        if (TextUtils.isEmpty(cc)) {
            this.mp = "跳过";
        }
        canvas.drawText(this.mp, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT - ((fontMetrics.ascent + fontMetrics.descent) / 2.0f), this.cd);
        canvas.restore();
    }

    private ValueAnimator getArcAnim() {
        ValueAnimator valueAnimator = this.f2697e;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.f2697e = null;
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(this.gh, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        this.f2697e = ofFloat;
        ofFloat.setInterpolator(new LinearInterpolator());
        this.f2697e.setDuration((long) (dq(this.gh, this.o) * 1000.0f));
        this.f2697e.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.countdown.TTCountdownViewForCircle.3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                TTCountdownViewForCircle.this.gh = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                TTCountdownViewForCircle.this.invalidate();
            }
        });
        return this.f2697e;
    }

    private ValueAnimator getNumAnim() {
        ValueAnimator valueAnimator = this.wp;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.wp = null;
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(this.r, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        this.wp = ofFloat;
        ofFloat.setInterpolator(new LinearInterpolator());
        this.wp.setDuration((long) (dq(this.r, this.no) * 1000.0f));
        this.wp.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.countdown.TTCountdownViewForCircle.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                TTCountdownViewForCircle.this.r = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                TTCountdownViewForCircle.this.invalidate();
            }
        });
        return this.wp;
    }

    private int iw() {
        return (int) ((((this.s / 2.0f) + this.mn) * 2.0f) + dq(4.0f));
    }

    private void mn() {
        try {
            AnimatorSet animatorSet = this.k;
            if (animatorSet != null) {
                animatorSet.cancel();
                this.k = null;
            }
            ValueAnimator valueAnimator = this.kx;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.kx = null;
            }
            ValueAnimator valueAnimator2 = this.wp;
            if (valueAnimator2 != null) {
                valueAnimator2.cancel();
                this.wp = null;
            }
            ValueAnimator valueAnimator3 = this.f2697e;
            if (valueAnimator3 != null) {
                valueAnimator3.cancel();
                this.f2697e = null;
            }
            this.gh = 1.0f;
            this.r = 1.0f;
            invalidate();
        } catch (Exception unused) {
        }
    }

    private void p() {
        Paint paint = new Paint(1);
        this.jy = paint;
        paint.setColor(this.dq);
        this.jy.setStrokeWidth(this.s);
        this.jy.setAntiAlias(true);
        Paint paint2 = this.jy;
        Paint.Style style = Paint.Style.STROKE;
        paint2.setStyle(style);
        Paint paint3 = new Paint(1);
        this.f2698f = paint3;
        paint3.setColor(this.ox);
        this.f2698f.setAntiAlias(true);
        this.f2698f.setStrokeWidth(this.s);
        this.f2698f.setStyle(Paint.Style.FILL);
        Paint paint4 = new Paint(1);
        this.fw = paint4;
        paint4.setColor(this.f2696d);
        this.fw.setAntiAlias(true);
        this.fw.setStrokeWidth(this.s / 2.0f);
        this.fw.setStyle(style);
        Paint paint5 = new Paint(1);
        this.cd = paint5;
        paint5.setColor(this.p);
        this.fw.setAntiAlias(true);
        this.cd.setTextSize(this.iw);
        this.cd.setTextAlign(Paint.Align.CENTER);
    }

    private void s() {
        float f2 = this.mn;
        this.i = new RectF(-f2, -f2, f2, f2);
    }

    public void d() {
        try {
            AnimatorSet animatorSet = this.k;
            if (animatorSet != null) {
                animatorSet.pause();
            }
        } catch (Throwable unused) {
        }
    }

    public float dq(float f2, float f3) {
        return f2 * f3;
    }

    public float dq(float f2, int i) {
        return i * f2;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.splash.countdown.d
    public void dq() {
        AnimatorSet animatorSet = this.k;
        if (animatorSet != null && animatorSet.isRunning()) {
            this.k.cancel();
            this.k = null;
        }
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.k = animatorSet2;
        animatorSet2.playTogether(getNumAnim(), getArcAnim());
        this.k.setInterpolator(new LinearInterpolator());
        this.k.addListener(new AnimatorListenerAdapter() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.countdown.TTCountdownViewForCircle.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                TTCountdownViewForCircle.this.h = true;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (TTCountdownViewForCircle.this.h) {
                    TTCountdownViewForCircle.this.h = false;
                } else if (TTCountdownViewForCircle.this.le != null) {
                    TTCountdownViewForCircle.this.le.dq();
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
        try {
            Field declaredField = ValueAnimator.class.getDeclaredField("sDurationScale");
            declaredField.setAccessible(true);
            if (declaredField.getFloat(null) < 1.0f) {
                declaredField.setFloat(null, 1.0f);
            }
        } catch (Throwable unused) {
        }
        this.k.start();
        if (this.ji.get()) {
            return;
        }
        d();
    }

    public dq getCountdownListener() {
        return this.le;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.splash.countdown.d
    public View getView() {
        return this;
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        mn();
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.translate(getMeasuredWidth() / 2.0f, getMeasuredHeight() / 2.0f);
        d(canvas);
        dq(canvas);
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int size = View.MeasureSpec.getSize(i);
        int mode = View.MeasureSpec.getMode(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i2);
        if (mode != 1073741824) {
            size = iw();
        }
        if (mode2 != 1073741824) {
            size2 = iw();
        }
        setMeasuredDimension(size, size2);
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        this.ji.set(z);
        if (this.ji.get()) {
            ox();
        } else {
            d();
        }
    }

    public void ox() {
        try {
            AnimatorSet animatorSet = this.k;
            if (animatorSet != null) {
                animatorSet.resume();
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.splash.countdown.d
    public void setCountDownTime(int i) {
        float f2 = i;
        this.no = f2;
        this.o = f2;
        mn();
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.splash.countdown.d
    public void setCountdownListener(dq dqVar) {
        this.le = dqVar;
        this.ji.get();
    }
}

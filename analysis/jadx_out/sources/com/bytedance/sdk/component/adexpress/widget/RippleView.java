package com.bytedance.sdk.component.adexpress.widget;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.View;
import android.view.animation.LinearInterpolator;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public class RippleView extends View {

    /* renamed from: d, reason: collision with root package name */
    private float f1819d;
    private float dq;
    private float ia;
    private long iw;
    private Animator.AnimatorListener kk;
    private float mn;
    private int o;
    private ValueAnimator ox;
    private ValueAnimator p;
    private Paint s;

    public RippleView(Context context, int i) {
        super(context);
        this.iw = 300L;
        this.mn = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        this.o = i;
        dq();
    }

    public void d() {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, this.ia);
        this.ox = ofFloat;
        ofFloat.setDuration(this.iw);
        this.ox.setInterpolator(new LinearInterpolator());
        this.ox.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.component.adexpress.widget.RippleView.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                RippleView.this.mn = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                RippleView.this.invalidate();
            }
        });
        this.ox.start();
    }

    public void dq() {
        Paint paint = new Paint(1);
        this.s = paint;
        paint.setStyle(Paint.Style.FILL);
        this.s.setColor(this.o);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawCircle(this.dq, this.f1819d, this.mn, this.s);
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.dq = i / 2.0f;
        this.f1819d = i2 / 2.0f;
        this.ia = (float) (Math.hypot(i, i2) / 2.0d);
    }

    public void ox() {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(this.ia, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        this.p = ofFloat;
        ofFloat.setDuration(this.iw);
        this.p.setInterpolator(new LinearInterpolator());
        this.p.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.component.adexpress.widget.RippleView.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                RippleView.this.mn = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                RippleView.this.invalidate();
            }
        });
        Animator.AnimatorListener animatorListener = this.kk;
        if (animatorListener != null) {
            this.p.addListener(animatorListener);
        }
        this.p.start();
    }

    public void setAnimationListener(Animator.AnimatorListener animatorListener) {
        this.kk = animatorListener;
    }
}

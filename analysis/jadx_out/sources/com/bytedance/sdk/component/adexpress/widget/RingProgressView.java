package com.bytedance.sdk.component.adexpress.widget;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public class RingProgressView extends View {

    /* renamed from: d, reason: collision with root package name */
    private Paint f1818d;
    private Context dq;
    private int iw;
    private boolean mn;
    private RectF ox;
    private float p;
    private ValueAnimator s;

    public RingProgressView(Context context) {
        super(context);
        this.iw = 1500;
        this.dq = context;
        Paint paint = new Paint();
        this.f1818d = paint;
        paint.setAntiAlias(true);
        this.f1818d.setStyle(Paint.Style.STROKE);
        this.f1818d.setStrokeWidth(10.0f);
        this.f1818d.setColor(Color.parseColor("#80FFFFFF"));
        this.ox = new RectF();
    }

    public void d() {
        ValueAnimator valueAnimator = this.s;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
    }

    public void dq() {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 360.0f);
        this.s = ofFloat;
        ofFloat.setDuration(this.iw);
        this.s.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.component.adexpress.widget.RingProgressView.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                RingProgressView.this.p = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                RingProgressView.this.requestLayout();
            }
        });
        this.s.start();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.mn) {
            return;
        }
        canvas.drawArc(this.ox, 270.0f, this.p, false, this.f1818d);
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        setMeasuredDimension(Math.min(size, size2), Math.min(size, size2));
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.ox.set(5.0f, 5.0f, i - 5, i2 - 5);
    }

    public void ox() {
        this.mn = true;
        invalidate();
    }

    public void setDuration(int i) {
        this.iw = i;
    }
}

package com.bytedance.sdk.openadsdk.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.widget.TextView;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes3.dex */
public class ShadowTextView extends TextView {

    /* renamed from: d, reason: collision with root package name */
    private RectF f3906d;
    private Paint dq;
    private int ox;

    public ShadowTextView(Context context) {
        this(context, null);
    }

    public ShadowTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ShadowTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.ox = 0;
        dq();
    }

    private void dq() {
        setTextColor(-1);
        Paint paint = new Paint();
        this.dq = paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        this.dq.setColor(Color.parseColor("#99333333"));
        this.dq.setAntiAlias(true);
        this.dq.setStrokeWidth(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        this.f3906d = new RectF();
    }

    @Override // android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) {
        RectF rectF = this.f3906d;
        float f2 = rectF.bottom;
        canvas.drawRoundRect(rectF, f2 / 2.0f, f2 / 2.0f, this.dq);
        canvas.translate((this.f3906d.right / 2.0f) - (getPaint().measureText(getText().toString()) / 2.0f), TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        super.onDraw(canvas);
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        if (measuredWidth <= 0 || measuredHeight <= 0) {
            this.f3906d.set(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
            return;
        }
        int measureText = (int) getPaint().measureText("00");
        this.ox = measureText;
        if (measuredWidth < measureText) {
            measuredWidth = measureText;
        }
        int i3 = ((measuredHeight / 2) * 2) + measuredWidth;
        setMeasuredDimension(i3, measuredHeight);
        this.f3906d.set(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, i3, measuredHeight);
    }
}

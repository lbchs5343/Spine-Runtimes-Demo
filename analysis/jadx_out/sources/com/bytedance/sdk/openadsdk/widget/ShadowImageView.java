package com.bytedance.sdk.openadsdk.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.widget.ImageView;
import com.bytedance.sdk.openadsdk.TTAdConstant;

@SuppressLint({"AppCompatCustomView"})
/* loaded from: classes3.dex */
public class ShadowImageView extends ImageView {

    /* renamed from: d, reason: collision with root package name */
    private RectF f3905d;
    private Paint dq;

    public ShadowImageView(Context context) {
        super(context);
        dq();
    }

    private void dq() {
        Paint paint = new Paint();
        this.dq = paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        this.dq.setColor(Color.parseColor("#99333333"));
        this.dq.setAntiAlias(true);
        this.dq.setStrokeWidth(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        this.f3905d = new RectF();
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        RectF rectF = this.f3905d;
        canvas.drawRoundRect(rectF, rectF.right / 2.0f, rectF.bottom / 2.0f, this.dq);
        super.onDraw(canvas);
    }

    @Override // android.widget.ImageView, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.f3905d.right == getMeasuredWidth() && this.f3905d.bottom == getMeasuredHeight()) {
            return;
        }
        this.f3905d.set(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, getMeasuredWidth(), getMeasuredHeight());
    }
}

package com.bytedance.sdk.component.adexpress.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;

/* loaded from: classes.dex */
public class DislikeView extends View {

    /* renamed from: d, reason: collision with root package name */
    private int f1797d;
    private int dq;
    private int ia;
    private int iw;
    private Paint mn;
    private final RectF ox;
    private Paint p;
    private Paint s;

    public DislikeView(Context context) {
        super(context);
        this.ox = new RectF();
        dq();
    }

    private void dq() {
        Paint paint = new Paint();
        this.p = paint;
        paint.setAntiAlias(true);
        Paint paint2 = new Paint();
        this.mn = paint2;
        paint2.setAntiAlias(true);
        Paint paint3 = new Paint();
        this.s = paint3;
        paint3.setAntiAlias(true);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        RectF rectF = this.ox;
        int i = this.iw;
        canvas.drawRoundRect(rectF, i, i, this.s);
        RectF rectF2 = this.ox;
        int i2 = this.iw;
        canvas.drawRoundRect(rectF2, i2, i2, this.p);
        int i3 = this.dq;
        int i4 = this.f1797d;
        canvas.drawLine(i3 * 0.3f, i4 * 0.3f, i3 * 0.7f, i4 * 0.7f, this.mn);
        int i5 = this.dq;
        int i6 = this.f1797d;
        canvas.drawLine(i5 * 0.7f, i6 * 0.3f, i5 * 0.3f, i6 * 0.7f, this.mn);
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.dq = i;
        this.f1797d = i2;
        RectF rectF = this.ox;
        int i5 = this.ia;
        rectF.set(i5, i5, i - i5, i2 - i5);
    }

    public void setBgColor(int i) {
        this.s.setStyle(Paint.Style.FILL);
        this.s.setColor(i);
    }

    public void setDislikeColor(int i) {
        this.mn.setColor(i);
    }

    public void setDislikeWidth(int i) {
        this.mn.setStrokeWidth(i);
    }

    public void setRadius(int i) {
        this.iw = i;
    }

    public void setStrokeColor(int i) {
        this.p.setStyle(Paint.Style.STROKE);
        this.p.setColor(i);
    }

    public void setStrokeWidth(int i) {
        this.p.setStrokeWidth(i);
        this.ia = i;
    }
}

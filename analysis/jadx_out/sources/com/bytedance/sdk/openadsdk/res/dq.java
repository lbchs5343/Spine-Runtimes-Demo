package com.bytedance.sdk.openadsdk.res;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;

/* loaded from: classes3.dex */
public class dq extends Drawable {

    /* renamed from: d, reason: collision with root package name */
    private int f3870d;
    private Paint dq;
    private float ox;

    public dq(int i) {
        this.f3870d = i;
        Paint paint = new Paint();
        this.dq = paint;
        paint.setAntiAlias(true);
        this.dq.setFilterBitmap(true);
    }

    public void dq(float f2) {
        this.dq.setStrokeWidth(f2);
        this.ox = f2;
    }

    public void dq(int i) {
        this.dq.setColor(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        float centerX = getBounds().centerX();
        float centerY = getBounds().centerY();
        float f2 = this.f3870d / 2.0f;
        float f3 = centerX - ((3.0f * f2) / 4.0f);
        float f4 = (f2 / 4.0f) + centerX;
        float f5 = f4 - f3;
        canvas.drawLine(f3, (this.ox / 4.0f) + centerY, f4, centerY - f5, this.dq);
        canvas.drawLine(f3, centerY - (this.ox / 4.0f), f4, f5 + centerY, this.dq);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return (int) (this.f3870d * 1.3d);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return (int) (this.f3870d * 1.3d);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.dq.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.dq.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.dq.setColorFilter(colorFilter);
    }
}

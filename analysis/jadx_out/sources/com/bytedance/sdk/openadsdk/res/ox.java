package com.bytedance.sdk.openadsdk.res;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;

/* loaded from: classes3.dex */
public class ox extends Drawable {

    /* renamed from: d, reason: collision with root package name */
    private int f3872d;
    private Paint dq;

    public ox(int i) {
        this.f3872d = i;
        Paint paint = new Paint();
        this.dq = paint;
        paint.setAntiAlias(true);
        this.dq.setFilterBitmap(true);
    }

    public void dq(float f2) {
        this.dq.setStrokeWidth(f2);
    }

    public void dq(int i) {
        this.dq.setColor(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        float centerX = getBounds().centerX();
        float centerY = getBounds().centerY();
        float f2 = ((this.f3872d / 2.0f) * 3.0f) / 4.0f;
        float f3 = centerX - f2;
        float f4 = centerY - f2;
        float f5 = centerX + f2;
        float f6 = centerY + f2;
        canvas.drawLine(f3, f4, f5, f6, this.dq);
        canvas.drawLine(f5, f4, f3, f6, this.dq);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return (int) (this.f3872d * 1.3d);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return (int) (this.f3872d * 1.3d);
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

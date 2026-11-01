package com.bytedance.sdk.openadsdk.res;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;

/* loaded from: classes3.dex */
public class d extends Drawable {

    /* renamed from: d, reason: collision with root package name */
    private int f3869d;
    private Paint dq;

    public d(int i) {
        this.f3869d = i;
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
        canvas.drawCircle(getBounds().centerX(), getBounds().centerY(), this.f3869d / 2.0f, this.dq);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return (int) (this.f3869d * 1.3d);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return (int) (this.f3869d * 1.3d);
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

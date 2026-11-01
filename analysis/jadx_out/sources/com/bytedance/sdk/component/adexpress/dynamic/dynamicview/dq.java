package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;

/* loaded from: classes.dex */
public class dq extends d {
    private final Bitmap ox;

    /* renamed from: d, reason: collision with root package name */
    private final Rect f1728d = new Rect();
    private final Paint p = new Paint(1);

    public dq(Bitmap bitmap, d dVar) {
        this.ox = bitmap;
        if (dVar != null) {
            this.dq = dVar.dq;
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.d
    public void dq(Canvas canvas) {
        canvas.drawBitmap(this.ox, this.f1728d, getBounds(), this.p);
    }

    @Override // android.graphics.drawable.GradientDrawable, android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        int height = rect.height();
        int width = rect.width();
        int width2 = this.ox.getWidth();
        int height2 = this.ox.getHeight();
        this.f1728d.set(0, 0, width2, height2);
        if (height2 >= height && width2 >= width) {
            if (width2 > width) {
                Rect rect2 = this.f1728d;
                int i = (width2 - width) / 2;
                rect2.left = i;
                rect2.right = i + width;
            }
            if (height2 > height) {
                Rect rect3 = this.f1728d;
                int i2 = (height2 - height) / 2;
                rect3.top = i2;
                rect3.bottom = i2 + height;
                return;
            }
            return;
        }
        float f2 = height;
        float f3 = f2 * 1.0f;
        float f4 = height2;
        float f5 = f3 / f4;
        float f6 = width;
        float f7 = 1.0f * f6;
        float f8 = width2;
        if (Math.max(f5, f7 / f8) > f5) {
            int i3 = (int) ((f3 / f6) * f8);
            Rect rect4 = this.f1728d;
            int i4 = (height2 - i3) / 2;
            rect4.top = i4;
            rect4.bottom = i4 + i3;
            return;
        }
        int i5 = (int) ((f7 / f2) * f4);
        Rect rect5 = this.f1728d;
        int i6 = (width2 - i5) / 2;
        rect5.left = i6;
        rect5.right = i6 + i5;
    }
}

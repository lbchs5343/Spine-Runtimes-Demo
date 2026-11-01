package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.drawable.GradientDrawable;
import com.bytedance.component.sdk.annotation.ColorInt;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public class d extends GradientDrawable {

    /* renamed from: d, reason: collision with root package name */
    private final Paint f1727d;
    protected Path dq;

    public d() {
        this.dq = new Path();
        Paint paint = new Paint(1);
        this.f1727d = paint;
        paint.setColor(-1);
    }

    public d(GradientDrawable.Orientation orientation, @ColorInt int[] iArr) {
        super(orientation, iArr);
        this.dq = new Path();
        Paint paint = new Paint(1);
        this.f1727d = paint;
        paint.setColor(-1);
    }

    public void dq(Canvas canvas) {
        super.draw(canvas);
    }

    @Override // android.graphics.drawable.GradientDrawable, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Path path = this.dq;
        if (path == null || path.isEmpty()) {
            dq(canvas);
            return;
        }
        int saveLayer = canvas.saveLayer(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, canvas.getWidth(), canvas.getHeight(), this.f1727d, 31);
        dq(canvas);
        this.f1727d.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        canvas.drawPath(this.dq, this.f1727d);
        this.f1727d.setXfermode(null);
        canvas.restoreToCount(saveLayer);
    }

    public void update(int i, int i2, int i3, int i4) {
        this.dq.addRect(i, i2, i3, i4, Path.Direction.CW);
        invalidateSelf();
    }
}

package com.ss.android.downloadlib.guide.install;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PaintFlagsDrawFilter;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public class ClipImageView extends ImageView {

    /* renamed from: d, reason: collision with root package name */
    private Path f9218d;
    private boolean dq;
    private RectF ox;
    private Paint p;
    private float[] s;

    public ClipImageView(Context context) {
        super(context);
        this.dq = true;
        dq(context);
    }

    public ClipImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.dq = true;
        dq(context);
    }

    public ClipImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.dq = true;
        dq(context);
    }

    public void dq(Context context) {
        this.f9218d = new Path();
        this.ox = new RectF();
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        if (this.dq) {
            this.f9218d.reset();
            this.ox.set(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, getWidth(), getHeight());
            float[] fArr = this.s;
            if (fArr != null) {
                this.f9218d.addRoundRect(this.ox, fArr, Path.Direction.CW);
            }
            canvas.setDrawFilter(new PaintFlagsDrawFilter(0, 3));
            canvas.clipPath(this.f9218d);
            Paint paint = this.p;
            if (paint != null) {
                canvas.drawPath(this.f9218d, paint);
            }
        }
        super.onDraw(canvas);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        Paint paint = new Paint(1);
        this.p = paint;
        paint.setStyle(Paint.Style.FILL);
        this.p.setColor(i);
    }

    public void setClip(boolean z) {
        this.dq = z;
    }

    public void setRadius(float[] fArr) {
        if (fArr == null || fArr.length != 8) {
            return;
        }
        this.s = fArr;
    }

    public void setRoundRadius(int i) {
        if (i > 0) {
            float f2 = i;
            setRadius(new float[]{f2, f2, f2, f2, f2, f2, f2, f2});
        }
    }
}

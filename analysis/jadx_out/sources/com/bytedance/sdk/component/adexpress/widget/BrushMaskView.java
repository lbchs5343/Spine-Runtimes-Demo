package com.bytedance.sdk.component.adexpress.widget;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.view.View;
import com.bytedance.component.sdk.annotation.RequiresApi;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public class BrushMaskView extends View {
    private static final String dq = "BrushMaskView";

    /* renamed from: d, reason: collision with root package name */
    private Paint f1791d;
    private Paint ia;
    private BitmapDrawable iw;
    private Paint mn;
    private Bitmap ox;
    private Canvas p;
    private Paint s;

    private int dq(int i) {
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode == 1073741824) {
            return size;
        }
        if (mode == Integer.MIN_VALUE) {
            return Math.min(0, size);
        }
        return 0;
    }

    private void dq(int i, int i2) {
        if (i <= 0 || i2 <= 0) {
            return;
        }
        try {
            Bitmap createBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
            this.ox = createBitmap;
            Canvas canvas = this.p;
            if (canvas == null) {
                this.p = new Canvas(this.ox);
            } else {
                canvas.setBitmap(createBitmap);
            }
            this.p.drawRoundRect(new RectF(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, i, i2), 120.0f, 120.0f, this.f1791d);
            if (this.iw != null) {
                this.iw.setBounds(new Rect(0, 0, i, i2));
                this.iw.draw(this.p);
            }
        } catch (Exception e2) {
            ig.p(dq, e2.getMessage());
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        Bitmap bitmap = this.ox;
        if (bitmap != null) {
            canvas.drawBitmap(bitmap, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, this.s);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        setMeasuredDimension(dq(i), dq(i2));
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        dq(i, i2);
    }

    public void setEraserSize(float f2) {
        this.mn.setStrokeWidth(f2);
        this.ia.setStrokeWidth(f2);
    }

    public void setMaskColor(int i) {
        this.f1791d.setColor(i);
    }

    @RequiresApi(api = 21)
    public void setWatermark(int i) {
        if (i == -1) {
            this.iw = null;
        } else {
            this.iw = new BitmapDrawable(BitmapFactory.decodeResource(getResources(), i));
        }
    }
}

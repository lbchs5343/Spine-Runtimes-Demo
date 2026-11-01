package com.bytedance.sdk.component.adexpress.widget;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public class WriggleGuideView extends View {

    /* renamed from: d, reason: collision with root package name */
    private int f1829d;
    private int dq;
    private boolean ia;
    private int iw;
    private dq kk;
    private boolean mn;
    private Bitmap ox;
    private Bitmap p;
    private Paint s;

    public interface dq {
    }

    private Bitmap d(int i, int i2) {
        Bitmap createBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint(1);
        Bitmap decodeResource = BitmapFactory.decodeResource(getContext().getResources(), r.s(getContext(), "tt_wriggle_union_white"));
        if (decodeResource != null) {
            canvas.drawBitmap(decodeResource, (Rect) null, new RectF(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, i, i2), paint);
        }
        return createBitmap;
    }

    private Bitmap dq(int i, int i2) {
        Bitmap createBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Bitmap decodeResource = BitmapFactory.decodeResource(getContext().getResources(), r.s(getContext(), "tt_wriggle_union"));
        if (decodeResource != null) {
            canvas.drawBitmap(decodeResource, (Rect) null, new RectF(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, i, i2), this.s);
        }
        return createBitmap;
    }

    private Bitmap ox(int i, int i2) {
        Bitmap createBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint(1);
        paint.setColor(-1);
        canvas.drawCircle(i / 2, 10.0f, this.iw, paint);
        return createBitmap;
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.kk != null) {
            this.kk = null;
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.mn) {
            this.dq = getWidth();
            int height = getHeight();
            this.f1829d = height;
            this.ox = dq(this.dq, height);
            this.p = d(this.dq, this.f1829d);
            this.mn = false;
        }
        Bitmap bitmap = this.ox;
        if (bitmap != null) {
            canvas.drawBitmap(bitmap, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, this.s);
        }
        int saveLayer = canvas.saveLayer(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, getWidth(), getHeight(), null, 31);
        Bitmap bitmap2 = this.p;
        if (bitmap2 != null) {
            canvas.drawBitmap(bitmap2, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, this.s);
        }
        this.s.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(ox(this.dq, this.f1829d), TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, this.s);
        this.s.setXfermode(null);
        canvas.restoreToCount(saveLayer);
        if (this.ia) {
            this.iw += 5;
            invalidate();
            if (this.iw >= this.dq) {
                this.ia = false;
            }
        }
    }
}

package com.bytedance.sdk.openadsdk.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes3.dex */
public class TTRoundRectImageView extends ImageView {

    /* renamed from: d, reason: collision with root package name */
    private int f3911d;
    private Paint dq;
    private int ox;
    private Matrix p;

    public TTRoundRectImageView(Context context) {
        this(context, null);
    }

    public TTRoundRectImageView(Context context, int i, int i2) {
        this(context);
        this.f3911d = i;
        this.ox = i2;
    }

    public TTRoundRectImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TTRoundRectImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f3911d = 25;
        this.ox = 25;
        Paint paint = new Paint();
        this.dq = paint;
        paint.setAntiAlias(true);
        this.dq.setFilterBitmap(true);
        this.p = new Matrix();
    }

    private Bitmap dq(Drawable drawable) {
        if (drawable == null) {
            return null;
        }
        if (drawable instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        int width = drawable.getIntrinsicWidth() <= 0 ? getWidth() : drawable.getIntrinsicWidth();
        int height = drawable.getIntrinsicHeight() <= 0 ? getHeight() : drawable.getIntrinsicHeight();
        Bitmap createBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        drawable.setBounds(0, 0, width, height);
        drawable.draw(canvas);
        return createBitmap;
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        Drawable drawable = getDrawable();
        if (drawable == null) {
            super.onDraw(canvas);
            return;
        }
        Bitmap dq = dq(drawable);
        if (dq == null) {
            super.onDraw(canvas);
            return;
        }
        Shader.TileMode tileMode = Shader.TileMode.REPEAT;
        BitmapShader bitmapShader = new BitmapShader(dq, tileMode, tileMode);
        float max = (dq.getWidth() == getWidth() && dq.getHeight() == getHeight()) ? 1.0f : Math.max((getWidth() * 1.0f) / dq.getWidth(), (getHeight() * 1.0f) / dq.getHeight());
        this.p.setScale(max, max);
        bitmapShader.setLocalMatrix(this.p);
        this.dq.setShader(bitmapShader);
        canvas.drawRoundRect(new RectF(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, getWidth(), getHeight()), this.f3911d, this.ox, this.dq);
    }

    public void setXRound(int i) {
        this.f3911d = i;
        postInvalidate();
    }

    public void setYRound(int i) {
        this.ox = i;
        postInvalidate();
    }
}

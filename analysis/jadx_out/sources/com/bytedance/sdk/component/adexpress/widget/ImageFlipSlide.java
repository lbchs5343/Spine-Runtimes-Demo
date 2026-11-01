package com.bytedance.sdk.component.adexpress.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.view.View;
import com.bytedance.sdk.component.iw.f;
import com.bytedance.sdk.component.iw.ia;
import com.bytedance.sdk.component.iw.no;
import com.bytedance.sdk.component.iw.o;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.ats.ATSMethod;
import java.util.List;

/* loaded from: classes.dex */
public class ImageFlipSlide extends View {

    /* renamed from: d, reason: collision with root package name */
    private float f1812d;
    Paint dq;
    private final boolean ia;
    private final Rect iw;
    private final Rect mn;
    private Bitmap ox;
    private List<String> p;
    private Path s;

    public ImageFlipSlide(Context context, boolean z) {
        super(context);
        this.f1812d = 0.1f;
        this.iw = new Rect();
        this.mn = new Rect();
        this.ia = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Bitmap dq(Bitmap bitmap, int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        if (bitmap == null) {
            return null;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        float f2 = i;
        float f3 = (width * 1.0f) / f2;
        float f4 = i2;
        float f5 = (height * 1.0f) / f4;
        Matrix matrix = new Matrix();
        if (f5 > f3) {
            int i7 = (int) (f4 * f3);
            float f6 = 1.0f / f3;
            matrix.setScale(f6, f6);
            i5 = i7;
            i3 = width;
            i6 = (height / 2) - (i7 / 2);
            i4 = 0;
        } else {
            int i8 = (int) (f2 * f5);
            float f7 = 1.0f / f5;
            matrix.setScale(f7, f7);
            i3 = i8;
            i4 = (width / 2) - (i8 / 2);
            i5 = height;
            i6 = 0;
        }
        return Bitmap.createBitmap(bitmap, i4, i6, i3, i5, matrix, false);
    }

    private void dq(ColorMatrix colorMatrix, String str) {
        try {
            ColorMatrix colorMatrix2 = new ColorMatrix();
            if (str.startsWith("hue-rotate")) {
                colorMatrix2.setRotate(0, Integer.parseInt(str.split("\\(")[1].split("deg")[0]));
            } else {
                if (!str.startsWith("grayscale") && !str.startsWith("contrast")) {
                    if (str.startsWith("invert")) {
                        float parseInt = (Integer.parseInt(str.split("\\(")[1].split("%")[0]) / 100.0f) * 255.0f;
                        colorMatrix2.set(new float[]{-1.0f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, parseInt, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, -1.0f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, parseInt, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, -1.0f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, parseInt, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT});
                    } else if (str.startsWith("sepia")) {
                        float parseInt2 = Integer.parseInt(str.split("\\(")[1].split("%")[0]) / 100.0f;
                        colorMatrix2.setScale(parseInt2, parseInt2, 1.0f, 1.0f);
                    } else if (str.startsWith("brightness")) {
                        float parseInt3 = Integer.parseInt(str.split("\\(")[1].split("%")[0]) / 100.0f;
                        colorMatrix2.setScale(parseInt3, parseInt3, parseInt3, 1.0f);
                    }
                }
                colorMatrix2.setSaturation(Integer.parseInt(str.split("\\(")[1].split("%")[0]) / 100.0f);
            }
            colorMatrix.postConcat(colorMatrix2);
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getBlurPx() {
        if (this.p == null) {
            return 0;
        }
        for (int i = 0; i < this.p.size(); i++) {
            if (this.p.get(i).contains("blur")) {
                return Integer.parseInt(this.p.get(i).split("\\(")[1].split("px")[0]);
            }
        }
        return 0;
    }

    public void dq(float f2) {
        this.f1812d = f2;
        invalidate();
    }

    public void dq(Path path) {
        this.s = path;
        invalidate();
    }

    public void dq(String str, String str2, List<String> list) {
        final o d2 = com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().s().dq(str).d(str2);
        this.p = list;
        d2.dq(Bitmap.Config.ARGB_4444).ox(2);
        if (getBlurPx() != 0) {
            d2.dq(new ia() { // from class: com.bytedance.sdk.component.adexpress.widget.ImageFlipSlide.1
                @Override // com.bytedance.sdk.component.iw.ia
                @ATSMethod(1)
                public Bitmap dq(Bitmap bitmap) {
                    try {
                        return com.bytedance.sdk.component.adexpress.p.dq.dq(ImageFlipSlide.this.getContext(), bitmap, ImageFlipSlide.this.getBlurPx());
                    } catch (Exception unused) {
                        return bitmap;
                    }
                }
            });
        }
        post(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.widget.ImageFlipSlide.2
            @Override // java.lang.Runnable
            public void run() {
                d2.dq(new f<Bitmap>() { // from class: com.bytedance.sdk.component.adexpress.widget.ImageFlipSlide.2.1
                    @Override // com.bytedance.sdk.component.iw.f
                    @ATSMethod(2)
                    public void dq(int i, String str3, Throwable th) {
                    }

                    @Override // com.bytedance.sdk.component.iw.f
                    @ATSMethod(1)
                    public void dq(no<Bitmap> noVar) {
                        try {
                            ImageFlipSlide imageFlipSlide = ImageFlipSlide.this;
                            imageFlipSlide.ox = imageFlipSlide.dq(noVar.ox(), ImageFlipSlide.this.getWidth(), ImageFlipSlide.this.getHeight());
                        } catch (Exception unused) {
                        }
                        ImageFlipSlide.this.invalidate();
                    }
                });
            }
        });
        Paint paint = new Paint();
        this.dq = paint;
        paint.setAntiAlias(true);
        this.dq.setDither(true);
        if (this.ia) {
            this.dq.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
        }
        List<String> list2 = this.p;
        if (list2 == null || list2.size() <= 0) {
            return;
        }
        ColorMatrix colorMatrix = new ColorMatrix();
        for (int i = 0; i < this.p.size(); i++) {
            dq(colorMatrix, this.p.get(i));
        }
        this.dq.setColorFilter(new ColorMatrixColorFilter(colorMatrix));
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.ox == null) {
            return;
        }
        if (!this.ia) {
            canvas.clipPath(this.s);
            canvas.drawBitmap(this.ox, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, this.dq);
            return;
        }
        this.iw.left = (int) ((1.0f - this.f1812d) * r0.getWidth());
        this.iw.right = this.ox.getWidth();
        Rect rect = this.iw;
        rect.top = 0;
        rect.bottom = this.ox.getHeight();
        this.mn.left = (int) ((1.0f - this.f1812d) * getWidth());
        this.mn.right = getWidth();
        Rect rect2 = this.mn;
        rect2.top = 0;
        rect2.bottom = getHeight();
        canvas.drawBitmap(this.ox, this.iw, this.mn, this.dq);
    }
}

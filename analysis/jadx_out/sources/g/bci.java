package g;

import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.widget.ImageView;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public final class bci extends Drawable {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f11265a = 0;

    /* renamed from: b, reason: collision with root package name */
    public final RectF f11266b;

    /* renamed from: c, reason: collision with root package name */
    public final RectF f11267c;

    /* renamed from: d, reason: collision with root package name */
    public float f11268d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f11269e;

    /* renamed from: f, reason: collision with root package name */
    public final Bitmap f11270f;

    /* renamed from: g, reason: collision with root package name */
    public Shader.TileMode f11271g;
    public final Paint h;
    public final int j;
    public ColorStateList k;
    public final boolean[] l;
    public Shader.TileMode m;
    public final Paint n;
    public final Matrix p;
    public boolean q;
    public ImageView.ScaleType r;
    public final RectF s;
    public final int t;
    public float u;
    public final RectF i = new RectF();
    public final RectF o = new RectF();

    public bci(Bitmap bitmap) {
        RectF rectF = new RectF();
        this.s = rectF;
        this.f11266b = new RectF();
        this.p = new Matrix();
        this.f11267c = new RectF();
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        this.f11271g = tileMode;
        this.m = tileMode;
        this.f11269e = true;
        this.f11268d = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        this.l = new boolean[]{true, true, true, true};
        this.q = false;
        this.u = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        this.k = ColorStateList.valueOf(-16777216);
        this.r = ImageView.ScaleType.FIT_CENTER;
        this.f11270f = bitmap;
        int width = bitmap.getWidth();
        this.j = width;
        int height = bitmap.getHeight();
        this.t = height;
        rectF.set(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, width, height);
        Paint paint = new Paint();
        this.h = paint;
        paint.setStyle(Paint.Style.FILL);
        paint.setAntiAlias(true);
        Paint paint2 = new Paint();
        this.n = paint2;
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setAntiAlias(true);
        paint2.setColor(this.k.getColorForState(getState(), -16777216));
        paint2.setStrokeWidth(this.u);
    }

    public static Drawable v(Drawable drawable) {
        if (drawable != null) {
            if (drawable instanceof bci) {
                return drawable;
            }
            if (Build.VERSION.SDK_INT >= 28 && agk.a(drawable)) {
                return drawable;
            }
            if (drawable instanceof LayerDrawable) {
                Drawable.ConstantState constantState = drawable.mutate().getConstantState();
                if (constantState != null) {
                    drawable = constantState.newDrawable();
                }
                LayerDrawable layerDrawable = (LayerDrawable) drawable;
                int numberOfLayers = layerDrawable.getNumberOfLayers();
                for (int i = 0; i < numberOfLayers; i++) {
                    layerDrawable.setDrawableByLayerId(layerDrawable.getId(i), v(layerDrawable.getDrawable(i)));
                }
                return layerDrawable;
            }
        }
        Bitmap bitmap = null;
        if (drawable != null) {
            if (drawable instanceof BitmapDrawable) {
                bitmap = ((BitmapDrawable) drawable).getBitmap();
            } else {
                try {
                    Bitmap createBitmap = Bitmap.createBitmap(Math.max(drawable.getIntrinsicWidth(), 2), Math.max(drawable.getIntrinsicHeight(), 2), Bitmap.Config.ARGB_8888);
                    Canvas canvas = new Canvas(createBitmap);
                    drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
                    drawable.draw(canvas);
                    bitmap = createBitmap;
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
        return bitmap != null ? new bci(bitmap) : drawable;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Canvas canvas2;
        float f2;
        float f3;
        float f4;
        boolean z = this.f11269e;
        Paint paint = this.h;
        if (z) {
            BitmapShader bitmapShader = new BitmapShader(this.f11270f, this.f11271g, this.m);
            Shader.TileMode tileMode = this.f11271g;
            Shader.TileMode tileMode2 = Shader.TileMode.CLAMP;
            if (tileMode == tileMode2 && this.m == tileMode2) {
                bitmapShader.setLocalMatrix(this.p);
            }
            paint.setShader(bitmapShader);
            this.f11269e = false;
        }
        boolean z2 = this.q;
        RectF rectF = this.f11266b;
        Paint paint2 = this.n;
        RectF rectF2 = this.o;
        if (z2) {
            if (this.u <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                canvas.drawOval(rectF2, paint);
                return;
            } else {
                canvas.drawOval(rectF2, paint);
                canvas.drawOval(rectF, paint2);
                return;
            }
        }
        boolean[] zArr = this.l;
        for (boolean z3 : zArr) {
            if (z3) {
                float f5 = this.f11268d;
                if (this.u <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                    canvas.drawRoundRect(rectF2, f5, f5, paint);
                    x(canvas);
                    return;
                }
                canvas.drawRoundRect(rectF2, f5, f5, paint);
                canvas.drawRoundRect(rectF, f5, f5, paint2);
                x(canvas);
                for (boolean z4 : zArr) {
                    if (z4) {
                        if (this.f11268d == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                            return;
                        }
                        float f6 = rectF2.left;
                        float f7 = rectF2.top;
                        float width = rectF2.width() + f6;
                        float height = rectF2.height() + f7;
                        float f8 = this.f11268d;
                        float f9 = this.u / 2.0f;
                        if (zArr[0]) {
                            canvas2 = canvas;
                            f2 = f6;
                            f3 = f7;
                        } else {
                            canvas2 = canvas;
                            canvas2.drawLine(f6 - f9, f7, f6 + f8, f7, paint2);
                            f3 = f7;
                            canvas2.drawLine(f6, f3 - f9, f6, f3 + f8, paint2);
                            f2 = f6;
                        }
                        if (!zArr[1]) {
                            float f10 = f3;
                            canvas2.drawLine((width - f8) - f9, f10, width, f3, paint2);
                            canvas2.drawLine(width, f10 - f9, width, f10 + f8, paint2);
                            width = width;
                        }
                        if (zArr[2]) {
                            f4 = height;
                        } else {
                            canvas2.drawLine((width - f8) - f9, height, width + f9, height, paint2);
                            canvas2.drawLine(width, height - f8, width, height, paint2);
                            f4 = height;
                        }
                        if (zArr[3]) {
                            return;
                        }
                        float f11 = f4;
                        canvas2.drawLine(f2 - f9, f4, f2 + f8, f11, paint2);
                        canvas2.drawLine(f2, f4 - f8, f2, f11, paint2);
                        return;
                    }
                }
                return;
            }
        }
        canvas.drawRect(rectF2, paint);
        if (this.u > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            canvas.drawRect(rectF, paint2);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.h.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public final ColorFilter getColorFilter() {
        return this.h.getColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return this.t;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return this.j;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        return this.k.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.i.set(rect);
        w();
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] iArr) {
        int colorForState = this.k.getColorForState(iArr, 0);
        Paint paint = this.n;
        if (paint.getColor() == colorForState) {
            return super.onStateChange(iArr);
        }
        paint.setColor(colorForState);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        this.h.setAlpha(i);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.h.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setDither(boolean z) {
        this.h.setDither(z);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setFilterBitmap(boolean z) {
        this.h.setFilterBitmap(z);
        invalidateSelf();
    }

    public final void w() {
        float width;
        float height;
        int i = ezo.f16421a[this.r.ordinal()];
        int i2 = this.t;
        int i3 = this.j;
        RectF rectF = this.i;
        Matrix matrix = this.p;
        RectF rectF2 = this.f11266b;
        if (i == 1) {
            rectF2.set(rectF);
            float f2 = this.u;
            rectF2.inset(f2 / 2.0f, f2 / 2.0f);
            matrix.reset();
            matrix.setTranslate((int) awf.g(rectF2.width(), i3, 0.5f, 0.5f), (int) awf.g(rectF2.height(), i2, 0.5f, 0.5f));
        } else if (i != 2) {
            RectF rectF3 = this.s;
            if (i == 3) {
                matrix.reset();
                float min = (((float) i3) > rectF.width() || ((float) i2) > rectF.height()) ? Math.min(rectF.width() / i3, rectF.height() / i2) : 1.0f;
                float width2 = (int) (((rectF.width() - (i3 * min)) * 0.5f) + 0.5f);
                float height2 = (int) (((rectF.height() - (i2 * min)) * 0.5f) + 0.5f);
                matrix.setScale(min, min);
                matrix.postTranslate(width2, height2);
                rectF2.set(rectF3);
                matrix.mapRect(rectF2);
                float f3 = this.u;
                rectF2.inset(f3 / 2.0f, f3 / 2.0f);
                matrix.setRectToRect(rectF3, rectF2, Matrix.ScaleToFit.FILL);
            } else if (i == 5) {
                rectF2.set(rectF3);
                matrix.setRectToRect(rectF3, rectF, Matrix.ScaleToFit.END);
                matrix.mapRect(rectF2);
                float f4 = this.u;
                rectF2.inset(f4 / 2.0f, f4 / 2.0f);
                matrix.setRectToRect(rectF3, rectF2, Matrix.ScaleToFit.FILL);
            } else if (i == 6) {
                rectF2.set(rectF3);
                matrix.setRectToRect(rectF3, rectF, Matrix.ScaleToFit.START);
                matrix.mapRect(rectF2);
                float f5 = this.u;
                rectF2.inset(f5 / 2.0f, f5 / 2.0f);
                matrix.setRectToRect(rectF3, rectF2, Matrix.ScaleToFit.FILL);
            } else if (i != 7) {
                rectF2.set(rectF3);
                matrix.setRectToRect(rectF3, rectF, Matrix.ScaleToFit.CENTER);
                matrix.mapRect(rectF2);
                float f6 = this.u;
                rectF2.inset(f6 / 2.0f, f6 / 2.0f);
                matrix.setRectToRect(rectF3, rectF2, Matrix.ScaleToFit.FILL);
            } else {
                rectF2.set(rectF);
                float f7 = this.u;
                rectF2.inset(f7 / 2.0f, f7 / 2.0f);
                matrix.reset();
                matrix.setRectToRect(rectF3, rectF2, Matrix.ScaleToFit.FILL);
            }
        } else {
            rectF2.set(rectF);
            float f8 = this.u;
            rectF2.inset(f8 / 2.0f, f8 / 2.0f);
            matrix.reset();
            float height3 = rectF2.height() * i3;
            float width3 = rectF2.width() * i2;
            float f9 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            if (height3 > width3) {
                width = rectF2.height() / i2;
                f9 = (rectF2.width() - (i3 * width)) * 0.5f;
                height = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            } else {
                width = rectF2.width() / i3;
                height = (rectF2.height() - (i2 * width)) * 0.5f;
            }
            matrix.setScale(width, width);
            float f10 = this.u;
            matrix.postTranslate((f10 / 2.0f) + ((int) (f9 + 0.5f)), (f10 / 2.0f) + ((int) (height + 0.5f)));
        }
        this.o.set(rectF2);
        this.f11269e = true;
    }

    public final void x(Canvas canvas) {
        boolean[] zArr = this.l;
        for (boolean z : zArr) {
            if (z) {
                if (this.f11268d == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                    return;
                }
                RectF rectF = this.o;
                float f2 = rectF.left;
                float f3 = rectF.top;
                float width = rectF.width() + f2;
                float height = rectF.height() + f3;
                float f4 = this.f11268d;
                boolean z2 = zArr[0];
                Paint paint = this.h;
                RectF rectF2 = this.f11267c;
                if (!z2) {
                    rectF2.set(f2, f3, f2 + f4, f3 + f4);
                    canvas.drawRect(rectF2, paint);
                }
                if (!zArr[1]) {
                    rectF2.set(width - f4, f3, width, f4);
                    canvas.drawRect(rectF2, paint);
                }
                if (!zArr[2]) {
                    rectF2.set(width - f4, height - f4, width, height);
                    canvas.drawRect(rectF2, paint);
                }
                if (zArr[3]) {
                    return;
                }
                rectF2.set(f2, height - f4, f4 + f2, height);
                canvas.drawRect(rectF2, paint);
                return;
            }
        }
    }
}

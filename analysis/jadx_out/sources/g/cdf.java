package g;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Shader;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.net.Uri;
import android.view.View;
import android.widget.ImageView;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.HashSet;

/* loaded from: classes.dex */
public final class cdf extends ImageView implements aeb, gsy {

    /* renamed from: a, reason: collision with root package name */
    public static final Shader.TileMode f12680a = Shader.TileMode.CLAMP;

    /* renamed from: b, reason: collision with root package name */
    public boolean f12681b;

    /* renamed from: c, reason: collision with root package name */
    public final dv f12682c;

    /* renamed from: d, reason: collision with root package name */
    public Drawable f12683d;

    /* renamed from: e, reason: collision with root package name */
    public dlv f12684e;

    /* renamed from: f, reason: collision with root package name */
    public int f12685f;

    /* renamed from: g, reason: collision with root package name */
    public ColorStateList f12686g;
    public ImageView.ScaleType h;
    public int i;
    public float j;
    public ColorFilter k;
    public float l;
    public boolean m;
    public final float[] n;
    public Shader.TileMode o;
    public Shader.TileMode p;
    public boolean q;

    static {
        ImageView.ScaleType scaleType = ImageView.ScaleType.MATRIX;
        ImageView.ScaleType scaleType2 = ImageView.ScaleType.FIT_XY;
        ImageView.ScaleType scaleType3 = ImageView.ScaleType.FIT_START;
        ImageView.ScaleType scaleType4 = ImageView.ScaleType.FIT_CENTER;
        ImageView.ScaleType scaleType5 = ImageView.ScaleType.FIT_END;
        ImageView.ScaleType scaleType6 = ImageView.ScaleType.CENTER;
        ImageView.ScaleType scaleType7 = ImageView.ScaleType.CENTER_CROP;
        ImageView.ScaleType scaleType8 = ImageView.ScaleType.CENTER_INSIDE;
    }

    public cdf(Context context) {
        super(context);
        this.n = new float[]{TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT};
        this.f12686g = ColorStateList.valueOf(-16777216);
        this.j = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        this.k = null;
        this.q = false;
        this.f12681b = false;
        this.m = false;
        Shader.TileMode tileMode = f12680a;
        this.p = tileMode;
        this.o = tileMode;
        this.f12682c = new dv(this);
    }

    @Override // android.widget.ImageView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        invalidate();
    }

    public int getBorderColor() {
        return this.f12686g.getDefaultColor();
    }

    public ColorStateList getBorderColors() {
        return this.f12686g;
    }

    public float getBorderRadius() {
        return this.f12682c.f14876e;
    }

    public float getBorderWidth() {
        return this.j;
    }

    public float getCornerRadius() {
        return getMaxCornerRadius();
    }

    public float getMaxCornerRadius() {
        float[] fArr = this.n;
        float f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        for (float f3 : fArr) {
            f2 = Math.max(f3, f2);
        }
        return f2;
    }

    @Override // g.aeb
    public float getRipple() {
        return this.l;
    }

    @Override // g.aeb
    public float getRubIn() {
        return this.f12682c.f14877f;
    }

    @Override // android.widget.ImageView
    public ImageView.ScaleType getScaleType() {
        return this.h;
    }

    @Override // g.aeb
    public float getShine() {
        return this.f12682c.f14873b;
    }

    @Override // g.aeb
    public float getStretch() {
        return this.f12682c.f14874c;
    }

    public Shader.TileMode getTileModeX() {
        return this.p;
    }

    public Shader.TileMode getTileModeY() {
        return this.o;
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        dlv dlvVar = this.f12684e;
        if (dlvVar != null) {
            dlvVar.mn();
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        dlv dlvVar = this.f12684e;
        if (dlvVar != null) {
            dlvVar.ia();
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        dlv dlvVar = this.f12684e;
        if (dlvVar != null) {
            dlvVar.dq(canvas, this);
        }
    }

    @Override // android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        dlv dlvVar = this.f12684e;
        if (dlvVar != null) {
            dlvVar.dq(i, i2, i3, i4);
        }
        super.onLayout(z, i, i2, i3, i4);
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onMeasure(int i, int i2) {
        dlv dlvVar = this.f12684e;
        if (dlvVar == null) {
            super.onMeasure(i, i2);
        } else {
            int[] dq = dlvVar.dq(i, i2);
            super.onMeasure(dq[0], dq[1]);
        }
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        dlv dlvVar = this.f12684e;
        if (dlvVar != null) {
            dlvVar.d(i, i2, i3, i3);
        }
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        dlv dlvVar = this.f12684e;
        if (dlvVar != null) {
            dlvVar.dq(z);
        }
    }

    public final void r(float f2, float f3, float f4, float f5) {
        float[] fArr = this.n;
        if (fArr[0] == f2 && fArr[1] == f3 && fArr[2] == f5 && fArr[3] == f4) {
            return;
        }
        fArr[0] = f2;
        fArr[1] = f3;
        fArr[3] = f4;
        fArr[2] = f5;
        t();
        invalidate();
    }

    public final void s(Drawable drawable, ImageView.ScaleType scaleType) {
        if (drawable == null) {
            return;
        }
        if (!(drawable instanceof bci)) {
            if (drawable instanceof LayerDrawable) {
                LayerDrawable layerDrawable = (LayerDrawable) drawable;
                int numberOfLayers = layerDrawable.getNumberOfLayers();
                for (int i = 0; i < numberOfLayers; i++) {
                    s(layerDrawable.getDrawable(i), scaleType);
                }
                return;
            }
            return;
        }
        bci bciVar = (bci) drawable;
        Paint paint = bciVar.n;
        if (scaleType == null) {
            scaleType = ImageView.ScaleType.FIT_CENTER;
        }
        if (bciVar.r != scaleType) {
            bciVar.r = scaleType;
            bciVar.w();
        }
        float f2 = this.j;
        bciVar.u = f2;
        paint.setStrokeWidth(f2);
        ColorStateList colorStateList = this.f12686g;
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        bciVar.k = colorStateList;
        paint.setColor(colorStateList.getColorForState(bciVar.getState(), -16777216));
        bciVar.q = this.m;
        Shader.TileMode tileMode = this.p;
        if (bciVar.f11271g != tileMode) {
            bciVar.f11271g = tileMode;
            bciVar.f11269e = true;
            bciVar.invalidateSelf();
        }
        Shader.TileMode tileMode2 = this.o;
        if (bciVar.m != tileMode2) {
            bciVar.m = tileMode2;
            bciVar.f11269e = true;
            bciVar.invalidateSelf();
        }
        float[] fArr = this.n;
        if (fArr != null) {
            float f3 = fArr[0];
            float f4 = fArr[1];
            float f5 = fArr[2];
            float f6 = fArr[3];
            HashSet hashSet = new HashSet(4);
            hashSet.add(Float.valueOf(f3));
            hashSet.add(Float.valueOf(f4));
            hashSet.add(Float.valueOf(f5));
            hashSet.add(Float.valueOf(f6));
            hashSet.remove(Float.valueOf(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT));
            if (hashSet.size() > 1) {
                throw new IllegalArgumentException("Multiple nonzero corner radii not yet supported.");
            }
            if (hashSet.isEmpty()) {
                bciVar.f11268d = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            } else {
                float floatValue = ((Float) hashSet.iterator().next()).floatValue();
                if (Float.isInfinite(floatValue) || Float.isNaN(floatValue) || floatValue < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                    throw new IllegalArgumentException("Invalid radius value: ".concat(String.valueOf(floatValue)));
                }
                bciVar.f11268d = floatValue;
            }
            boolean[] zArr = bciVar.l;
            zArr[0] = f3 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            zArr[1] = f4 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            zArr[2] = f5 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            zArr[3] = f6 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        }
        Drawable drawable2 = this.f12683d;
        if (drawable2 == null || !this.q) {
            return;
        }
        Drawable mutate = drawable2.mutate();
        this.f12683d = mutate;
        if (this.f12681b) {
            mutate.setColorFilter(this.k);
        }
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        setBackgroundDrawable(new ColorDrawable(i));
    }

    @Override // android.view.View
    @Deprecated
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        if (this.i != i) {
            this.i = i;
            Resources resources = getResources();
            Drawable drawable = null;
            if (resources != null) {
                int i2 = this.i;
                if (i2 != 0) {
                    try {
                        drawable = resources.getDrawable(i2);
                    } catch (Exception unused) {
                        this.i = 0;
                    }
                }
                drawable = bci.v(drawable);
            }
            setBackgroundDrawable(drawable);
        }
    }

    public void setBorderColor(int i) {
        setBorderColor(ColorStateList.valueOf(i));
    }

    public void setBorderColor(ColorStateList colorStateList) {
        if (this.f12686g.equals(colorStateList)) {
            return;
        }
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(-16777216);
        }
        this.f12686g = colorStateList;
        t();
        if (this.j > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            invalidate();
        }
    }

    public void setBorderRadius(float f2) {
        dv dvVar = this.f12682c;
        if (dvVar != null) {
            dvVar.g(f2);
        }
    }

    public void setBorderWidth(float f2) {
        if (this.j == f2) {
            return;
        }
        this.j = f2;
        t();
        invalidate();
    }

    public void setBorderWidth(int i) {
        setBorderWidth(getResources().getDimension(i));
    }

    @Override // android.widget.ImageView
    public void setColorFilter(ColorFilter colorFilter) {
        if (this.k != colorFilter) {
            this.k = colorFilter;
            this.f12681b = true;
            this.q = true;
            Drawable drawable = this.f12683d;
            if (drawable != null) {
                Drawable mutate = drawable.mutate();
                this.f12683d = mutate;
                if (this.f12681b) {
                    mutate.setColorFilter(this.k);
                }
            }
            invalidate();
        }
    }

    public void setCornerRadius(float f2) {
        r(f2, f2, f2, f2);
    }

    public void setCornerRadiusDimen(int i) {
        float dimension = getResources().getDimension(i);
        r(dimension, dimension, dimension, dimension);
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        bci bciVar;
        this.f12685f = 0;
        if (bitmap != null) {
            bciVar = new bci(bitmap);
        } else {
            int i = bci.f11265a;
            bciVar = null;
        }
        this.f12683d = bciVar;
        t();
        super.setImageDrawable(this.f12683d);
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        this.f12685f = 0;
        this.f12683d = bci.v(drawable);
        t();
        super.setImageDrawable(drawable);
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        if (this.f12685f != i) {
            this.f12685f = i;
            Resources resources = getResources();
            Drawable drawable = null;
            if (resources != null) {
                int i2 = this.f12685f;
                if (i2 != 0) {
                    try {
                        drawable = resources.getDrawable(i2);
                    } catch (Exception unused) {
                        this.f12685f = 0;
                    }
                }
                drawable = bci.v(drawable);
            }
            this.f12683d = drawable;
            t();
            super.setImageDrawable(this.f12683d);
        }
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        setImageDrawable(getDrawable());
    }

    public void setOval(boolean z) {
        this.m = z;
        t();
        invalidate();
    }

    public void setRipple(float f2) {
        this.l = f2;
        dv dvVar = this.f12682c;
        if (dvVar != null) {
            View view = dvVar.f14875d;
            dvVar.f14872a = f2;
            view.postInvalidate();
        }
        postInvalidate();
    }

    public void setRubIn(float f2) {
        dv dvVar = this.f12682c;
        if (dvVar != null) {
            dvVar.f14877f = f2;
            dvVar.f14875d.postInvalidate();
        }
    }

    @Override // android.widget.ImageView
    public void setScaleType(ImageView.ScaleType scaleType) {
        if (this.h != scaleType) {
            this.h = scaleType;
            int i = crz.f13409a[scaleType.ordinal()];
            if (i == 1 || i == 2 || i == 3 || i == 4) {
                super.setScaleType(scaleType);
            } else {
                super.setScaleType(ImageView.ScaleType.FIT_XY);
            }
            t();
            invalidate();
        }
    }

    public void setShine(float f2) {
        dv dvVar = this.f12682c;
        if (dvVar != null) {
            View view = dvVar.f14875d;
            dvVar.f14873b = f2;
            view.postInvalidate();
        }
    }

    public void setStretch(float f2) {
        dv dvVar = this.f12682c;
        if (dvVar != null) {
            dvVar.f14874c = f2;
            dvVar.f14875d.postInvalidate();
        }
    }

    public void setTileModeX(Shader.TileMode tileMode) {
        if (this.p == tileMode) {
            return;
        }
        this.p = tileMode;
        t();
        invalidate();
    }

    public void setTileModeY(Shader.TileMode tileMode) {
        if (this.o == tileMode) {
            return;
        }
        this.o = tileMode;
        t();
        invalidate();
    }

    public final void t() {
        s(this.f12683d, this.h);
    }
}

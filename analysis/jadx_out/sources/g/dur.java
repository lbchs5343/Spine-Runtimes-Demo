package g;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public abstract class dur extends FrameLayout {
    public final Rect k;
    public final Rect l;
    public final fdy m;
    public boolean n;
    public boolean o;
    public static final int[] j = {R.attr.colorBackground};
    public static final bmr i = new bmr(26);

    public dur(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, cn.trinea.android.developertools.R.attr.materialCardViewStyle);
        ColorStateList valueOf;
        Rect rect = new Rect();
        this.k = rect;
        this.l = new Rect();
        fdy fdyVar = new fdy(this);
        this.m = fdyVar;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, fpg.f17198a, cn.trinea.android.developertools.R.attr.materialCardViewStyle, cn.trinea.android.developertools.R.style.CardView);
        if (obtainStyledAttributes.hasValue(2)) {
            valueOf = obtainStyledAttributes.getColorStateList(2);
        } else {
            TypedArray obtainStyledAttributes2 = getContext().obtainStyledAttributes(j);
            int color = obtainStyledAttributes2.getColor(0, 0);
            obtainStyledAttributes2.recycle();
            float[] fArr = new float[3];
            Color.colorToHSV(color, fArr);
            valueOf = ColorStateList.valueOf(fArr[2] > 0.5f ? getResources().getColor(cn.trinea.android.developertools.R.color.cardview_light_background) : getResources().getColor(cn.trinea.android.developertools.R.color.cardview_dark_background));
        }
        float dimension = obtainStyledAttributes.getDimension(3, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        float dimension2 = obtainStyledAttributes.getDimension(4, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        float dimension3 = obtainStyledAttributes.getDimension(5, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        this.n = obtainStyledAttributes.getBoolean(7, false);
        this.o = obtainStyledAttributes.getBoolean(6, true);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(8, 0);
        rect.left = obtainStyledAttributes.getDimensionPixelSize(10, dimensionPixelSize);
        rect.top = obtainStyledAttributes.getDimensionPixelSize(12, dimensionPixelSize);
        rect.right = obtainStyledAttributes.getDimensionPixelSize(11, dimensionPixelSize);
        rect.bottom = obtainStyledAttributes.getDimensionPixelSize(9, dimensionPixelSize);
        dimension3 = dimension2 > dimension3 ? dimension2 : dimension3;
        obtainStyledAttributes.getDimensionPixelSize(0, 0);
        obtainStyledAttributes.getDimensionPixelSize(1, 0);
        obtainStyledAttributes.recycle();
        dmf dmfVar = new dmf(valueOf, dimension);
        fdyVar.f16634c = dmfVar;
        setBackgroundDrawable(dmfVar);
        setClipToOutline(true);
        setElevation(dimension2);
        i.aa(fdyVar, dimension3);
    }

    public ColorStateList getCardBackgroundColor() {
        return ((dmf) ((Drawable) this.m.f16634c)).f14418a;
    }

    public float getCardElevation() {
        return ((dur) this.m.f16632a).getElevation();
    }

    public int getContentPaddingBottom() {
        return this.k.bottom;
    }

    public int getContentPaddingLeft() {
        return this.k.left;
    }

    public int getContentPaddingRight() {
        return this.k.right;
    }

    public int getContentPaddingTop() {
        return this.k.top;
    }

    public float getMaxCardElevation() {
        return ((dmf) ((Drawable) this.m.f16634c)).f14421d;
    }

    public boolean getPreventCornerOverlap() {
        return this.o;
    }

    public float getRadius() {
        return ((dmf) ((Drawable) this.m.f16634c)).f14422e;
    }

    public boolean getUseCompatPadding() {
        return this.n;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
    }

    public void setCardBackgroundColor(int i2) {
        ColorStateList valueOf = ColorStateList.valueOf(i2);
        dmf dmfVar = (dmf) ((Drawable) this.m.f16634c);
        if (valueOf == null) {
            dmfVar.getClass();
            valueOf = ColorStateList.valueOf(0);
        }
        dmfVar.f14418a = valueOf;
        dmfVar.h.setColor(valueOf.getColorForState(dmfVar.getState(), dmfVar.f14418a.getDefaultColor()));
        dmfVar.invalidateSelf();
    }

    public void setCardBackgroundColor(ColorStateList colorStateList) {
        dmf dmfVar = (dmf) ((Drawable) this.m.f16634c);
        if (colorStateList == null) {
            dmfVar.getClass();
            colorStateList = ColorStateList.valueOf(0);
        }
        dmfVar.f14418a = colorStateList;
        dmfVar.h.setColor(colorStateList.getColorForState(dmfVar.getState(), dmfVar.f14418a.getDefaultColor()));
        dmfVar.invalidateSelf();
    }

    public void setCardElevation(float f2) {
        ((dur) this.m.f16632a).setElevation(f2);
    }

    public void setMaxCardElevation(float f2) {
        i.aa(this.m, f2);
    }

    @Override // android.view.View
    public void setMinimumHeight(int i2) {
        super.setMinimumHeight(i2);
    }

    @Override // android.view.View
    public void setMinimumWidth(int i2) {
        super.setMinimumWidth(i2);
    }

    @Override // android.view.View
    public final void setPadding(int i2, int i3, int i4, int i5) {
    }

    @Override // android.view.View
    public final void setPaddingRelative(int i2, int i3, int i4, int i5) {
    }

    public void setPreventCornerOverlap(boolean z) {
        if (z != this.o) {
            this.o = z;
            fdy fdyVar = this.m;
            i.aa(fdyVar, ((dmf) ((Drawable) fdyVar.f16634c)).f14421d);
        }
    }

    public void setRadius(float f2) {
        dmf dmfVar = (dmf) ((Drawable) this.m.f16634c);
        if (f2 == dmfVar.f14422e) {
            return;
        }
        dmfVar.f14422e = f2;
        dmfVar.m(null);
        dmfVar.invalidateSelf();
    }

    public void setUseCompatPadding(boolean z) {
        if (this.n != z) {
            this.n = z;
            fdy fdyVar = this.m;
            i.aa(fdyVar, ((dmf) ((Drawable) fdyVar.f16634c)).f14421d);
        }
    }
}

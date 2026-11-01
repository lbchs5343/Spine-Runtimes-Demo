package com.google.android.material.card;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Checkable;
import g.bem;
import g.bqf;
import g.cbe;
import g.cjg;
import g.ddm;
import g.dur;
import g.dwo;
import g.dyl;
import g.egh;
import g.ett;
import g.eyt;
import g.fso;
import g.git;
import g.gs;
import g.kj;

/* loaded from: classes3.dex */
public class MaterialCardView extends dur implements Checkable, cbe {

    /* renamed from: d, reason: collision with root package name */
    public final bqf f9024d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f9025e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f9026f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f9027g;

    /* renamed from: a, reason: collision with root package name */
    public static final int[] f9021a = {R.attr.state_checkable};

    /* renamed from: c, reason: collision with root package name */
    public static final int[] f9023c = {R.attr.state_checked};

    /* renamed from: b, reason: collision with root package name */
    public static final int[] f9022b = {cn.trinea.android.developertools.R.attr.state_dragged};

    public MaterialCardView(Context context, AttributeSet attributeSet) {
        super(egh.ax(context, attributeSet, cn.trinea.android.developertools.R.attr.materialCardViewStyle, cn.trinea.android.developertools.R.style.Widget_MaterialComponents_CardView), attributeSet);
        this.f9025e = false;
        this.f9026f = false;
        this.f9027g = true;
        TypedArray bd = eyt.bd(getContext(), attributeSet, git.u, cn.trinea.android.developertools.R.attr.materialCardViewStyle, cn.trinea.android.developertools.R.style.Widget_MaterialComponents_CardView, new int[0]);
        bqf bqfVar = new bqf(this, attributeSet);
        this.f9024d = bqfVar;
        ColorStateList cardBackgroundColor = super.getCardBackgroundColor();
        ddm ddmVar = bqfVar.w;
        ddmVar.en(cardBackgroundColor);
        bqfVar.s.set(super.getContentPaddingLeft(), super.getContentPaddingTop(), super.getContentPaddingRight(), super.getContentPaddingBottom());
        bqfVar.ae();
        MaterialCardView materialCardView = bqfVar.j;
        ColorStateList ai = gs.ai(materialCardView.getContext(), bd, 11);
        bqfVar.f12006f = ai;
        if (ai == null) {
            bqfVar.f12006f = ColorStateList.valueOf(-1);
        }
        bqfVar.f12003c = bd.getDimensionPixelSize(12, 0);
        boolean z = bd.getBoolean(0, false);
        bqfVar.o = z;
        materialCardView.setLongClickable(z);
        bqfVar.h = gs.ai(materialCardView.getContext(), bd, 6);
        bqfVar.am(gs.ah(materialCardView.getContext(), bd, 2));
        bqfVar.n = bd.getDimensionPixelSize(5, 0);
        bqfVar.i = bd.getDimensionPixelSize(4, 0);
        bqfVar.y = bd.getInteger(3, 8388661);
        ColorStateList ai2 = gs.ai(materialCardView.getContext(), bd, 7);
        bqfVar.f12004d = ai2;
        if (ai2 == null) {
            bqfVar.f12004d = ColorStateList.valueOf(eyt.bs(cn.trinea.android.developertools.R.attr.colorControlHighlight, materialCardView));
        }
        ColorStateList ai3 = gs.ai(materialCardView.getContext(), bd, 1);
        ai3 = ai3 == null ? ColorStateList.valueOf(0) : ai3;
        ddm ddmVar2 = bqfVar.f12007g;
        ddmVar2.en(ai3);
        RippleDrawable rippleDrawable = bqfVar.f12005e;
        if (rippleDrawable != null) {
            rippleDrawable.setColor(bqfVar.f12004d);
        }
        ddmVar.ec(materialCardView.getCardElevation());
        float f2 = bqfVar.f12003c;
        ColorStateList colorStateList = bqfVar.f12006f;
        ddmVar2.ds.f14951b = f2;
        ddmVar2.invalidateSelf();
        dwo dwoVar = ddmVar2.ds;
        if (dwoVar.f14956g != colorStateList) {
            dwoVar.f14956g = colorStateList;
            ddmVar2.onStateChange(ddmVar2.getState());
        }
        materialCardView.setBackgroundInternal(bqfVar.ad(ddmVar));
        Drawable al = bqfVar.ak() ? bqfVar.al() : ddmVar2;
        bqfVar.r = al;
        materialCardView.setForeground(bqfVar.ad(al));
        bd.recycle();
    }

    private RectF getBoundsAsRectF() {
        RectF rectF = new RectF();
        rectF.set(this.f9024d.w.getBounds());
        return rectF;
    }

    @Override // g.dur
    public ColorStateList getCardBackgroundColor() {
        return this.f9024d.w.ds.f14954e;
    }

    public ColorStateList getCardForegroundColor() {
        return this.f9024d.f12007g.ds.f14954e;
    }

    public float getCardViewRadius() {
        return super.getRadius();
    }

    public Drawable getCheckedIcon() {
        return this.f9024d.t;
    }

    public int getCheckedIconGravity() {
        return this.f9024d.y;
    }

    public int getCheckedIconMargin() {
        return this.f9024d.i;
    }

    public int getCheckedIconSize() {
        return this.f9024d.n;
    }

    public ColorStateList getCheckedIconTint() {
        return this.f9024d.h;
    }

    @Override // g.dur
    public int getContentPaddingBottom() {
        return this.f9024d.s.bottom;
    }

    @Override // g.dur
    public int getContentPaddingLeft() {
        return this.f9024d.s.left;
    }

    @Override // g.dur
    public int getContentPaddingRight() {
        return this.f9024d.s.right;
    }

    @Override // g.dur
    public int getContentPaddingTop() {
        return this.f9024d.s.top;
    }

    public float getProgress() {
        return this.f9024d.w.ds.n;
    }

    @Override // g.dur
    public float getRadius() {
        return this.f9024d.w.eq();
    }

    public ColorStateList getRippleColor() {
        return this.f9024d.f12004d;
    }

    public cjg getShapeAppearanceModel() {
        return this.f9024d.q;
    }

    @Deprecated
    public int getStrokeColor() {
        ColorStateList colorStateList = this.f9024d.f12006f;
        if (colorStateList == null) {
            return -1;
        }
        return colorStateList.getDefaultColor();
    }

    public ColorStateList getStrokeColorStateList() {
        return this.f9024d.f12006f;
    }

    public int getStrokeWidth() {
        return this.f9024d.f12003c;
    }

    public final void h() {
        bqf bqfVar;
        RippleDrawable rippleDrawable;
        if (Build.VERSION.SDK_INT <= 26 || (rippleDrawable = (bqfVar = this.f9024d).f12005e) == null) {
            return;
        }
        Rect bounds = rippleDrawable.getBounds();
        int i = bounds.bottom;
        bqfVar.f12005e.setBounds(bounds.left, bounds.top, bounds.right, i - 1);
        bqfVar.f12005e.setBounds(bounds.left, bounds.top, bounds.right, i);
    }

    @Override // android.widget.Checkable
    public final boolean isChecked() {
        return this.f9025e;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        bqf bqfVar = this.f9024d;
        bqfVar.ac();
        kj.j(this, bqfVar.w);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 3);
        bqf bqfVar = this.f9024d;
        if (bqfVar != null && bqfVar.o) {
            View.mergeDrawableStates(onCreateDrawableState, f9021a);
        }
        if (this.f9025e) {
            View.mergeDrawableStates(onCreateDrawableState, f9023c);
        }
        if (this.f9026f) {
            View.mergeDrawableStates(onCreateDrawableState, f9022b);
        }
        return onCreateDrawableState;
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("androidx.cardview.widget.CardView");
        accessibilityEvent.setChecked(this.f9025e);
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("androidx.cardview.widget.CardView");
        bqf bqfVar = this.f9024d;
        accessibilityNodeInfo.setCheckable(bqfVar != null && bqfVar.o);
        accessibilityNodeInfo.setClickable(isClickable());
        accessibilityNodeInfo.setChecked(this.f9025e);
    }

    @Override // g.dur, android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.f9024d.af(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (this.f9027g) {
            bqf bqfVar = this.f9024d;
            if (!bqfVar.z) {
                bqfVar.z = true;
            }
            super.setBackgroundDrawable(drawable);
        }
    }

    public void setBackgroundInternal(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    @Override // g.dur
    public void setCardBackgroundColor(int i) {
        this.f9024d.w.en(ColorStateList.valueOf(i));
    }

    @Override // g.dur
    public void setCardBackgroundColor(ColorStateList colorStateList) {
        this.f9024d.w.en(colorStateList);
    }

    @Override // g.dur
    public void setCardElevation(float f2) {
        super.setCardElevation(f2);
        bqf bqfVar = this.f9024d;
        bqfVar.w.ec(bqfVar.j.getCardElevation());
    }

    public void setCardForegroundColor(ColorStateList colorStateList) {
        ddm ddmVar = this.f9024d.f12007g;
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        ddmVar.en(colorStateList);
    }

    public void setCheckable(boolean z) {
        this.f9024d.o = z;
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (this.f9025e != z) {
            toggle();
        }
    }

    public void setCheckedIcon(Drawable drawable) {
        this.f9024d.am(drawable);
    }

    public void setCheckedIconGravity(int i) {
        bqf bqfVar = this.f9024d;
        if (bqfVar.y != i) {
            bqfVar.y = i;
            MaterialCardView materialCardView = bqfVar.j;
            bqfVar.af(materialCardView.getMeasuredWidth(), materialCardView.getMeasuredHeight());
        }
    }

    public void setCheckedIconMargin(int i) {
        this.f9024d.i = i;
    }

    public void setCheckedIconMarginResource(int i) {
        if (i != -1) {
            this.f9024d.i = getResources().getDimensionPixelSize(i);
        }
    }

    public void setCheckedIconResource(int i) {
        this.f9024d.am(fso.ai(getContext(), i));
    }

    public void setCheckedIconSize(int i) {
        this.f9024d.n = i;
    }

    public void setCheckedIconSizeResource(int i) {
        if (i != 0) {
            this.f9024d.n = getResources().getDimensionPixelSize(i);
        }
    }

    public void setCheckedIconTint(ColorStateList colorStateList) {
        bqf bqfVar = this.f9024d;
        bqfVar.h = colorStateList;
        Drawable drawable = bqfVar.t;
        if (drawable != null) {
            drawable.setTintList(colorStateList);
        }
    }

    @Override // android.view.View
    public void setClickable(boolean z) {
        super.setClickable(z);
        bqf bqfVar = this.f9024d;
        if (bqfVar != null) {
            bqfVar.ac();
        }
    }

    public void setDragged(boolean z) {
        if (this.f9026f != z) {
            this.f9026f = z;
            refreshDrawableState();
            h();
            invalidate();
        }
    }

    @Override // g.dur
    public void setMaxCardElevation(float f2) {
        super.setMaxCardElevation(f2);
        this.f9024d.ai();
    }

    public void setOnCheckedChangeListener(dyl dylVar) {
    }

    @Override // g.dur
    public void setPreventCornerOverlap(boolean z) {
        super.setPreventCornerOverlap(z);
        bqf bqfVar = this.f9024d;
        bqfVar.ai();
        bqfVar.ae();
    }

    public void setProgress(float f2) {
        bqf bqfVar = this.f9024d;
        bqfVar.w.er(f2);
        ddm ddmVar = bqfVar.f12007g;
        if (ddmVar != null) {
            ddmVar.er(f2);
        }
        ddm ddmVar2 = bqfVar.u;
        if (ddmVar2 != null) {
            ddmVar2.er(f2);
        }
    }

    @Override // g.dur
    public void setRadius(float f2) {
        super.setRadius(f2);
        bqf bqfVar = this.f9024d;
        bem r = bqfVar.q.r();
        r.f11390e = new ett(f2);
        r.f11392g = new ett(f2);
        r.l = new ett(f2);
        r.f11386a = new ett(f2);
        bqfVar.ab(r.n());
        bqfVar.r.invalidateSelf();
        if (bqfVar.aj() || (bqfVar.j.getPreventCornerOverlap() && !bqfVar.w.eo())) {
            bqfVar.ae();
        }
        if (bqfVar.aj()) {
            bqfVar.ai();
        }
    }

    public void setRippleColor(ColorStateList colorStateList) {
        bqf bqfVar = this.f9024d;
        bqfVar.f12004d = colorStateList;
        RippleDrawable rippleDrawable = bqfVar.f12005e;
        if (rippleDrawable != null) {
            rippleDrawable.setColor(colorStateList);
        }
    }

    public void setRippleColorResource(int i) {
        ColorStateList bh = eyt.bh(getContext(), i);
        bqf bqfVar = this.f9024d;
        bqfVar.f12004d = bh;
        RippleDrawable rippleDrawable = bqfVar.f12005e;
        if (rippleDrawable != null) {
            rippleDrawable.setColor(bh);
        }
    }

    @Override // g.cbe
    public void setShapeAppearanceModel(cjg cjgVar) {
        setClipToOutline(cjgVar.q(getBoundsAsRectF()));
        this.f9024d.ab(cjgVar);
    }

    public void setStrokeColor(int i) {
        setStrokeColor(ColorStateList.valueOf(i));
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        bqf bqfVar = this.f9024d;
        if (bqfVar.f12006f != colorStateList) {
            bqfVar.f12006f = colorStateList;
            ddm ddmVar = bqfVar.f12007g;
            ddmVar.ds.f14951b = bqfVar.f12003c;
            ddmVar.invalidateSelf();
            dwo dwoVar = ddmVar.ds;
            if (dwoVar.f14956g != colorStateList) {
                dwoVar.f14956g = colorStateList;
                ddmVar.onStateChange(ddmVar.getState());
            }
        }
        invalidate();
    }

    public void setStrokeWidth(int i) {
        bqf bqfVar = this.f9024d;
        if (i != bqfVar.f12003c) {
            bqfVar.f12003c = i;
            ddm ddmVar = bqfVar.f12007g;
            ColorStateList colorStateList = bqfVar.f12006f;
            ddmVar.ds.f14951b = i;
            ddmVar.invalidateSelf();
            dwo dwoVar = ddmVar.ds;
            if (dwoVar.f14956g != colorStateList) {
                dwoVar.f14956g = colorStateList;
                ddmVar.onStateChange(ddmVar.getState());
            }
        }
        invalidate();
    }

    @Override // g.dur
    public void setUseCompatPadding(boolean z) {
        super.setUseCompatPadding(z);
        bqf bqfVar = this.f9024d;
        bqfVar.ai();
        bqfVar.ae();
    }

    @Override // android.widget.Checkable
    public final void toggle() {
        bqf bqfVar = this.f9024d;
        if (bqfVar != null && bqfVar.o && isEnabled()) {
            this.f9025e = !this.f9025e;
            refreshDrawableState();
            h();
            bqfVar.ah(this.f9025e, true);
        }
    }
}

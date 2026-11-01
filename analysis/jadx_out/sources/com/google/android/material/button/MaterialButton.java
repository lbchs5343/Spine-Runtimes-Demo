package com.google.android.material.button;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Layout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.StateSet;
import android.util.TypedValue;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import android.widget.Checkable;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import g.aoi;
import g.aut;
import g.bbj;
import g.bem;
import g.bfc;
import g.bkt;
import g.buj;
import g.buy;
import g.cbe;
import g.ceq;
import g.cjg;
import g.ckd;
import g.czg;
import g.dcq;
import g.ddm;
import g.dsx;
import g.dzm;
import g.egh;
import g.eov;
import g.ett;
import g.eyt;
import g.fr;
import g.fso;
import g.fvi;
import g.ghi;
import g.git;
import g.gs;
import g.gso;
import g.gsw;
import g.kj;
import g.tn;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* loaded from: classes3.dex */
public class MaterialButton extends bbj implements Checkable, cbe {
    public boolean aa;

    /* renamed from: ab, reason: collision with root package name */
    public buy f9009ab;
    public int ac;
    public int ad;
    public gso ae;

    /* renamed from: d, reason: collision with root package name */
    public ColorStateList f9010d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f9011e;

    /* renamed from: f, reason: collision with root package name */
    public int f9012f;

    /* renamed from: g, reason: collision with root package name */
    public PorterDuff.Mode f9013g;
    public boolean h;
    public LinearLayout.LayoutParams i;
    public boolean j;
    public float k;
    public String l;
    public float m;
    public int n;
    public int o;
    public int p;
    public float q;
    public final aut r;
    public eov s;
    public final LinkedHashSet t;
    public int u;
    public int v;
    public int w;
    public int x;
    public Drawable y;
    public int z;

    /* renamed from: a, reason: collision with root package name */
    public static final int[] f9006a = {R.attr.state_checkable};

    /* renamed from: c, reason: collision with root package name */
    public static final int[] f9008c = {R.attr.state_checked};

    /* renamed from: b, reason: collision with root package name */
    public static final bkt f9007b = new bkt(1);

    public static class a extends gsw {
        public static final Parcelable.Creator<a> CREATOR = new com.google.android.material.button.a();
        boolean checked;

        public a(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            if (classLoader == null) {
                getClass().getClassLoader();
            }
            readFromParcel(parcel);
        }

        public a(Parcelable parcelable) {
            super(parcelable);
        }

        private void readFromParcel(Parcel parcel) {
            this.checked = parcel.readInt() == 1;
        }

        @Override // g.gsw, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.checked ? 1 : 0);
        }
    }

    public MaterialButton(Context context, AttributeSet attributeSet) {
        super(egh.w(context, attributeSet, cn.trinea.android.developertools.R.attr.materialButtonStyle, cn.trinea.android.developertools.R.style.Widget_MaterialComponents_Button, new int[]{cn.trinea.android.developertools.R.attr.materialSizeOverlay}), attributeSet, cn.trinea.android.developertools.R.attr.materialButtonStyle);
        this.t = new LinkedHashSet();
        this.j = false;
        this.f9011e = false;
        this.u = -1;
        this.q = -1.0f;
        this.f9012f = -1;
        this.p = -1;
        this.v = -1;
        Context context2 = getContext();
        TypedArray bd = eyt.bd(context2, attributeSet, git.h, cn.trinea.android.developertools.R.attr.materialButtonStyle, cn.trinea.android.developertools.R.style.Widget_MaterialComponents_Button, new int[0]);
        this.z = bd.getDimensionPixelSize(13, 0);
        int i = bd.getInt(16, -1);
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        this.f9013g = ckd.r(i, mode);
        this.f9010d = gs.ai(getContext(), bd, 15);
        this.y = gs.ah(getContext(), bd, 11);
        this.ac = bd.getInteger(12, 1);
        this.o = bd.getDimensionPixelSize(14, 0);
        dsx j = dsx.j(context2, bd, 19);
        cjg l = j != null ? j.l() : cjg.n(context2, attributeSet, cn.trinea.android.developertools.R.attr.materialButtonStyle, cn.trinea.android.developertools.R.style.Widget_MaterialComponents_Button).n();
        boolean z = bd.getBoolean(17, false);
        aut autVar = new aut(this, l);
        this.r = autVar;
        autVar.l = bd.getDimensionPixelOffset(2, 0);
        autVar.v = bd.getDimensionPixelOffset(3, 0);
        autVar.f10887a = bd.getDimensionPixelOffset(4, 0);
        autVar.p = bd.getDimensionPixelOffset(5, 0);
        if (bd.hasValue(9)) {
            int dimensionPixelSize = bd.getDimensionPixelSize(9, -1);
            autVar.r = dimensionPixelSize;
            float f2 = dimensionPixelSize;
            bem r = autVar.q.r();
            r.f11390e = new ett(f2);
            r.f11392g = new ett(f2);
            r.l = new ett(f2);
            r.f11386a = new ett(f2);
            autVar.q = r.n();
            autVar.u = null;
            autVar.x();
            autVar.m = true;
        }
        autVar.f10888b = bd.getDimensionPixelSize(22, 0);
        autVar.f10892f = ckd.r(bd.getInt(8, -1), mode);
        autVar.o = gs.ai(getContext(), bd, 7);
        autVar.f10890d = gs.ai(getContext(), bd, 21);
        autVar.f10889c = gs.ai(getContext(), bd, 18);
        autVar.t = bd.getBoolean(6, false);
        autVar.k = bd.getDimensionPixelSize(10, 0);
        autVar.i = bd.getBoolean(23, true);
        int paddingStart = getPaddingStart();
        int paddingTop = getPaddingTop();
        int paddingEnd = getPaddingEnd();
        int paddingBottom = getPaddingBottom();
        if (bd.hasValue(0)) {
            autVar.w = true;
            setSupportBackgroundTintList(autVar.o);
            setSupportBackgroundTintMode(autVar.f10892f);
        } else {
            autVar.ab();
        }
        setPaddingRelative(paddingStart + autVar.l, paddingTop + autVar.f10887a, paddingEnd + autVar.v, paddingBottom + autVar.p);
        setCheckedInternal(bd.getBoolean(1, false));
        if (j != null) {
            autVar.f10891e = aj();
            if (autVar.u != null) {
                autVar.x();
            }
            autVar.u = j;
            autVar.x();
        }
        setOpticalCenterEnabled(z);
        bd.recycle();
        setCompoundDrawablePadding(this.z);
        ai(this.y != null);
    }

    public static /* synthetic */ void af(MaterialButton materialButton) {
        materialButton.w = materialButton.getOpticalCenterShift();
        materialButton.an();
        materialButton.invalidate();
    }

    private Layout.Alignment getActualTextAlignment() {
        int textAlignment = getTextAlignment();
        return textAlignment != 1 ? (textAlignment == 6 || textAlignment == 3) ? Layout.Alignment.ALIGN_OPPOSITE : textAlignment != 4 ? Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_CENTER : getGravityTextAlignment();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getDisplayedWidthIncrease() {
        return this.m;
    }

    private Layout.Alignment getGravityTextAlignment() {
        int gravity = getGravity() & 8388615;
        return gravity != 1 ? (gravity == 5 || gravity == 8388613) ? Layout.Alignment.ALIGN_OPPOSITE : Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_CENTER;
    }

    private int getOpticalCenterShift() {
        ddm z;
        if (this.aa && this.h && (z = this.r.z(false)) != null) {
            return (int) (z.ea() * 0.11f);
        }
        return 0;
    }

    private int getTextHeight() {
        if (getLineCount() > 1) {
            return getLayout().getHeight();
        }
        TextPaint paint = getPaint();
        String charSequence = getText().toString();
        if (getTransformationMethod() != null) {
            charSequence = getTransformationMethod().getTransformation(charSequence, this).toString();
        }
        Rect rect = new Rect();
        paint.getTextBounds(charSequence, 0, charSequence.length(), rect);
        return Math.min(rect.height(), getLayout().getHeight());
    }

    private int getTextLayoutWidth() {
        int lineCount = getLineCount();
        float f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        for (int i = 0; i < lineCount; i++) {
            f2 = Math.max(f2, getLayout().getLineWidth(i));
        }
        return (int) Math.ceil(f2);
    }

    private void setCheckedInternal(boolean z) {
        aut autVar = this.r;
        if (autVar == null || !autVar.t || this.j == z) {
            return;
        }
        this.j = z;
        refreshDrawableState();
        if (getParent() instanceof MaterialButtonToggleGroup) {
            MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) getParent();
            boolean z2 = this.j;
            if (!materialButtonToggleGroup.f9017d) {
                materialButtonToggleGroup.h(getId(), z2);
            }
        }
        if (this.f9011e) {
            return;
        }
        this.f9011e = true;
        Iterator it = this.t.iterator();
        if (it.hasNext()) {
            throw tn.c(it);
        }
        this.f9011e = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDisplayedWidthIncrease(float f2) {
        MaterialButton materialButton;
        MaterialButton materialButton2;
        if (this.m != f2) {
            this.m = f2;
            an();
            invalidate();
            if (getParent() instanceof czg) {
                czg czgVar = (czg) getParent();
                int i = (int) this.m;
                int indexOfChild = czgVar.indexOfChild(this);
                if (indexOfChild < 0) {
                    return;
                }
                int i2 = indexOfChild - 1;
                while (true) {
                    materialButton = null;
                    if (i2 < 0) {
                        materialButton2 = null;
                        break;
                    } else {
                        if (czgVar.x(i2)) {
                            materialButton2 = (MaterialButton) czgVar.getChildAt(i2);
                            break;
                        }
                        i2--;
                    }
                }
                int childCount = czgVar.getChildCount();
                while (true) {
                    indexOfChild++;
                    if (indexOfChild >= childCount) {
                        break;
                    } else if (czgVar.x(indexOfChild)) {
                        materialButton = (MaterialButton) czgVar.getChildAt(indexOfChild);
                        break;
                    }
                }
                if (materialButton2 == null && materialButton == null) {
                    return;
                }
                if (materialButton2 == null) {
                    materialButton.setDisplayedWidthDecrease(i);
                }
                if (materialButton == null) {
                    materialButton2.setDisplayedWidthDecrease(i);
                }
                if (materialButton2 == null || materialButton == null) {
                    return;
                }
                materialButton2.setDisplayedWidthDecrease(i / 2);
                materialButton.setDisplayedWidthDecrease((i + 1) / 2);
            }
        }
    }

    public final void ai(boolean z) {
        Drawable drawable = this.y;
        if (drawable != null) {
            Drawable mutate = dzm.aw(drawable).mutate();
            this.y = mutate;
            mutate.setTintList(this.f9010d);
            PorterDuff.Mode mode = this.f9013g;
            if (mode != null) {
                this.y.setTintMode(mode);
            }
            int i = this.o;
            if (i == 0) {
                i = this.y.getIntrinsicWidth();
            }
            int i2 = this.o;
            if (i2 == 0) {
                i2 = this.y.getIntrinsicHeight();
            }
            Drawable drawable2 = this.y;
            int i3 = this.n;
            int i4 = this.ad;
            drawable2.setBounds(i3, i4, i + i3, i2 + i4);
            this.y.setVisible(true, z);
        }
        if (z) {
            ao();
            return;
        }
        Drawable[] compoundDrawablesRelative = getCompoundDrawablesRelative();
        Drawable drawable3 = compoundDrawablesRelative[0];
        Drawable drawable4 = compoundDrawablesRelative[1];
        Drawable drawable5 = compoundDrawablesRelative[2];
        int i5 = this.ac;
        if (((i5 == 1 || i5 == 2) && drawable3 != this.y) || (((i5 == 3 || i5 == 4) && drawable5 != this.y) || ((i5 == 16 || i5 == 32) && drawable4 != this.y))) {
            ao();
        }
    }

    public final ceq aj() {
        Context context = getContext();
        TypedValue i = bfc.i(context, cn.trinea.android.developertools.R.attr.motionSpringFastSpatial);
        int[] iArr = git.ah;
        TypedArray obtainStyledAttributes = i == null ? context.obtainStyledAttributes(null, iArr, 0, cn.trinea.android.developertools.R.style.Motion_Material3_Spring_Standard_Fast_Spatial) : context.obtainStyledAttributes(i.resourceId, iArr);
        ceq ceqVar = new ceq();
        try {
            float f2 = obtainStyledAttributes.getFloat(1, Float.MIN_VALUE);
            if (f2 == Float.MIN_VALUE) {
                throw new IllegalArgumentException("A MaterialSpring style must have stiffness value.");
            }
            float f3 = obtainStyledAttributes.getFloat(0, Float.MIN_VALUE);
            if (f3 == Float.MIN_VALUE) {
                throw new IllegalArgumentException("A MaterialSpring style must have a damping value.");
            }
            ceqVar.l(f2);
            ceqVar.k(f3);
            return ceqVar;
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public final boolean ak() {
        aut autVar = this.r;
        return (autVar == null || autVar.w) ? false : true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x0076, code lost:
    
        if (r1 == g.ghi.PIXELS) goto L33;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void al(boolean z) {
        int i;
        if (this.f9009ab == null) {
            return;
        }
        if (this.s == null) {
            eov eovVar = new eov(this, f9007b);
            this.s = eovVar;
            eovVar.h = aj();
        }
        if (this.h) {
            int i2 = this.x;
            buy buyVar = this.f9009ab;
            int[] drawableState = getDrawableState();
            int[][] iArr = buyVar.f12253d;
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = -1;
                if (i4 >= buyVar.f12251b) {
                    i4 = -1;
                    break;
                } else if (StateSet.stateSetMatches(iArr[i4], drawableState)) {
                    break;
                } else {
                    i4++;
                }
            }
            if (i4 < 0) {
                int[] iArr2 = StateSet.WILD_CARD;
                int[][] iArr3 = buyVar.f12253d;
                int i5 = 0;
                while (true) {
                    if (i5 >= buyVar.f12251b) {
                        break;
                    }
                    if (StateSet.stateSetMatches(iArr3[i5], iArr2)) {
                        i = i5;
                        break;
                    }
                    i5++;
                }
                i4 = i;
            }
            fr frVar = (fr) (i4 < 0 ? buyVar.f12252c : buyVar.f12250a[i4]).h;
            int width = getWidth();
            float f2 = frVar.f17270a;
            ghi ghiVar = (ghi) frVar.f17271b;
            if (ghiVar == ghi.PERCENT) {
                f2 *= width;
            }
            i3 = (int) f2;
            this.s.v(Math.min(i2, i3));
            if (z) {
                this.s.u();
            }
        }
    }

    public final void am(int i, int i2) {
        if (this.y == null || getLayout() == null) {
            return;
        }
        int i3 = this.ac;
        if (i3 != 1 && i3 != 2 && i3 != 3 && i3 != 4) {
            if (i3 == 16 || i3 == 32) {
                this.n = 0;
                if (i3 == 16) {
                    this.ad = 0;
                    ai(false);
                    return;
                }
                int i4 = this.o;
                if (i4 == 0) {
                    i4 = this.y.getIntrinsicHeight();
                }
                int max = Math.max(0, (((((i2 - getTextHeight()) - getPaddingTop()) - i4) - this.z) - getPaddingBottom()) / 2);
                if (this.ad != max) {
                    this.ad = max;
                    ai(false);
                    return;
                }
                return;
            }
            return;
        }
        this.ad = 0;
        Layout.Alignment actualTextAlignment = getActualTextAlignment();
        int i5 = this.ac;
        if (i5 == 1 || i5 == 3 || ((i5 == 2 && actualTextAlignment == Layout.Alignment.ALIGN_NORMAL) || (i5 == 4 && actualTextAlignment == Layout.Alignment.ALIGN_OPPOSITE))) {
            this.n = 0;
            ai(false);
            return;
        }
        int i6 = this.o;
        if (i6 == 0) {
            i6 = this.y.getIntrinsicWidth();
        }
        int textLayoutWidth = ((((i - getTextLayoutWidth()) - getPaddingEnd()) - i6) - this.z) - getPaddingStart();
        if (actualTextAlignment == Layout.Alignment.ALIGN_CENTER) {
            textLayoutWidth /= 2;
        }
        if ((getLayoutDirection() == 1) != (this.ac == 4)) {
            textLayoutWidth = -textLayoutWidth;
        }
        if (this.n != textLayoutWidth) {
            this.n = textLayoutWidth;
            ai(false);
        }
    }

    public final void an() {
        int i = (int) (this.m - this.k);
        int i2 = (i / 2) + this.w;
        getLayoutParams().width = (int) (this.q + i);
        setPaddingRelative(this.f9012f + i2, getPaddingTop(), (this.p + i) - i2, getPaddingBottom());
    }

    public final void ao() {
        int i = this.ac;
        if (i == 1 || i == 2) {
            setCompoundDrawablesRelative(this.y, null, null, null);
            return;
        }
        if (i == 3 || i == 4) {
            setCompoundDrawablesRelative(null, null, this.y, null);
        } else if (i == 16 || i == 32) {
            setCompoundDrawablesRelative(null, this.y, null, null);
        }
    }

    @SuppressLint({"KotlinPropertyAccess"})
    public String getA11yClassName() {
        if (!TextUtils.isEmpty(this.l)) {
            return this.l;
        }
        aut autVar = this.r;
        return ((autVar == null || !autVar.t) ? Button.class : CompoundButton.class).getName();
    }

    public int getAllowedWidthDecrease() {
        return this.v;
    }

    @Override // android.view.View
    public ColorStateList getBackgroundTintList() {
        return getSupportBackgroundTintList();
    }

    @Override // android.view.View
    public PorterDuff.Mode getBackgroundTintMode() {
        return getSupportBackgroundTintMode();
    }

    public int getCornerRadius() {
        if (ak()) {
            return this.r.r;
        }
        return 0;
    }

    public ceq getCornerSpringForce() {
        return this.r.f10891e;
    }

    public Drawable getIcon() {
        return this.y;
    }

    public int getIconGravity() {
        return this.ac;
    }

    public int getIconPadding() {
        return this.z;
    }

    public int getIconSize() {
        return this.o;
    }

    public ColorStateList getIconTint() {
        return this.f9010d;
    }

    public PorterDuff.Mode getIconTintMode() {
        return this.f9013g;
    }

    public int getInsetBottom() {
        return this.r.p;
    }

    public int getInsetTop() {
        return this.r.f10887a;
    }

    public ColorStateList getRippleColor() {
        if (ak()) {
            return this.r.f10889c;
        }
        return null;
    }

    public cjg getShapeAppearanceModel() {
        if (ak()) {
            return this.r.q;
        }
        throw new IllegalStateException("Attempted to get ShapeAppearanceModel from a MaterialButton which has an overwritten background.");
    }

    public dsx getStateListShapeAppearanceModel() {
        if (ak()) {
            return this.r.u;
        }
        throw new IllegalStateException("Attempted to get StateListShapeAppearanceModel from a MaterialButton which has an overwritten background.");
    }

    public ColorStateList getStrokeColor() {
        if (ak()) {
            return this.r.f10890d;
        }
        return null;
    }

    public int getStrokeWidth() {
        if (ak()) {
            return this.r.f10888b;
        }
        return 0;
    }

    @Override // g.bbj
    public ColorStateList getSupportBackgroundTintList() {
        return ak() ? this.r.o : super.getSupportBackgroundTintList();
    }

    @Override // g.bbj
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return ak() ? this.r.f10892f : super.getSupportBackgroundTintMode();
    }

    @Override // android.widget.Checkable
    public final boolean isChecked() {
        return this.j;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (ak()) {
            kj.j(this, this.r.z(false));
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 2);
        aut autVar = this.r;
        if (autVar != null && autVar.t) {
            View.mergeDrawableStates(onCreateDrawableState, f9006a);
        }
        if (this.j) {
            View.mergeDrawableStates(onCreateDrawableState, f9008c);
        }
        return onCreateDrawableState;
    }

    @Override // g.bbj, android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(getA11yClassName());
        accessibilityEvent.setChecked(this.j);
    }

    @Override // g.bbj, android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(getA11yClassName());
        aut autVar = this.r;
        accessibilityNodeInfo.setCheckable(autVar != null && autVar.t);
        accessibilityNodeInfo.setChecked(this.j);
        accessibilityNodeInfo.setClickable(isClickable());
    }

    @Override // g.bbj, android.widget.TextView, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        aut autVar;
        super.onLayout(z, i, i2, i3, i4);
        if (Build.VERSION.SDK_INT == 21 && (autVar = this.r) != null) {
            int i6 = i4 - i2;
            int i7 = i3 - i;
            ddm ddmVar = autVar.n;
            if (ddmVar != null) {
                ddmVar.setBounds(autVar.l, autVar.f10887a, i7 - autVar.v, i6 - autVar.p);
            }
        }
        am(getMeasuredWidth(), getMeasuredHeight());
        int i8 = getResources().getConfiguration().orientation;
        if (this.u != i8) {
            this.u = i8;
            this.q = -1.0f;
        }
        if (this.q == -1.0f) {
            this.q = getMeasuredWidth();
            if (this.i == null && (getParent() instanceof czg) && ((czg) getParent()).getButtonSizeChange() != null) {
                this.i = (LinearLayout.LayoutParams) getLayoutParams();
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(this.i);
                layoutParams.width = (int) this.q;
                setLayoutParams(layoutParams);
            }
        }
        boolean z2 = false;
        if (this.v == -1) {
            if (this.y == null) {
                i5 = 0;
            } else {
                int iconPadding = getIconPadding();
                int i9 = this.o;
                if (i9 == 0) {
                    i9 = this.y.getIntrinsicWidth();
                }
                i5 = iconPadding + i9;
            }
            this.v = (getMeasuredWidth() - getTextLayoutWidth()) - i5;
        }
        if (this.f9012f == -1) {
            this.f9012f = getPaddingStart();
        }
        if (this.p == -1) {
            this.p = getPaddingEnd();
        }
        if ((getParent() instanceof czg) && ((czg) getParent()).getOrientation() == 0) {
            z2 = true;
        }
        this.h = z2;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof a)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        a aVar = (a) parcelable;
        super.onRestoreInstanceState(aVar.getSuperState());
        setChecked(aVar.checked);
    }

    @Override // android.widget.TextView, android.view.View
    public final Parcelable onSaveInstanceState() {
        a aVar = new a(super.onSaveInstanceState());
        aVar.checked = this.j;
        return aVar;
    }

    @Override // g.bbj, android.widget.TextView
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        am(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.view.View
    public final boolean performClick() {
        if (isEnabled() && this.r.i) {
            toggle();
        }
        return super.performClick();
    }

    @Override // android.view.View
    public final void refreshDrawableState() {
        super.refreshDrawableState();
        if (this.y != null) {
            if (this.y.setState(getDrawableState())) {
                invalidate();
            }
        }
    }

    public void setA11yClassName(String str) {
        this.l = str;
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        if (!ak()) {
            super.setBackgroundColor(i);
            return;
        }
        aut autVar = this.r;
        if (autVar.z(false) != null) {
            autVar.z(false).setTint(i);
        }
    }

    @Override // g.bbj, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (!ak()) {
            super.setBackgroundDrawable(drawable);
            return;
        }
        if (drawable == getBackground()) {
            getBackground().setState(drawable.getState());
            return;
        }
        aut autVar = this.r;
        autVar.w = true;
        MaterialButton materialButton = autVar.h;
        materialButton.setSupportBackgroundTintList(autVar.o);
        materialButton.setSupportBackgroundTintMode(autVar.f10892f);
        super.setBackgroundDrawable(drawable);
    }

    @Override // g.bbj, android.view.View
    public void setBackgroundResource(int i) {
        setBackgroundDrawable(i != 0 ? fso.ai(getContext(), i) : null);
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        setSupportBackgroundTintList(colorStateList);
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        setSupportBackgroundTintMode(mode);
    }

    public void setCheckable(boolean z) {
        if (ak()) {
            this.r.t = z;
        }
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        setCheckedInternal(z);
    }

    public void setCornerRadius(int i) {
        if (ak()) {
            aut autVar = this.r;
            if (autVar.m && autVar.r == i) {
                return;
            }
            autVar.r = i;
            autVar.m = true;
            float f2 = i;
            bem r = autVar.q.r();
            r.f11390e = new ett(f2);
            r.f11392g = new ett(f2);
            r.l = new ett(f2);
            r.f11386a = new ett(f2);
            autVar.q = r.n();
            autVar.u = null;
            autVar.x();
        }
    }

    public void setCornerRadiusResource(int i) {
        if (ak()) {
            setCornerRadius(getResources().getDimensionPixelSize(i));
        }
    }

    public void setCornerSpringForce(ceq ceqVar) {
        aut autVar = this.r;
        autVar.f10891e = ceqVar;
        if (autVar.u != null) {
            autVar.x();
        }
    }

    public void setDisplayedWidthDecrease(int i) {
        this.k = Math.min(i, this.v);
        an();
        invalidate();
    }

    @Override // android.view.View
    public void setElevation(float f2) {
        super.setElevation(f2);
        if (ak()) {
            this.r.z(false).ec(f2);
        }
    }

    public void setIcon(Drawable drawable) {
        if (this.y != drawable) {
            this.y = drawable;
            ai(true);
            am(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void setIconGravity(int i) {
        if (this.ac != i) {
            this.ac = i;
            am(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void setIconPadding(int i) {
        if (this.z != i) {
            this.z = i;
            setCompoundDrawablePadding(i);
        }
    }

    public void setIconResource(int i) {
        setIcon(i != 0 ? fso.ai(getContext(), i) : null);
    }

    public void setIconSize(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("iconSize cannot be less than 0");
        }
        if (this.o != i) {
            this.o = i;
            ai(true);
        }
    }

    public void setIconTint(ColorStateList colorStateList) {
        if (this.f9010d != colorStateList) {
            this.f9010d = colorStateList;
            ai(false);
        }
    }

    public void setIconTintMode(PorterDuff.Mode mode) {
        if (this.f9013g != mode) {
            this.f9013g = mode;
            ai(false);
        }
    }

    public void setIconTintResource(int i) {
        setIconTint(eyt.bh(getContext(), i));
    }

    public void setInsetBottom(int i) {
        aut autVar = this.r;
        autVar.aa(autVar.f10887a, i);
    }

    public void setInsetTop(int i) {
        aut autVar = this.r;
        autVar.aa(i, autVar.p);
    }

    public void setInternalBackground(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    public void setOnPressedChangeListenerInternal(gso gsoVar) {
        this.ae = gsoVar;
    }

    public void setOpticalCenterEnabled(boolean z) {
        if (this.aa != z) {
            this.aa = z;
            aut autVar = this.r;
            if (z) {
                aoi aoiVar = new aoi(12, this);
                autVar.f10893g = aoiVar;
                ddm z2 = autVar.z(false);
                if (z2 != null) {
                    z2.dc = aoiVar;
                }
            } else {
                autVar.f10893g = null;
                ddm z3 = autVar.z(false);
                if (z3 != null) {
                    z3.dc = null;
                }
            }
            post(new fvi(17, this));
        }
    }

    @Override // android.view.View
    public void setPressed(boolean z) {
        gso gsoVar = this.ae;
        if (gsoVar != null) {
            ((MaterialButtonToggleGroup) ((dcq) gsoVar).f13976f).invalidate();
        }
        super.setPressed(z);
        al(false);
    }

    public void setRippleColor(ColorStateList colorStateList) {
        if (ak()) {
            aut autVar = this.r;
            MaterialButton materialButton = autVar.h;
            if (autVar.f10889c != colorStateList) {
                autVar.f10889c = colorStateList;
                if (materialButton.getBackground() instanceof RippleDrawable) {
                    ((RippleDrawable) materialButton.getBackground()).setColor(buj.ac(colorStateList));
                }
            }
        }
    }

    public void setRippleColorResource(int i) {
        if (ak()) {
            setRippleColor(eyt.bh(getContext(), i));
        }
    }

    @Override // g.cbe
    public void setShapeAppearanceModel(cjg cjgVar) {
        if (!ak()) {
            throw new IllegalStateException("Attempted to set ShapeAppearanceModel on a MaterialButton which has an overwritten background.");
        }
        aut autVar = this.r;
        autVar.q = cjgVar;
        autVar.u = null;
        autVar.x();
    }

    public void setShouldDrawSurfaceColorStroke(boolean z) {
        if (ak()) {
            aut autVar = this.r;
            autVar.s = z;
            autVar.y();
        }
    }

    public void setSizeChange(buy buyVar) {
        if (this.f9009ab != buyVar) {
            this.f9009ab = buyVar;
            al(true);
        }
    }

    public void setStateListShapeAppearanceModel(dsx dsxVar) {
        if (!ak()) {
            throw new IllegalStateException("Attempted to set StateListShapeAppearanceModel on a MaterialButton which has an overwritten background.");
        }
        aut autVar = this.r;
        if (autVar.f10891e == null && dsxVar.k()) {
            autVar.f10891e = aj();
            if (autVar.u != null) {
                autVar.x();
            }
        }
        autVar.u = dsxVar;
        autVar.x();
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        if (ak()) {
            aut autVar = this.r;
            if (autVar.f10890d != colorStateList) {
                autVar.f10890d = colorStateList;
                autVar.y();
            }
        }
    }

    public void setStrokeColorResource(int i) {
        if (ak()) {
            setStrokeColor(eyt.bh(getContext(), i));
        }
    }

    public void setStrokeWidth(int i) {
        if (ak()) {
            aut autVar = this.r;
            if (autVar.f10888b != i) {
                autVar.f10888b = i;
                autVar.y();
            }
        }
    }

    public void setStrokeWidthResource(int i) {
        if (ak()) {
            setStrokeWidth(getResources().getDimensionPixelSize(i));
        }
    }

    @Override // g.bbj
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        if (!ak()) {
            super.setSupportBackgroundTintList(colorStateList);
            return;
        }
        aut autVar = this.r;
        if (autVar.o != colorStateList) {
            autVar.o = colorStateList;
            if (autVar.z(false) != null) {
                autVar.z(false).setTintList(autVar.o);
            }
        }
    }

    @Override // g.bbj
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        if (!ak()) {
            super.setSupportBackgroundTintMode(mode);
            return;
        }
        aut autVar = this.r;
        if (autVar.f10892f != mode) {
            autVar.f10892f = mode;
            if (autVar.z(false) == null || autVar.f10892f == null) {
                return;
            }
            autVar.z(false).setTintMode(autVar.f10892f);
        }
    }

    @Override // android.view.View
    public void setTextAlignment(int i) {
        super.setTextAlignment(i);
        am(getMeasuredWidth(), getMeasuredHeight());
    }

    public void setToggleCheckedStateOnClick(boolean z) {
        this.r.i = z;
    }

    @Override // android.widget.TextView
    public void setWidth(int i) {
        this.q = -1.0f;
        super.setWidth(i);
    }

    public void setWidthChangeMax(int i) {
        if (this.x != i) {
            this.x = i;
            al(true);
        }
    }

    @Override // android.widget.Checkable
    public final void toggle() {
        setChecked(!this.j);
    }
}

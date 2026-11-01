package com.google.android.material.chip;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Checkable;
import android.widget.CompoundButton;
import android.widget.TextView;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.ai;
import g.asw;
import g.awv;
import g.bfc;
import g.bko;
import g.bkr;
import g.bly;
import g.brt;
import g.buj;
import g.cbe;
import g.cdz;
import g.cey;
import g.cjg;
import g.cl;
import g.dlx;
import g.dzm;
import g.eez;
import g.egh;
import g.eyt;
import g.fgx;
import g.fqn;
import g.fso;
import g.gez;
import g.git;
import g.goi;
import g.gqd;
import g.gs;
import g.he;
import g.kj;
import java.lang.ref.WeakReference;
import java.util.Locale;

/* loaded from: classes3.dex */
public class Chip extends fqn implements cdz, cbe, Checkable {

    /* renamed from: d, reason: collision with root package name */
    public View.OnClickListener f9034d;

    /* renamed from: e, reason: collision with root package name */
    public int f9035e;

    /* renamed from: f, reason: collision with root package name */
    public final Rect f9036f;

    /* renamed from: g, reason: collision with root package name */
    public RippleDrawable f9037g;
    public final eez h;
    public int i;
    public boolean j;
    public boolean k;
    public boolean l;
    public final RectF m;
    public boolean n;
    public bko o;
    public final bly p;
    public CompoundButton.OnCheckedChangeListener q;
    public boolean r;
    public CharSequence s;
    public boolean t;
    public InsetDrawable u;

    /* renamed from: c, reason: collision with root package name */
    public static final Rect f9033c = new Rect();

    /* renamed from: b, reason: collision with root package name */
    public static final int[] f9032b = {R.attr.state_selected};

    /* renamed from: a, reason: collision with root package name */
    public static final int[] f9031a = {R.attr.state_checkable};

    public Chip(Context context, AttributeSet attributeSet) {
        super(egh.ax(context, attributeSet, cn.trinea.android.developertools.R.attr.chipStyle, cn.trinea.android.developertools.R.style.Widget_MaterialComponents_Chip_Action), attributeSet, cn.trinea.android.developertools.R.attr.chipStyle);
        int resourceId;
        int resourceId2;
        int resourceId3;
        this.f9036f = new Rect();
        this.m = new RectF();
        this.h = new eez(0, this);
        Context context2 = getContext();
        if (attributeSet != null) {
            attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "background");
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableLeft") != null) {
                throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
            }
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableStart") != null) {
                throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
            }
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableEnd") != null) {
                throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
            }
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableRight") != null) {
                throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
            }
            if (!attributeSet.getAttributeBooleanValue("http://schemas.android.com/apk/res/android", "singleLine", true) || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "lines", 1) != 1 || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "minLines", 1) != 1 || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "maxLines", 1) != 1) {
                throw new UnsupportedOperationException("Chip does not support multi-line text");
            }
            attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "gravity", 8388627);
        }
        bko bkoVar = new bko(context2, attributeSet);
        Context context3 = bkoVar.ai;
        int[] iArr = git.i;
        TypedArray bd = eyt.bd(context3, attributeSet, iArr, cn.trinea.android.developertools.R.attr.chipStyle, cn.trinea.android.developertools.R.style.Widget_MaterialComponents_Chip_Action, new int[0]);
        bkoVar.av = bd.hasValue(37);
        Context context4 = bkoVar.ai;
        ColorStateList ai = gs.ai(context4, bd, 24);
        if (bkoVar.bh != ai) {
            bkoVar.bh = ai;
            bkoVar.onStateChange(bkoVar.getState());
        }
        ColorStateList ai2 = gs.ai(context4, bd, 11);
        if (bkoVar.bc != ai2) {
            bkoVar.bc = ai2;
            bkoVar.onStateChange(bkoVar.getState());
        }
        float dimension = bd.getDimension(19, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        if (bkoVar.af != dimension) {
            bkoVar.af = dimension;
            bkoVar.invalidateSelf();
            bkoVar.cq();
        }
        if (bd.hasValue(12)) {
            bkoVar.cc(bd.getDimension(12, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT));
        }
        bkoVar.ch(gs.ai(context4, bd, 22));
        bkoVar.bs(bd.getDimension(23, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT));
        bkoVar.cf(gs.ai(context4, bd, 36));
        String text = bd.getText(5);
        text = text == null ? "" : text;
        if (!TextUtils.equals(bkoVar.ay, text)) {
            bkoVar.ay = text;
            bkoVar.l.f16770a = true;
            bkoVar.invalidateSelf();
            bkoVar.cq();
        }
        asw aswVar = (!bd.hasValue(0) || (resourceId3 = bd.getResourceId(0, 0)) == 0) ? null : new asw(context4, resourceId3);
        aswVar.f10782f = bd.getDimension(1, aswVar.f10782f);
        int i = Build.VERSION.SDK_INT;
        if (i < 23) {
            aswVar.f10778b = gs.ai(context4, bd, 2);
        }
        bkoVar.bz(aswVar);
        int i2 = bd.getInt(3, 0);
        if (i2 == 1) {
            bkoVar.bd = TextUtils.TruncateAt.START;
        } else if (i2 == 2) {
            bkoVar.bd = TextUtils.TruncateAt.MIDDLE;
        } else if (i2 == 3) {
            bkoVar.bd = TextUtils.TruncateAt.END;
        }
        bkoVar.cl(bd.getBoolean(18, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconVisible") == null) {
            bkoVar.cl(bd.getBoolean(15, false));
        }
        bkoVar.bp(gs.ah(context4, bd, 14));
        if (bd.hasValue(17)) {
            bkoVar.bt(gs.ai(context4, bd, 17));
        }
        bkoVar.ca(bd.getDimension(16, -1.0f));
        bkoVar.cb(bd.getBoolean(31, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconVisible") == null) {
            bkoVar.cb(bd.getBoolean(26, false));
        }
        bkoVar.cg(gs.ah(context4, bd, 25));
        bkoVar.cd(gs.ai(context4, bd, 30));
        bkoVar.ci(bd.getDimension(28, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT));
        bkoVar.bu(bd.getBoolean(6, false));
        bkoVar.ce(bd.getBoolean(10, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconVisible") == null) {
            bkoVar.ce(bd.getBoolean(8, false));
        }
        bkoVar.bo(gs.ah(context4, bd, 7));
        if (bd.hasValue(9)) {
            bkoVar.cp(gs.ai(context4, bd, 9));
        }
        bkoVar.bj = (!bd.hasValue(39) || (resourceId2 = bd.getResourceId(39, 0)) == 0) ? null : gqd.c(context4, resourceId2);
        bkoVar.ak = (!bd.hasValue(33) || (resourceId = bd.getResourceId(33, 0)) == 0) ? null : gqd.c(context4, resourceId);
        float dimension2 = bd.getDimension(21, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        if (bkoVar.bg != dimension2) {
            bkoVar.bg = dimension2;
            bkoVar.invalidateSelf();
            bkoVar.cq();
        }
        bkoVar.co(bd.getDimension(35, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT));
        bkoVar.cs(bd.getDimension(34, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT));
        float dimension3 = bd.getDimension(41, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        if (bkoVar.z != dimension3) {
            bkoVar.z = dimension3;
            bkoVar.invalidateSelf();
            bkoVar.cq();
        }
        float dimension4 = bd.getDimension(40, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        if (bkoVar.q != dimension4) {
            bkoVar.q = dimension4;
            bkoVar.invalidateSelf();
            bkoVar.cq();
        }
        bkoVar.by(bd.getDimension(29, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT));
        bkoVar.cn(bd.getDimension(27, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT));
        float dimension5 = bd.getDimension(13, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        if (bkoVar.w != dimension5) {
            bkoVar.w = dimension5;
            bkoVar.invalidateSelf();
            bkoVar.cq();
        }
        bkoVar.f11746ab = bd.getDimensionPixelSize(4, he.UNDEFINED_ITEM_ID);
        bd.recycle();
        eyt.bn(context2, attributeSet, cn.trinea.android.developertools.R.attr.chipStyle, cn.trinea.android.developertools.R.style.Widget_MaterialComponents_Chip_Action);
        eyt.ap(context2, attributeSet, iArr, cn.trinea.android.developertools.R.attr.chipStyle, cn.trinea.android.developertools.R.style.Widget_MaterialComponents_Chip_Action, new int[0]);
        TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, iArr, cn.trinea.android.developertools.R.attr.chipStyle, cn.trinea.android.developertools.R.style.Widget_MaterialComponents_Chip_Action);
        this.r = obtainStyledAttributes.getBoolean(32, false);
        TypedValue i3 = bfc.i(context2, cn.trinea.android.developertools.R.attr.minTouchTargetSize);
        this.f9035e = (int) Math.ceil(obtainStyledAttributes.getDimension(20, (int) ((i3 == null || i3.type != 5) ? context2.getResources().getDimension(cn.trinea.android.developertools.R.dimen.mtrl_min_touch_target_size) : i3.getDimension(context2.getResources().getDisplayMetrics()))));
        obtainStyledAttributes.recycle();
        setChipDrawable(bkoVar);
        bkoVar.ec(getElevation());
        eyt.bn(context2, attributeSet, cn.trinea.android.developertools.R.attr.chipStyle, cn.trinea.android.developertools.R.style.Widget_MaterialComponents_Chip_Action);
        eyt.ap(context2, attributeSet, iArr, cn.trinea.android.developertools.R.attr.chipStyle, cn.trinea.android.developertools.R.style.Widget_MaterialComponents_Chip_Action, new int[0]);
        TypedArray obtainStyledAttributes2 = context2.obtainStyledAttributes(attributeSet, iArr, cn.trinea.android.developertools.R.attr.chipStyle, cn.trinea.android.developertools.R.style.Widget_MaterialComponents_Chip_Action);
        if (i < 23) {
            setTextColor(gs.ai(context2, obtainStyledAttributes2, 2));
        }
        boolean hasValue = obtainStyledAttributes2.hasValue(37);
        obtainStyledAttributes2.recycle();
        this.p = new bly(this, this);
        w();
        if (!hasValue) {
            setOutlineProvider(new awv(this));
        }
        setChecked(this.j);
        setText(bkoVar.ay);
        setEllipsize(bkoVar.bd);
        ab();
        if (!this.o.f11751g) {
            setLines(1);
            setHorizontallyScrolling(true);
        }
        setGravity(8388627);
        y();
        if (this.r) {
            setMinHeight(this.f9035e);
        }
        this.i = getLayoutDirection();
        super.setOnCheckedChangeListener(new cey(this, 1));
    }

    private RectF getCloseIconTouchBounds() {
        RectF rectF = this.m;
        rectF.setEmpty();
        if (aa() && this.f9034d != null) {
            bko bkoVar = this.o;
            Rect bounds = bkoVar.getBounds();
            rectF.setEmpty();
            if (bkoVar.cm()) {
                float f2 = bkoVar.w + bkoVar.ax + bkoVar.an + bkoVar.ag + bkoVar.q;
                if (dzm.ap(bkoVar) == 0) {
                    float f3 = bounds.right;
                    rectF.right = f3;
                    rectF.left = f3 - f2;
                } else {
                    float f4 = bounds.left;
                    rectF.left = f4;
                    rectF.right = f4 + f2;
                }
                rectF.top = bounds.top;
                rectF.bottom = bounds.bottom;
            }
        }
        return rectF;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Rect getCloseIconTouchBoundsInt() {
        RectF closeIconTouchBounds = getCloseIconTouchBounds();
        int i = (int) closeIconTouchBounds.left;
        int i2 = (int) closeIconTouchBounds.top;
        int i3 = (int) closeIconTouchBounds.right;
        int i4 = (int) closeIconTouchBounds.bottom;
        Rect rect = this.f9036f;
        rect.set(i, i2, i3, i4);
        return rect;
    }

    private asw getTextAppearance() {
        bko bkoVar = this.o;
        if (bkoVar != null) {
            return bkoVar.l.f16773d;
        }
        return null;
    }

    private void setCloseIconHovered(boolean z) {
        if (this.k != z) {
            this.k = z;
            refreshDrawableState();
        }
    }

    private void setCloseIconPressed(boolean z) {
        if (this.l != z) {
            this.l = z;
            refreshDrawableState();
        }
    }

    public final boolean aa() {
        bko bkoVar = this.o;
        if (bkoVar == null) {
            return false;
        }
        Object obj = bkoVar.i;
        if (obj == null) {
            obj = null;
        } else if (obj instanceof ai) {
            obj = ((brt) ((ai) obj)).h;
        }
        return obj != null;
    }

    public final void ab() {
        TextPaint paint = getPaint();
        bko bkoVar = this.o;
        if (bkoVar != null) {
            paint.drawableState = bkoVar.getState();
        }
        asw textAppearance = getTextAppearance();
        if (textAppearance != null) {
            textAppearance.q(getContext(), paint, this.h);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x006c, code lost:
    
        if (r1 != Integer.MIN_VALUE) goto L38;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean dispatchHoverEvent(MotionEvent motionEvent) {
        int i;
        if (!this.n) {
            return super.dispatchHoverEvent(motionEvent);
        }
        bly blyVar = this.p;
        AccessibilityManager accessibilityManager = blyVar.p;
        if (accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled()) {
            int action = motionEvent.getAction();
            if (action == 7 || action == 9) {
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                Chip chip = blyVar.r;
                int i2 = (chip.aa() && chip.getCloseIconTouchBounds().contains(x, y)) ? 1 : 0;
                int i3 = blyVar.w;
                if (i3 != i2) {
                    blyVar.w = i2;
                    blyVar.ah(i2, TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
                    blyVar.ah(i3, 256);
                }
            } else if (action == 10 && (i = blyVar.w) != Integer.MIN_VALUE) {
                if (i != Integer.MIN_VALUE) {
                    blyVar.w = Integer.MIN_VALUE;
                    blyVar.ah(Integer.MIN_VALUE, TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
                    blyVar.ah(i, 256);
                    return true;
                }
            }
        }
        return super.dispatchHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (!this.n) {
            return super.dispatchKeyEvent(keyEvent);
        }
        bly blyVar = this.p;
        blyVar.getClass();
        boolean z = false;
        int i = 0;
        z = false;
        z = false;
        z = false;
        z = false;
        z = false;
        if (keyEvent.getAction() != 1) {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode != 61) {
                int i2 = 66;
                if (keyCode != 66) {
                    switch (keyCode) {
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                            if (keyEvent.hasNoModifiers()) {
                                if (keyCode == 19) {
                                    i2 = 33;
                                } else if (keyCode == 21) {
                                    i2 = 17;
                                } else if (keyCode != 22) {
                                    i2 = 130;
                                }
                                int repeatCount = keyEvent.getRepeatCount() + 1;
                                boolean z2 = false;
                                while (i < repeatCount && blyVar.af(i2, null)) {
                                    i++;
                                    z2 = true;
                                }
                                z = z2;
                                break;
                            }
                            break;
                    }
                }
                if (keyEvent.hasNoModifiers() && keyEvent.getRepeatCount() == 0) {
                    int i3 = blyVar.t;
                    if (i3 != Integer.MIN_VALUE) {
                        Chip chip = blyVar.r;
                        if (i3 == 0) {
                            chip.performClick();
                        } else if (i3 == 1) {
                            chip.playSoundEffect(0);
                            View.OnClickListener onClickListener = chip.f9034d;
                            if (onClickListener != null) {
                                onClickListener.onClick(chip);
                            }
                            if (chip.n) {
                                chip.p.ah(1, 1);
                            }
                        }
                    }
                    z = true;
                }
            } else if (keyEvent.hasNoModifiers()) {
                z = blyVar.af(2, null);
            } else if (keyEvent.hasModifiers(1)) {
                z = blyVar.af(1, null);
            }
        }
        if (!z || blyVar.t == Integer.MIN_VALUE) {
            return super.dispatchKeyEvent(keyEvent);
        }
        return true;
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [boolean, int] */
    @Override // g.fqn, android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        bko bkoVar = this.o;
        boolean z = false;
        int i = 0;
        z = false;
        if (bkoVar != null && bko.bk(bkoVar.i)) {
            bko bkoVar2 = this.o;
            ?? isEnabled = isEnabled();
            int i2 = isEnabled;
            if (this.t) {
                i2 = isEnabled + 1;
            }
            int i3 = i2;
            if (this.k) {
                i3 = i2 + 1;
            }
            int i4 = i3;
            if (this.l) {
                i4 = i3 + 1;
            }
            int i5 = i4;
            if (isChecked()) {
                i5 = i4 + 1;
            }
            int[] iArr = new int[i5];
            if (isEnabled()) {
                iArr[0] = 16842910;
                i = 1;
            }
            if (this.t) {
                iArr[i] = 16842908;
                i++;
            }
            if (this.k) {
                iArr[i] = 16843623;
                i++;
            }
            if (this.l) {
                iArr[i] = 16842919;
                i++;
            }
            if (isChecked()) {
                iArr[i] = 16842913;
            }
            z = bkoVar2.bw(iArr);
        }
        if (z) {
            invalidate();
        }
    }

    @Override // android.widget.CheckBox, android.widget.CompoundButton, android.widget.Button, android.widget.TextView, android.view.View
    public CharSequence getAccessibilityClassName() {
        if (!TextUtils.isEmpty(this.s)) {
            return this.s;
        }
        bko bkoVar = this.o;
        if (bkoVar == null || !bkoVar.f11748d) {
            return isClickable() ? "android.widget.Button" : "android.view.View";
        }
        getParent();
        return "android.widget.Button";
    }

    public Drawable getBackgroundDrawable() {
        InsetDrawable insetDrawable = this.u;
        return insetDrawable == null ? this.o : insetDrawable;
    }

    public Drawable getCheckedIcon() {
        bko bkoVar = this.o;
        if (bkoVar != null) {
            return bkoVar.t;
        }
        return null;
    }

    public ColorStateList getCheckedIconTint() {
        bko bkoVar = this.o;
        if (bkoVar != null) {
            return bkoVar.bf;
        }
        return null;
    }

    public ColorStateList getChipBackgroundColor() {
        bko bkoVar = this.o;
        if (bkoVar != null) {
            return bkoVar.bc;
        }
        return null;
    }

    public float getChipCornerRadius() {
        bko bkoVar = this.o;
        return bkoVar != null ? Math.max(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, bkoVar.bx()) : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    }

    public Drawable getChipDrawable() {
        return this.o;
    }

    public float getChipEndPadding() {
        bko bkoVar = this.o;
        return bkoVar != null ? bkoVar.w : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Drawable getChipIcon() {
        Drawable drawable;
        bko bkoVar = this.o;
        if (bkoVar == null || (drawable = bkoVar.h) == 0) {
            return null;
        }
        return drawable instanceof ai ? ((brt) ((ai) drawable)).h : drawable;
    }

    public float getChipIconSize() {
        bko bkoVar = this.o;
        return bkoVar != null ? bkoVar.aw : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    }

    public ColorStateList getChipIconTint() {
        bko bkoVar = this.o;
        if (bkoVar != null) {
            return bkoVar.f11749e;
        }
        return null;
    }

    public float getChipMinHeight() {
        bko bkoVar = this.o;
        return bkoVar != null ? bkoVar.af : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    }

    public float getChipStartPadding() {
        bko bkoVar = this.o;
        return bkoVar != null ? bkoVar.bg : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    }

    public ColorStateList getChipStrokeColor() {
        bko bkoVar = this.o;
        if (bkoVar != null) {
            return bkoVar.n;
        }
        return null;
    }

    public float getChipStrokeWidth() {
        bko bkoVar = this.o;
        return bkoVar != null ? bkoVar.k : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    }

    @Deprecated
    public CharSequence getChipText() {
        return getText();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Drawable getCloseIcon() {
        Drawable drawable;
        bko bkoVar = this.o;
        if (bkoVar == null || (drawable = bkoVar.i) == 0) {
            return null;
        }
        return drawable instanceof ai ? ((brt) ((ai) drawable)).h : drawable;
    }

    public CharSequence getCloseIconContentDescription() {
        bko bkoVar = this.o;
        if (bkoVar != null) {
            return bkoVar.bb;
        }
        return null;
    }

    public float getCloseIconEndPadding() {
        bko bkoVar = this.o;
        return bkoVar != null ? bkoVar.ax : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    }

    public float getCloseIconSize() {
        bko bkoVar = this.o;
        return bkoVar != null ? bkoVar.an : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    }

    public float getCloseIconStartPadding() {
        bko bkoVar = this.o;
        return bkoVar != null ? bkoVar.ag : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    }

    public ColorStateList getCloseIconTint() {
        bko bkoVar = this.o;
        if (bkoVar != null) {
            return bkoVar.m;
        }
        return null;
    }

    @Override // android.widget.TextView
    public TextUtils.TruncateAt getEllipsize() {
        bko bkoVar = this.o;
        if (bkoVar != null) {
            return bkoVar.bd;
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    public final void getFocusedRect(Rect rect) {
        if (this.n) {
            bly blyVar = this.p;
            if (blyVar.t == 1 || blyVar.q == 1) {
                rect.set(getCloseIconTouchBoundsInt());
                return;
            }
        }
        super.getFocusedRect(rect);
    }

    public gqd getHideMotionSpec() {
        bko bkoVar = this.o;
        if (bkoVar != null) {
            return bkoVar.ak;
        }
        return null;
    }

    public float getIconEndPadding() {
        bko bkoVar = this.o;
        return bkoVar != null ? bkoVar.as : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    }

    public float getIconStartPadding() {
        bko bkoVar = this.o;
        return bkoVar != null ? bkoVar.aa : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    }

    public ColorStateList getRippleColor() {
        bko bkoVar = this.o;
        if (bkoVar != null) {
            return bkoVar.ar;
        }
        return null;
    }

    public cjg getShapeAppearanceModel() {
        return this.o.ds.h;
    }

    public gqd getShowMotionSpec() {
        bko bkoVar = this.o;
        if (bkoVar != null) {
            return bkoVar.bj;
        }
        return null;
    }

    public float getTextEndPadding() {
        bko bkoVar = this.o;
        return bkoVar != null ? bkoVar.q : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    }

    public float getTextStartPadding() {
        bko bkoVar = this.o;
        return bkoVar != null ? bkoVar.z : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        kj.j(this, this.o);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 2);
        if (isChecked()) {
            View.mergeDrawableStates(onCreateDrawableState, f9032b);
        }
        bko bkoVar = this.o;
        if (bkoVar != null && bkoVar.f11748d) {
            View.mergeDrawableStates(onCreateDrawableState, f9031a);
        }
        return onCreateDrawableState;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        if (this.n) {
            bly blyVar = this.p;
            int i2 = blyVar.t;
            if (i2 != Integer.MIN_VALUE) {
                blyVar.ag(i2);
            }
            if (z) {
                blyVar.af(i, rect);
            }
        }
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 7) {
            setCloseIconHovered(getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()));
        } else if (actionMasked == 10) {
            setCloseIconHovered(false);
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(getAccessibilityClassName());
        bko bkoVar = this.o;
        accessibilityNodeInfo.setCheckable(bkoVar != null && bkoVar.f11748d);
        accessibilityNodeInfo.setClickable(isClickable());
        getParent();
    }

    @Override // android.widget.Button, android.widget.TextView, android.view.View
    public final PointerIcon onResolvePointerIcon(MotionEvent motionEvent, int i) {
        return (getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()) && isEnabled()) ? PointerIcon.getSystemIcon(getContext(), 1002) : super.onResolvePointerIcon(motionEvent, i);
    }

    @Override // android.widget.TextView, android.view.View
    public final void onRtlPropertiesChanged(int i) {
        super.onRtlPropertiesChanged(i);
        if (this.i != i) {
            this.i = i;
            y();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x001e, code lost:
    
        if (r0 != 3) goto L28;
     */
    @Override // android.widget.TextView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        int actionMasked = motionEvent.getActionMasked();
        boolean contains = getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY());
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    if (this.l) {
                        if (!contains) {
                            setCloseIconPressed(false);
                        }
                        z = true;
                    }
                }
                z = false;
            } else if (this.l) {
                playSoundEffect(0);
                View.OnClickListener onClickListener = this.f9034d;
                if (onClickListener != null) {
                    onClickListener.onClick(this);
                }
                if (this.n) {
                    this.p.ah(1, 1);
                }
                z = true;
                setCloseIconPressed(false);
            }
            z = false;
            setCloseIconPressed(false);
        } else {
            if (contains) {
                setCloseIconPressed(true);
                z = true;
            }
            z = false;
        }
        return z || super.onTouchEvent(motionEvent);
    }

    public void setAccessibilityClassName(CharSequence charSequence) {
        this.s = charSequence;
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        if (drawable == getBackgroundDrawable() || drawable == this.f9037g) {
            super.setBackground(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
    }

    @Override // g.fqn, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (drawable == getBackgroundDrawable() || drawable == this.f9037g) {
            super.setBackgroundDrawable(drawable);
        }
    }

    @Override // g.fqn, android.view.View
    public void setBackgroundResource(int i) {
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
    }

    public void setCheckable(boolean z) {
        bko bkoVar = this.o;
        if (bkoVar != null) {
            bkoVar.bu(z);
        }
    }

    public void setCheckableResource(int i) {
        bko bkoVar = this.o;
        if (bkoVar != null) {
            bkoVar.bu(bkoVar.ai.getResources().getBoolean(i));
        }
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z) {
        bko bkoVar = this.o;
        if (bkoVar == null) {
            this.j = z;
        } else if (bkoVar.f11748d) {
            super.setChecked(z);
        }
    }

    public void setCheckedIcon(Drawable drawable) {
        bko bkoVar = this.o;
        if (bkoVar != null) {
            bkoVar.bo(drawable);
        }
    }

    @Deprecated
    public void setCheckedIconEnabled(boolean z) {
        setCheckedIconVisible(z);
    }

    @Deprecated
    public void setCheckedIconEnabledResource(int i) {
        setCheckedIconVisible(i);
    }

    public void setCheckedIconResource(int i) {
        bko bkoVar = this.o;
        if (bkoVar != null) {
            bkoVar.bo(fso.ai(bkoVar.ai, i));
        }
    }

    public void setCheckedIconTint(ColorStateList colorStateList) {
        bko bkoVar = this.o;
        if (bkoVar != null) {
            bkoVar.cp(colorStateList);
        }
    }

    public void setCheckedIconTintResource(int i) {
        bko bkoVar = this.o;
        if (bkoVar != null) {
            bkoVar.cp(eyt.bh(bkoVar.ai, i));
        }
    }

    public void setCheckedIconVisible(int i) {
        bko bkoVar = this.o;
        if (bkoVar != null) {
            bkoVar.ce(bkoVar.ai.getResources().getBoolean(i));
        }
    }

    public void setCheckedIconVisible(boolean z) {
        bko bkoVar = this.o;
        if (bkoVar != null) {
            bkoVar.ce(z);
        }
    }

    public void setChipBackgroundColor(ColorStateList colorStateList) {
        bko bkoVar = this.o;
        if (bkoVar == null || bkoVar.bc == colorStateList) {
            return;
        }
        bkoVar.bc = colorStateList;
        bkoVar.onStateChange(bkoVar.getState());
    }

    public void setChipBackgroundColorResource(int i) {
        ColorStateList bh;
        bko bkoVar = this.o;
        if (bkoVar == null || bkoVar.bc == (bh = eyt.bh(bkoVar.ai, i))) {
            return;
        }
        bkoVar.bc = bh;
        bkoVar.onStateChange(bkoVar.getState());
    }

    @Deprecated
    public void setChipCornerRadius(float f2) {
        bko bkoVar = this.o;
        if (bkoVar != null) {
            bkoVar.cc(f2);
        }
    }

    @Deprecated
    public void setChipCornerRadiusResource(int i) {
        bko bkoVar = this.o;
        if (bkoVar != null) {
            bkoVar.cc(bkoVar.ai.getResources().getDimension(i));
        }
    }

    public void setChipDrawable(bko bkoVar) {
        bko bkoVar2 = this.o;
        if (bkoVar2 != bkoVar) {
            if (bkoVar2 != null) {
                bkoVar2.o = new WeakReference(null);
            }
            this.o = bkoVar;
            bkoVar.f11751g = false;
            bkoVar.o = new WeakReference(this);
            z(this.f9035e);
        }
    }

    public void setChipEndPadding(float f2) {
        bko bkoVar = this.o;
        if (bkoVar == null || bkoVar.w == f2) {
            return;
        }
        bkoVar.w = f2;
        bkoVar.invalidateSelf();
        bkoVar.cq();
    }

    public void setChipEndPaddingResource(int i) {
        bko bkoVar = this.o;
        if (bkoVar != null) {
            float dimension = bkoVar.ai.getResources().getDimension(i);
            if (bkoVar.w != dimension) {
                bkoVar.w = dimension;
                bkoVar.invalidateSelf();
                bkoVar.cq();
            }
        }
    }

    public void setChipIcon(Drawable drawable) {
        bko bkoVar = this.o;
        if (bkoVar != null) {
            bkoVar.bp(drawable);
        }
    }

    @Deprecated
    public void setChipIconEnabled(boolean z) {
        setChipIconVisible(z);
    }

    @Deprecated
    public void setChipIconEnabledResource(int i) {
        setChipIconVisible(i);
    }

    public void setChipIconResource(int i) {
        bko bkoVar = this.o;
        if (bkoVar != null) {
            bkoVar.bp(fso.ai(bkoVar.ai, i));
        }
    }

    public void setChipIconSize(float f2) {
        bko bkoVar = this.o;
        if (bkoVar != null) {
            bkoVar.ca(f2);
        }
    }

    public void setChipIconSizeResource(int i) {
        bko bkoVar = this.o;
        if (bkoVar != null) {
            bkoVar.ca(bkoVar.ai.getResources().getDimension(i));
        }
    }

    public void setChipIconTint(ColorStateList colorStateList) {
        bko bkoVar = this.o;
        if (bkoVar != null) {
            bkoVar.bt(colorStateList);
        }
    }

    public void setChipIconTintResource(int i) {
        bko bkoVar = this.o;
        if (bkoVar != null) {
            bkoVar.bt(eyt.bh(bkoVar.ai, i));
        }
    }

    public void setChipIconVisible(int i) {
        bko bkoVar = this.o;
        if (bkoVar != null) {
            bkoVar.cl(bkoVar.ai.getResources().getBoolean(i));
        }
    }

    public void setChipIconVisible(boolean z) {
        bko bkoVar = this.o;
        if (bkoVar != null) {
            bkoVar.cl(z);
        }
    }

    public void setChipMinHeight(float f2) {
        bko bkoVar = this.o;
        if (bkoVar == null || bkoVar.af == f2) {
            return;
        }
        bkoVar.af = f2;
        bkoVar.invalidateSelf();
        bkoVar.cq();
    }

    public void setChipMinHeightResource(int i) {
        bko bkoVar = this.o;
        if (bkoVar != null) {
            float dimension = bkoVar.ai.getResources().getDimension(i);
            if (bkoVar.af != dimension) {
                bkoVar.af = dimension;
                bkoVar.invalidateSelf();
                bkoVar.cq();
            }
        }
    }

    public void setChipStartPadding(float f2) {
        bko bkoVar = this.o;
        if (bkoVar == null || bkoVar.bg == f2) {
            return;
        }
        bkoVar.bg = f2;
        bkoVar.invalidateSelf();
        bkoVar.cq();
    }

    public void setChipStartPaddingResource(int i) {
        bko bkoVar = this.o;
        if (bkoVar != null) {
            float dimension = bkoVar.ai.getResources().getDimension(i);
            if (bkoVar.bg != dimension) {
                bkoVar.bg = dimension;
                bkoVar.invalidateSelf();
                bkoVar.cq();
            }
        }
    }

    public void setChipStrokeColor(ColorStateList colorStateList) {
        bko bkoVar = this.o;
        if (bkoVar != null) {
            bkoVar.ch(colorStateList);
        }
    }

    public void setChipStrokeColorResource(int i) {
        bko bkoVar = this.o;
        if (bkoVar != null) {
            bkoVar.ch(eyt.bh(bkoVar.ai, i));
        }
    }

    public void setChipStrokeWidth(float f2) {
        bko bkoVar = this.o;
        if (bkoVar != null) {
            bkoVar.bs(f2);
        }
    }

    public void setChipStrokeWidthResource(int i) {
        bko bkoVar = this.o;
        if (bkoVar != null) {
            bkoVar.bs(bkoVar.ai.getResources().getDimension(i));
        }
    }

    @Deprecated
    public void setChipText(CharSequence charSequence) {
        setText(charSequence);
    }

    @Deprecated
    public void setChipTextResource(int i) {
        setText(getResources().getString(i));
    }

    public void setCloseIcon(Drawable drawable) {
        bko bkoVar = this.o;
        if (bkoVar != null) {
            bkoVar.cg(drawable);
        }
        w();
    }

    public void setCloseIconContentDescription(CharSequence charSequence) {
        bko bkoVar = this.o;
        if (bkoVar == null || bkoVar.bb == charSequence) {
            return;
        }
        String str = dlx.f14399c;
        dlx dlxVar = TextUtils.getLayoutDirectionFromLocale(Locale.getDefault()) == 1 ? dlx.f14398b : dlx.f14397a;
        dlxVar.getClass();
        gez gezVar = cl.f13046b;
        bkoVar.bb = dlxVar.h(charSequence);
        bkoVar.invalidateSelf();
    }

    @Deprecated
    public void setCloseIconEnabled(boolean z) {
        setCloseIconVisible(z);
    }

    @Deprecated
    public void setCloseIconEnabledResource(int i) {
        setCloseIconVisible(i);
    }

    public void setCloseIconEndPadding(float f2) {
        bko bkoVar = this.o;
        if (bkoVar != null) {
            bkoVar.cn(f2);
        }
    }

    public void setCloseIconEndPaddingResource(int i) {
        bko bkoVar = this.o;
        if (bkoVar != null) {
            bkoVar.cn(bkoVar.ai.getResources().getDimension(i));
        }
    }

    public void setCloseIconResource(int i) {
        bko bkoVar = this.o;
        if (bkoVar != null) {
            bkoVar.cg(fso.ai(bkoVar.ai, i));
        }
        w();
    }

    public void setCloseIconSize(float f2) {
        bko bkoVar = this.o;
        if (bkoVar != null) {
            bkoVar.ci(f2);
        }
    }

    public void setCloseIconSizeResource(int i) {
        bko bkoVar = this.o;
        if (bkoVar != null) {
            bkoVar.ci(bkoVar.ai.getResources().getDimension(i));
        }
    }

    public void setCloseIconStartPadding(float f2) {
        bko bkoVar = this.o;
        if (bkoVar != null) {
            bkoVar.by(f2);
        }
    }

    public void setCloseIconStartPaddingResource(int i) {
        bko bkoVar = this.o;
        if (bkoVar != null) {
            bkoVar.by(bkoVar.ai.getResources().getDimension(i));
        }
    }

    public void setCloseIconTint(ColorStateList colorStateList) {
        bko bkoVar = this.o;
        if (bkoVar != null) {
            bkoVar.cd(colorStateList);
        }
    }

    public void setCloseIconTintResource(int i) {
        bko bkoVar = this.o;
        if (bkoVar != null) {
            bkoVar.cd(eyt.bh(bkoVar.ai, i));
        }
    }

    public void setCloseIconVisible(int i) {
        setCloseIconVisible(getResources().getBoolean(i));
    }

    public void setCloseIconVisible(boolean z) {
        bko bkoVar = this.o;
        if (bkoVar != null) {
            bkoVar.cb(z);
        }
        w();
    }

    @Override // g.fqn, android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
    }

    @Override // g.fqn, android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelativeWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        if (i != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (i3 != 0) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(i, i2, i3, i4);
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        if (i != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (i3 != 0) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesWithIntrinsicBounds(i, i2, i3, i4);
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
        }
        if (drawable3 != null) {
            throw new UnsupportedOperationException("Please set right drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
    }

    @Override // android.view.View
    public void setElevation(float f2) {
        super.setElevation(f2);
        bko bkoVar = this.o;
        if (bkoVar != null) {
            bkoVar.ec(f2);
        }
    }

    @Override // android.widget.TextView
    public void setEllipsize(TextUtils.TruncateAt truncateAt) {
        if (this.o == null) {
            return;
        }
        if (truncateAt == TextUtils.TruncateAt.MARQUEE) {
            throw new UnsupportedOperationException("Text within a chip are not allowed to scroll.");
        }
        super.setEllipsize(truncateAt);
        bko bkoVar = this.o;
        if (bkoVar != null) {
            bkoVar.bd = truncateAt;
        }
    }

    public void setEnsureMinTouchTargetSize(boolean z) {
        this.r = z;
        z(this.f9035e);
    }

    @Override // android.widget.TextView
    public void setGravity(int i) {
        if (i != 8388627) {
            return;
        }
        super.setGravity(i);
    }

    public void setHideMotionSpec(gqd gqdVar) {
        bko bkoVar = this.o;
        if (bkoVar != null) {
            bkoVar.ak = gqdVar;
        }
    }

    public void setHideMotionSpecResource(int i) {
        bko bkoVar = this.o;
        if (bkoVar != null) {
            bkoVar.ak = gqd.c(bkoVar.ai, i);
        }
    }

    public void setIconEndPadding(float f2) {
        bko bkoVar = this.o;
        if (bkoVar != null) {
            bkoVar.cs(f2);
        }
    }

    public void setIconEndPaddingResource(int i) {
        bko bkoVar = this.o;
        if (bkoVar != null) {
            bkoVar.cs(bkoVar.ai.getResources().getDimension(i));
        }
    }

    public void setIconStartPadding(float f2) {
        bko bkoVar = this.o;
        if (bkoVar != null) {
            bkoVar.co(f2);
        }
    }

    public void setIconStartPaddingResource(int i) {
        bko bkoVar = this.o;
        if (bkoVar != null) {
            bkoVar.co(bkoVar.ai.getResources().getDimension(i));
        }
    }

    public void setInternalOnCheckedChangeListener(bkr bkrVar) {
    }

    @Override // android.view.View
    public void setLayoutDirection(int i) {
        if (this.o == null) {
            return;
        }
        super.setLayoutDirection(i);
    }

    @Override // android.widget.TextView
    public void setLines(int i) {
        if (i > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setLines(i);
    }

    @Override // android.widget.TextView
    public void setMaxLines(int i) {
        if (i > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setMaxLines(i);
    }

    @Override // android.widget.TextView
    public void setMaxWidth(int i) {
        super.setMaxWidth(i);
        bko bkoVar = this.o;
        if (bkoVar != null) {
            bkoVar.f11746ab = i;
        }
    }

    @Override // android.widget.TextView
    public void setMinLines(int i) {
        if (i > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setMinLines(i);
    }

    @Override // android.widget.CompoundButton
    public void setOnCheckedChangeListener(CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.q = onCheckedChangeListener;
    }

    public void setOnCloseIconClickListener(View.OnClickListener onClickListener) {
        this.f9034d = onClickListener;
        w();
    }

    public void setRippleColor(ColorStateList colorStateList) {
        bko bkoVar = this.o;
        if (bkoVar != null) {
            bkoVar.cf(colorStateList);
        }
        this.o.getClass();
        x();
    }

    public void setRippleColorResource(int i) {
        bko bkoVar = this.o;
        if (bkoVar != null) {
            bkoVar.cf(eyt.bh(bkoVar.ai, i));
            this.o.getClass();
            x();
        }
    }

    @Override // g.cbe
    public void setShapeAppearanceModel(cjg cjgVar) {
        this.o.setShapeAppearanceModel(cjgVar);
    }

    public void setShowMotionSpec(gqd gqdVar) {
        bko bkoVar = this.o;
        if (bkoVar != null) {
            bkoVar.bj = gqdVar;
        }
    }

    public void setShowMotionSpecResource(int i) {
        bko bkoVar = this.o;
        if (bkoVar != null) {
            bkoVar.bj = gqd.c(bkoVar.ai, i);
        }
    }

    @Override // android.widget.TextView
    public void setSingleLine(boolean z) {
        if (!z) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setSingleLine(z);
    }

    @Override // android.widget.TextView
    public final void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        bko bkoVar = this.o;
        if (bkoVar == null) {
            return;
        }
        if (charSequence == null) {
            charSequence = "";
        }
        super.setText(bkoVar.f11751g ? null : charSequence, bufferType);
        bko bkoVar2 = this.o;
        if (bkoVar2 == null || TextUtils.equals(bkoVar2.ay, charSequence)) {
            return;
        }
        bkoVar2.ay = charSequence;
        bkoVar2.l.f16770a = true;
        bkoVar2.invalidateSelf();
        bkoVar2.cq();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(int i) {
        super.setTextAppearance(i);
        bko bkoVar = this.o;
        if (bkoVar != null) {
            bkoVar.bz(new asw(bkoVar.ai, i));
        }
        ab();
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        bko bkoVar = this.o;
        if (bkoVar != null) {
            bkoVar.bz(new asw(bkoVar.ai, i));
        }
        ab();
    }

    public void setTextAppearance(asw aswVar) {
        bko bkoVar = this.o;
        if (bkoVar != null) {
            bkoVar.bz(aswVar);
        }
        ab();
    }

    public void setTextAppearanceResource(int i) {
        setTextAppearance(getContext(), i);
    }

    public void setTextEndPadding(float f2) {
        bko bkoVar = this.o;
        if (bkoVar == null || bkoVar.q == f2) {
            return;
        }
        bkoVar.q = f2;
        bkoVar.invalidateSelf();
        bkoVar.cq();
    }

    public void setTextEndPaddingResource(int i) {
        bko bkoVar = this.o;
        if (bkoVar != null) {
            float dimension = bkoVar.ai.getResources().getDimension(i);
            if (bkoVar.q != dimension) {
                bkoVar.q = dimension;
                bkoVar.invalidateSelf();
                bkoVar.cq();
            }
        }
    }

    @Override // android.widget.TextView
    public final void setTextSize(int i, float f2) {
        super.setTextSize(i, f2);
        bko bkoVar = this.o;
        if (bkoVar != null) {
            float applyDimension = TypedValue.applyDimension(i, f2, getResources().getDisplayMetrics());
            fgx fgxVar = bkoVar.l;
            asw aswVar = fgxVar.f16773d;
            if (aswVar != null) {
                aswVar.f10782f = applyDimension;
                fgxVar.f16772c.setTextSize(applyDimension);
                bkoVar.cq();
                bkoVar.invalidateSelf();
            }
        }
        ab();
    }

    public void setTextStartPadding(float f2) {
        bko bkoVar = this.o;
        if (bkoVar == null || bkoVar.z == f2) {
            return;
        }
        bkoVar.z = f2;
        bkoVar.invalidateSelf();
        bkoVar.cq();
    }

    public void setTextStartPaddingResource(int i) {
        bko bkoVar = this.o;
        if (bkoVar != null) {
            float dimension = bkoVar.ai.getResources().getDimension(i);
            if (bkoVar.z != dimension) {
                bkoVar.z = dimension;
                bkoVar.invalidateSelf();
                bkoVar.cq();
            }
        }
    }

    public final void w() {
        bko bkoVar;
        if (!aa() || (bkoVar = this.o) == null || !bkoVar.az || this.f9034d == null) {
            goi.ab(this, null);
            this.n = false;
        } else {
            goi.ab(this, this.p);
            this.n = true;
        }
    }

    public final void x() {
        this.f9037g = new RippleDrawable(buj.ac(this.o.ar), getBackgroundDrawable(), null);
        this.o.getClass();
        setBackground(this.f9037g);
        y();
    }

    public final void y() {
        bko bkoVar;
        if (TextUtils.isEmpty(getText()) || (bkoVar = this.o) == null) {
            return;
        }
        int cj = (int) (bkoVar.cj() + bkoVar.w + bkoVar.q);
        bko bkoVar2 = this.o;
        int bn = (int) (bkoVar2.bn() + bkoVar2.bg + bkoVar2.z);
        if (this.u != null) {
            Rect rect = new Rect();
            this.u.getPadding(rect);
            bn += rect.left;
            cj += rect.right;
        }
        setPaddingRelative(bn, getPaddingTop(), cj, getPaddingBottom());
    }

    public final void z(int i) {
        this.f9035e = i;
        if (!this.r) {
            InsetDrawable insetDrawable = this.u;
            if (insetDrawable == null) {
                x();
                return;
            } else {
                if (insetDrawable != null) {
                    this.u = null;
                    setMinWidth(0);
                    setMinHeight((int) getChipMinHeight());
                    x();
                    return;
                }
                return;
            }
        }
        int max = Math.max(0, i - ((int) this.o.af));
        int max2 = Math.max(0, i - this.o.getIntrinsicWidth());
        if (max2 <= 0 && max <= 0) {
            InsetDrawable insetDrawable2 = this.u;
            if (insetDrawable2 == null) {
                x();
                return;
            } else {
                if (insetDrawable2 != null) {
                    this.u = null;
                    setMinWidth(0);
                    setMinHeight((int) getChipMinHeight());
                    x();
                    return;
                }
                return;
            }
        }
        int i2 = max2 > 0 ? max2 / 2 : 0;
        int i3 = max > 0 ? max / 2 : 0;
        if (this.u != null) {
            Rect rect = new Rect();
            this.u.getPadding(rect);
            if (rect.top == i3 && rect.bottom == i3 && rect.left == i2 && rect.right == i2) {
                x();
                return;
            }
        }
        if (getMinHeight() != i) {
            setMinHeight(i);
        }
        if (getMinWidth() != i) {
            setMinWidth(i);
        }
        this.u = new InsetDrawable((Drawable) this.o, i2, i3, i2, i3);
        x();
    }
}

package g;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.AnimatedStateListDrawable;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.autofill.AutofillManager;
import android.widget.CompoundButton;
import cn.trinea.android.developertools.R;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashSet;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes3.dex */
public final class aap extends fqn {

    /* renamed from: e, reason: collision with root package name */
    public boolean f9867e;

    /* renamed from: f, reason: collision with root package name */
    public ColorStateList f9868f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f9869g;
    public ColorStateList h;
    public CompoundButton.OnCheckedChangeListener i;
    public ColorStateList j;
    public boolean k;
    public Drawable l;
    public CharSequence m;
    public CharSequence n;
    public int[] o;
    public final LinkedHashSet p;
    public int q;
    public final age r;
    public boolean s;
    public boolean t;
    public final ahf u;
    public PorterDuff.Mode v;
    public Drawable w;
    public final LinkedHashSet x;

    /* renamed from: a, reason: collision with root package name */
    public static final int[] f9863a = {R.attr.state_indeterminate};

    /* renamed from: b, reason: collision with root package name */
    public static final int[] f9864b = {R.attr.state_error};

    /* renamed from: d, reason: collision with root package name */
    public static final int[][] f9866d = {new int[]{android.R.attr.state_enabled, R.attr.state_error}, new int[]{android.R.attr.state_enabled, android.R.attr.state_checked}, new int[]{android.R.attr.state_enabled, -16842912}, new int[]{-16842910, android.R.attr.state_checked}, new int[]{-16842910, -16842912}};

    /* renamed from: c, reason: collision with root package name */
    public static final int f9865c = Resources.getSystem().getIdentifier("btn_check_material_anim", "drawable", "android");

    /* JADX WARN: Removed duplicated region for block: B:13:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0141  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x00d4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public aap(Context context, AttributeSet attributeSet) {
        super(egh.ax(context, attributeSet, R.attr.checkboxStyle, R.style.Widget_MaterialComponents_CompoundButton_CheckBox), attributeSet, R.attr.checkboxStyle);
        ahf ahfVar;
        int next;
        Context context2;
        TypedArray obtainStyledAttributes;
        int resourceId;
        this.p = new LinkedHashSet();
        this.x = new LinkedHashSet();
        Context context3 = getContext();
        if (Build.VERSION.SDK_INT >= 24) {
            ahfVar = new ahf(context3, 0);
            Resources resources = context3.getResources();
            Resources.Theme theme = context3.getTheme();
            ThreadLocal threadLocal = fbs.f16530a;
            Drawable drawable = resources.getDrawable(R.drawable.mtrl_checkbox_button_checked_unchecked, theme);
            ahfVar.l = drawable;
            drawable.setCallback(ahfVar.f10219f);
            new dnm(ahfVar.l.getConstantState());
        } else {
            int i = ahf.f10214a;
            try {
                XmlResourceParser xml = context3.getResources().getXml(R.drawable.mtrl_checkbox_button_checked_unchecked);
                AttributeSet asAttributeSet = Xml.asAttributeSet(xml);
                do {
                    next = xml.next();
                    if (next == 2) {
                        break;
                    }
                } while (next != 1);
                if (next != 2) {
                    throw new XmlPullParserException("No start tag found");
                }
                Resources resources2 = context3.getResources();
                Resources.Theme theme2 = context3.getTheme();
                ahf ahfVar2 = new ahf(context3, 0);
                ahfVar2.inflate(resources2, xml, asAttributeSet, theme2);
                ahfVar = ahfVar2;
            } catch (IOException e2) {
                Log.e("AnimatedVDCompat", "parser error", e2);
                ahfVar = null;
                this.u = ahfVar;
                this.r = new age(this);
                context2 = getContext();
                this.l = ffb.cb(this);
                this.j = getSuperButtonTintList();
                setSupportButtonTintList(null);
                eyt.bn(context2, attributeSet, R.attr.checkboxStyle, R.style.Widget_MaterialComponents_CompoundButton_CheckBox);
                int[] iArr = git.ac;
                eyt.ap(context2, attributeSet, iArr, R.attr.checkboxStyle, R.style.Widget_MaterialComponents_CompoundButton_CheckBox, new int[0]);
                obtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, iArr, R.attr.checkboxStyle, R.style.Widget_MaterialComponents_CompoundButton_CheckBox);
                dzh dzhVar = new dzh(context2, obtainStyledAttributes);
                this.w = dzhVar.o(2);
                if (this.l != null) {
                    resourceId = obtainStyledAttributes.getResourceId(0, 0);
                    int resourceId2 = obtainStyledAttributes.getResourceId(1, 0);
                    if (resourceId == f9865c) {
                        super.setButtonDrawable((Drawable) null);
                        this.l = fso.ai(context2, R.drawable.mtrl_checkbox_button);
                        this.t = true;
                        if (this.w == null) {
                        }
                    }
                }
                this.f9868f = gs.ar(context2, dzhVar, 3);
                this.v = ckd.r(obtainStyledAttributes.getInt(4, -1), PorterDuff.Mode.SRC_IN);
                this.f9867e = obtainStyledAttributes.getBoolean(10, false);
                this.s = obtainStyledAttributes.getBoolean(6, true);
                this.k = obtainStyledAttributes.getBoolean(9, false);
                this.m = obtainStyledAttributes.getText(8);
                if (obtainStyledAttributes.hasValue(7)) {
                }
                dzhVar.af();
                y();
            } catch (XmlPullParserException e3) {
                Log.e("AnimatedVDCompat", "parser error", e3);
                ahfVar = null;
                this.u = ahfVar;
                this.r = new age(this);
                context2 = getContext();
                this.l = ffb.cb(this);
                this.j = getSuperButtonTintList();
                setSupportButtonTintList(null);
                eyt.bn(context2, attributeSet, R.attr.checkboxStyle, R.style.Widget_MaterialComponents_CompoundButton_CheckBox);
                int[] iArr2 = git.ac;
                eyt.ap(context2, attributeSet, iArr2, R.attr.checkboxStyle, R.style.Widget_MaterialComponents_CompoundButton_CheckBox, new int[0]);
                obtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, iArr2, R.attr.checkboxStyle, R.style.Widget_MaterialComponents_CompoundButton_CheckBox);
                dzh dzhVar2 = new dzh(context2, obtainStyledAttributes);
                this.w = dzhVar2.o(2);
                if (this.l != null) {
                }
                this.f9868f = gs.ar(context2, dzhVar2, 3);
                this.v = ckd.r(obtainStyledAttributes.getInt(4, -1), PorterDuff.Mode.SRC_IN);
                this.f9867e = obtainStyledAttributes.getBoolean(10, false);
                this.s = obtainStyledAttributes.getBoolean(6, true);
                this.k = obtainStyledAttributes.getBoolean(9, false);
                this.m = obtainStyledAttributes.getText(8);
                if (obtainStyledAttributes.hasValue(7)) {
                }
                dzhVar2.af();
                y();
            }
        }
        this.u = ahfVar;
        this.r = new age(this);
        context2 = getContext();
        this.l = ffb.cb(this);
        this.j = getSuperButtonTintList();
        setSupportButtonTintList(null);
        eyt.bn(context2, attributeSet, R.attr.checkboxStyle, R.style.Widget_MaterialComponents_CompoundButton_CheckBox);
        int[] iArr22 = git.ac;
        eyt.ap(context2, attributeSet, iArr22, R.attr.checkboxStyle, R.style.Widget_MaterialComponents_CompoundButton_CheckBox, new int[0]);
        obtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, iArr22, R.attr.checkboxStyle, R.style.Widget_MaterialComponents_CompoundButton_CheckBox);
        dzh dzhVar22 = new dzh(context2, obtainStyledAttributes);
        this.w = dzhVar22.o(2);
        if (this.l != null && bfc.d(context2, R.attr.isMaterial3Theme, false)) {
            resourceId = obtainStyledAttributes.getResourceId(0, 0);
            int resourceId22 = obtainStyledAttributes.getResourceId(1, 0);
            if (resourceId == f9865c && resourceId22 == 0) {
                super.setButtonDrawable((Drawable) null);
                this.l = fso.ai(context2, R.drawable.mtrl_checkbox_button);
                this.t = true;
                if (this.w == null) {
                    this.w = fso.ai(context2, R.drawable.mtrl_checkbox_button_icon);
                }
            }
        }
        this.f9868f = gs.ar(context2, dzhVar22, 3);
        this.v = ckd.r(obtainStyledAttributes.getInt(4, -1), PorterDuff.Mode.SRC_IN);
        this.f9867e = obtainStyledAttributes.getBoolean(10, false);
        this.s = obtainStyledAttributes.getBoolean(6, true);
        this.k = obtainStyledAttributes.getBoolean(9, false);
        this.m = obtainStyledAttributes.getText(8);
        if (obtainStyledAttributes.hasValue(7)) {
            setCheckedState(obtainStyledAttributes.getInt(7, 0));
        }
        dzhVar22.af();
        y();
    }

    private String getButtonStateDescription() {
        int i = this.q;
        return i == 1 ? getResources().getString(R.string.mtrl_checkbox_state_description_checked) : i == 0 ? getResources().getString(R.string.mtrl_checkbox_state_description_unchecked) : getResources().getString(R.string.mtrl_checkbox_state_description_indeterminate);
    }

    private ColorStateList getMaterialThemeColorsTintList() {
        if (this.h == null) {
            int bs = eyt.bs(R.attr.colorControlActivated, this);
            int bs2 = eyt.bs(R.attr.colorError, this);
            int bs3 = eyt.bs(R.attr.colorSurface, this);
            int bs4 = eyt.bs(R.attr.colorOnSurface, this);
            this.h = new ColorStateList(f9866d, new int[]{eyt.ac(bs3, 1.0f, bs2), eyt.ac(bs3, 1.0f, bs), eyt.ac(bs3, 0.54f, bs4), eyt.ac(bs3, 0.38f, bs4), eyt.ac(bs3, 0.38f, bs4)});
        }
        return this.h;
    }

    private ColorStateList getSuperButtonTintList() {
        ColorStateList colorStateList = this.j;
        return colorStateList != null ? colorStateList : super.getButtonTintList() != null ? super.getButtonTintList() : getSupportButtonTintList();
    }

    @Override // android.widget.CompoundButton
    public Drawable getButtonDrawable() {
        return this.l;
    }

    public Drawable getButtonIconDrawable() {
        return this.w;
    }

    public ColorStateList getButtonIconTintList() {
        return this.f9868f;
    }

    public PorterDuff.Mode getButtonIconTintMode() {
        return this.v;
    }

    @Override // android.widget.CompoundButton
    public ColorStateList getButtonTintList() {
        return this.j;
    }

    public int getCheckedState() {
        return this.q;
    }

    public CharSequence getErrorAccessibilityLabel() {
        return this.m;
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public final boolean isChecked() {
        return this.q == 1;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f9867e && this.j == null && this.f9868f == null) {
            setUseMaterialThemeColors(true);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i) {
        int[] copyOf;
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 2);
        if (getCheckedState() == 2) {
            View.mergeDrawableStates(onCreateDrawableState, f9863a);
        }
        if (this.k) {
            View.mergeDrawableStates(onCreateDrawableState, f9864b);
        }
        int i2 = 0;
        while (true) {
            if (i2 >= onCreateDrawableState.length) {
                copyOf = Arrays.copyOf(onCreateDrawableState, onCreateDrawableState.length + 1);
                copyOf[onCreateDrawableState.length] = 16842912;
                break;
            }
            int i3 = onCreateDrawableState[i2];
            if (i3 == 16842912) {
                copyOf = onCreateDrawableState;
                break;
            }
            if (i3 == 0) {
                copyOf = (int[]) onCreateDrawableState.clone();
                copyOf[i2] = 16842912;
                break;
            }
            i2++;
        }
        this.o = copyOf;
        return onCreateDrawableState;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void onDraw(Canvas canvas) {
        Drawable cb;
        if (!this.s || !TextUtils.isEmpty(getText()) || (cb = ffb.cb(this)) == null) {
            super.onDraw(canvas);
            return;
        }
        int width = ((getWidth() - cb.getIntrinsicWidth()) / 2) * (getLayoutDirection() == 1 ? -1 : 1);
        int save = canvas.save();
        canvas.translate(width, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        super.onDraw(canvas);
        canvas.restoreToCount(save);
        if (getBackground() != null) {
            Rect bounds = cb.getBounds();
            getBackground().setHotspotBounds(bounds.left + width, bounds.top, bounds.right + width, bounds.bottom);
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        if (accessibilityNodeInfo != null && this.k) {
            accessibilityNodeInfo.setText(((Object) accessibilityNodeInfo.getText()) + ", " + ((Object) this.m));
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof ekt)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        ekt ektVar = (ekt) parcelable;
        super.onRestoreInstanceState(ektVar.getSuperState());
        setCheckedState(ektVar.checkedState);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final Parcelable onSaveInstanceState() {
        ekt ektVar = new ekt(super.onSaveInstanceState());
        ektVar.checkedState = getCheckedState();
        return ektVar;
    }

    @Override // g.fqn, android.widget.CompoundButton
    public void setButtonDrawable(int i) {
        setButtonDrawable(fso.ai(getContext(), i));
    }

    @Override // g.fqn, android.widget.CompoundButton
    public void setButtonDrawable(Drawable drawable) {
        this.l = drawable;
        this.t = false;
        y();
    }

    public void setButtonIconDrawable(Drawable drawable) {
        this.w = drawable;
        y();
    }

    public void setButtonIconDrawableResource(int i) {
        setButtonIconDrawable(fso.ai(getContext(), i));
    }

    public void setButtonIconTintList(ColorStateList colorStateList) {
        if (this.f9868f == colorStateList) {
            return;
        }
        this.f9868f = colorStateList;
        y();
    }

    public void setButtonIconTintMode(PorterDuff.Mode mode) {
        if (this.v == mode) {
            return;
        }
        this.v = mode;
        y();
    }

    @Override // android.widget.CompoundButton
    public void setButtonTintList(ColorStateList colorStateList) {
        if (this.j == colorStateList) {
            return;
        }
        this.j = colorStateList;
        y();
    }

    @Override // android.widget.CompoundButton
    public void setButtonTintMode(PorterDuff.Mode mode) {
        setSupportButtonTintMode(mode);
        y();
    }

    public void setCenterIfNoTextEnabled(boolean z) {
        this.s = z;
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z) {
        setCheckedState(z ? 1 : 0);
    }

    public void setCheckedState(int i) {
        AutofillManager autofillManager;
        CompoundButton.OnCheckedChangeListener onCheckedChangeListener;
        if (this.q != i) {
            this.q = i;
            super.setChecked(i == 1);
            refreshDrawableState();
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 30 && this.n == null) {
                super.setStateDescription(getButtonStateDescription());
            }
            if (this.f9869g) {
                return;
            }
            this.f9869g = true;
            LinkedHashSet linkedHashSet = this.x;
            if (linkedHashSet != null) {
                Iterator it = linkedHashSet.iterator();
                if (it.hasNext()) {
                    throw tn.c(it);
                }
            }
            if (this.q != 2 && (onCheckedChangeListener = this.i) != null) {
                onCheckedChangeListener.onCheckedChanged(this, isChecked());
            }
            if (i2 >= 26 && (autofillManager = (AutofillManager) getContext().getSystemService(AutofillManager.class)) != null) {
                autofillManager.notifyValueChanged(this);
            }
            this.f9869g = false;
        }
    }

    public void setErrorAccessibilityLabel(CharSequence charSequence) {
        this.m = charSequence;
    }

    public void setErrorAccessibilityLabelResource(int i) {
        setErrorAccessibilityLabel(i != 0 ? getResources().getText(i) : null);
    }

    public void setErrorShown(boolean z) {
        if (this.k == z) {
            return;
        }
        this.k = z;
        refreshDrawableState();
        Iterator it = this.p.iterator();
        if (it.hasNext()) {
            throw tn.c(it);
        }
    }

    @Override // android.widget.CompoundButton
    public void setOnCheckedChangeListener(CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.i = onCheckedChangeListener;
    }

    @Override // android.widget.CompoundButton, android.view.View
    public void setStateDescription(CharSequence charSequence) {
        this.n = charSequence;
        if (charSequence != null) {
            super.setStateDescription(charSequence);
        } else {
            if (Build.VERSION.SDK_INT < 30 || charSequence != null) {
                return;
            }
            super.setStateDescription(getButtonStateDescription());
        }
    }

    public void setUseMaterialThemeColors(boolean z) {
        this.f9867e = z;
        if (z) {
            setButtonTintList(getMaterialThemeColorsTintList());
        } else {
            setButtonTintList(null);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public final void toggle() {
        setChecked(!isChecked());
    }

    public final void y() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        cod codVar;
        this.l = acr.ac(this.l, this.j, getButtonTintMode());
        this.w = acr.ac(this.w, this.f9868f, this.v);
        if (this.t) {
            ahf ahfVar = this.u;
            if (ahfVar != null) {
                fbi fbiVar = ahfVar.f10218e;
                Drawable drawable = ahfVar.l;
                age ageVar = this.r;
                if (drawable != null) {
                    AnimatedVectorDrawable animatedVectorDrawable = (AnimatedVectorDrawable) drawable;
                    if (ageVar.f18748a == null) {
                        ageVar.f18748a = new bpk(ageVar);
                    }
                    animatedVectorDrawable.unregisterAnimationCallback(ageVar.f18748a);
                }
                ArrayList arrayList = ahfVar.f10217d;
                if (arrayList != null && ageVar != null) {
                    arrayList.remove(ageVar);
                    if (ahfVar.f10217d.size() == 0 && (codVar = ahfVar.f10216c) != null) {
                        fbiVar.f16511c.removeListener(codVar);
                        ahfVar.f10216c = null;
                    }
                }
                Drawable drawable2 = ahfVar.l;
                if (drawable2 != null) {
                    AnimatedVectorDrawable animatedVectorDrawable2 = (AnimatedVectorDrawable) drawable2;
                    if (ageVar.f18748a == null) {
                        ageVar.f18748a = new bpk(ageVar);
                    }
                    animatedVectorDrawable2.registerAnimationCallback(ageVar.f18748a);
                } else if (ageVar != null) {
                    if (ahfVar.f10217d == null) {
                        ahfVar.f10217d = new ArrayList();
                    }
                    if (!ahfVar.f10217d.contains(ageVar)) {
                        ahfVar.f10217d.add(ageVar);
                        if (ahfVar.f10216c == null) {
                            ahfVar.f10216c = new cod(1, ahfVar);
                        }
                        fbiVar.f16511c.addListener(ahfVar.f10216c);
                    }
                }
            }
            if (Build.VERSION.SDK_INT >= 24) {
                Drawable drawable3 = this.l;
                if ((drawable3 instanceof AnimatedStateListDrawable) && ahfVar != null) {
                    ((AnimatedStateListDrawable) drawable3).addTransition(R.id.checked, R.id.unchecked, ahfVar, false);
                    ((AnimatedStateListDrawable) this.l).addTransition(R.id.indeterminate, R.id.unchecked, ahfVar, false);
                }
            }
        }
        Drawable drawable4 = this.l;
        if (drawable4 != null && (colorStateList2 = this.j) != null) {
            drawable4.setTintList(colorStateList2);
        }
        Drawable drawable5 = this.w;
        if (drawable5 != null && (colorStateList = this.f9868f) != null) {
            drawable5.setTintList(colorStateList);
        }
        Drawable drawable6 = this.l;
        Drawable drawable7 = this.w;
        if (drawable6 == null) {
            drawable6 = drawable7;
        } else if (drawable7 != null) {
            int intrinsicWidth = drawable7.getIntrinsicWidth();
            if (intrinsicWidth == -1) {
                intrinsicWidth = drawable6.getIntrinsicWidth();
            }
            int intrinsicHeight = drawable7.getIntrinsicHeight();
            if (intrinsicHeight == -1) {
                intrinsicHeight = drawable6.getIntrinsicHeight();
            }
            if (intrinsicWidth > drawable6.getIntrinsicWidth() || intrinsicHeight > drawable6.getIntrinsicHeight()) {
                float f2 = intrinsicWidth / intrinsicHeight;
                if (f2 >= drawable6.getIntrinsicWidth() / drawable6.getIntrinsicHeight()) {
                    int intrinsicWidth2 = drawable6.getIntrinsicWidth();
                    intrinsicHeight = (int) (intrinsicWidth2 / f2);
                    intrinsicWidth = intrinsicWidth2;
                } else {
                    intrinsicHeight = drawable6.getIntrinsicHeight();
                    intrinsicWidth = (int) (f2 * intrinsicHeight);
                }
            }
            if (Build.VERSION.SDK_INT >= 23) {
                LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{drawable6, drawable7});
                layerDrawable.setLayerSize(1, intrinsicWidth, intrinsicHeight);
                layerDrawable.setLayerGravity(1, 17);
                drawable6 = layerDrawable;
            } else {
                LayerDrawable layerDrawable2 = new LayerDrawable(new Drawable[]{drawable6, drawable7});
                int max = Math.max((drawable6.getIntrinsicWidth() - intrinsicWidth) / 2, 0);
                int max2 = Math.max((drawable6.getIntrinsicHeight() - intrinsicHeight) / 2, 0);
                layerDrawable2.setLayerInset(1, max, max2, max, max2);
                drawable6 = layerDrawable2;
            }
        }
        super.setButtonDrawable(drawable6);
        refreshDrawableState();
    }
}

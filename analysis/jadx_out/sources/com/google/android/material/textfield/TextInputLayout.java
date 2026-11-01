package com.google.android.material.textfield;

import android.R;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStructure;
import android.view.ViewTreeObserver;
import android.view.animation.LinearInterpolator;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.google.android.material.internal.CheckableImageButton;
import g.afo;
import g.afr;
import g.aoi;
import g.aor;
import g.aqr;
import g.asw;
import g.atq;
import g.awf;
import g.baj;
import g.bco;
import g.bem;
import g.bfc;
import g.bff;
import g.bmr;
import g.cfl;
import g.chp;
import g.cjg;
import g.cl;
import g.cla;
import g.cux;
import g.dcn;
import g.ddm;
import g.dgj;
import g.dlx;
import g.dwo;
import g.dyd;
import g.dyn;
import g.dzh;
import g.dzm;
import g.edd;
import g.eeu;
import g.eev;
import g.egh;
import g.ehw;
import g.emu;
import g.ett;
import g.eyt;
import g.faa;
import g.fc;
import g.fso;
import g.fvi;
import g.fym;
import g.gez;
import g.git;
import g.gjn;
import g.gkz;
import g.glf;
import g.goi;
import g.gov;
import g.gs;
import g.gsw;
import g.gtk;
import g.hdh;
import g.is;
import g.kj;
import g.ud;
import g.zl;
import g.zq;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Locale;

/* loaded from: classes3.dex */
public class TextInputLayout extends LinearLayout implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a, reason: collision with root package name */
    public static final int[][] f9076a = {new int[]{R.attr.state_pressed}, new int[0]};
    public boolean aa;

    /* renamed from: ab, reason: collision with root package name */
    public final baj f9077ab;
    public AppCompatTextView ac;
    public boolean ad;
    public CharSequence ae;
    public int af;
    public final int ag;
    public CharSequence ah;
    public int ai;
    public int aj;
    public EditText ak;
    public int al;
    public ColorStateList am;
    public int an;
    public int ao;
    public boolean ap;
    public final FrameLayout aq;
    public boolean ar;
    public StateListDrawable as;
    public ColorStateList at;
    public ud au;
    public int av;
    public int aw;
    public int ax;
    public int ay;
    public int az;

    /* renamed from: b, reason: collision with root package name */
    public boolean f9078b;
    public boolean ba;
    public ColorStateList bb;
    public boolean bc;
    public final Rect bd;
    public int be;
    public int bf;
    public final emu bg;
    public boolean bh;
    public int bi;
    public cjg bj;
    public ColorStateList bk;
    public ColorDrawable bl;
    public ColorStateList bm;
    public int bn;
    public ColorStateList bo;
    public boolean bp;
    public int bq;
    public final RectF br;
    public ddm bs;
    public int bt;
    public int bu;
    public CharSequence bv;
    public final LinkedHashSet bw;
    public Drawable bx;
    public ddm by;
    public int bz;

    /* renamed from: c, reason: collision with root package name */
    public Typeface f9079c;
    public ColorDrawable ca;

    /* renamed from: d, reason: collision with root package name */
    public int f9080d;

    /* renamed from: e, reason: collision with root package name */
    public int f9081e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f9082f;

    /* renamed from: g, reason: collision with root package name */
    public int f9083g;
    public AppCompatTextView h;
    public boolean i;
    public int j;
    public ValueAnimator k;
    public ddm l;
    public int m;
    public final hdh n;
    public ud o;
    public ColorStateList p;
    public final Rect q;
    public dcn r;
    public ddm s;
    public boolean t;
    public int u;
    public final int v;
    public ColorStateList w;
    public final zq x;
    public int y;
    public boolean z;

    public static class a extends gsw {
        public static final Parcelable.Creator<a> CREATOR = new com.google.android.material.textfield.a();
        CharSequence error;
        boolean isEndIconChecked;

        public a(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.error = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.isEndIconChecked = parcel.readInt() == 1;
        }

        public a(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "TextInputLayout.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " error=" + ((Object) this.error) + "}";
        }

        @Override // g.gsw, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            TextUtils.writeToParcel(this.error, parcel, i);
            parcel.writeInt(this.isEndIconChecked ? 1 : 0);
        }
    }

    public TextInputLayout(Context context, AttributeSet attributeSet) {
        super(egh.ax(context, attributeSet, cn.trinea.android.developertools.R.attr.textInputStyle, cn.trinea.android.developertools.R.style.Widget_Design_TextInputLayout), attributeSet, cn.trinea.android.developertools.R.attr.textInputStyle);
        this.m = -1;
        this.f9080d = -1;
        this.bf = -1;
        this.u = -1;
        this.f9077ab = new baj(this);
        this.r = new bco(3);
        this.q = new Rect();
        this.bd = new Rect();
        this.br = new RectF();
        this.bw = new LinkedHashSet();
        hdh hdhVar = new hdh(this);
        this.n = hdhVar;
        this.bc = false;
        Context context2 = getContext();
        setOrientation(1);
        setWillNotDraw(false);
        setAddStatesFromChildren(true);
        FrameLayout frameLayout = new FrameLayout(context2);
        this.aq = frameLayout;
        frameLayout.setAddStatesFromChildren(true);
        LinearInterpolator linearInterpolator = gtk.f18727b;
        hdhVar.ao = linearInterpolator;
        hdhVar.bx(false);
        hdhVar.k = linearInterpolator;
        hdhVar.bx(false);
        if (hdhVar.bi != 8388659) {
            hdhVar.bi = 8388659;
            hdhVar.bx(false);
        }
        eyt.bn(context2, attributeSet, cn.trinea.android.developertools.R.attr.textInputStyle, cn.trinea.android.developertools.R.style.Widget_Design_TextInputLayout);
        int[] iArr = git.af;
        eyt.ap(context2, attributeSet, iArr, cn.trinea.android.developertools.R.attr.textInputStyle, cn.trinea.android.developertools.R.style.Widget_Design_TextInputLayout, 22, 20, 40, 45, 50);
        TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, iArr, cn.trinea.android.developertools.R.attr.textInputStyle, cn.trinea.android.developertools.R.style.Widget_Design_TextInputLayout);
        dzh dzhVar = new dzh(context2, obtainStyledAttributes);
        emu emuVar = new emu(this, dzhVar);
        this.bg = emuVar;
        this.t = obtainStyledAttributes.getBoolean(48, true);
        setHint(obtainStyledAttributes.getText(4));
        this.f9082f = obtainStyledAttributes.getBoolean(47, true);
        this.ap = obtainStyledAttributes.getBoolean(42, true);
        if (obtainStyledAttributes.hasValue(6)) {
            setMinEms(obtainStyledAttributes.getInt(6, -1));
        } else if (obtainStyledAttributes.hasValue(3)) {
            setMinWidth(obtainStyledAttributes.getDimensionPixelSize(3, -1));
        }
        if (obtainStyledAttributes.hasValue(5)) {
            setMaxEms(obtainStyledAttributes.getInt(5, -1));
        } else if (obtainStyledAttributes.hasValue(2)) {
            setMaxWidth(obtainStyledAttributes.getDimensionPixelSize(2, -1));
        }
        this.bj = cjg.n(context2, attributeSet, cn.trinea.android.developertools.R.attr.textInputStyle, cn.trinea.android.developertools.R.style.Widget_Design_TextInputLayout).n();
        this.v = context2.getResources().getDimensionPixelOffset(cn.trinea.android.developertools.R.dimen.mtrl_textinput_box_label_cutout_padding);
        this.f9081e = obtainStyledAttributes.getDimensionPixelOffset(9, 0);
        this.ag = getResources().getDimensionPixelSize(cn.trinea.android.developertools.R.dimen.m3_multiline_hint_filled_text_extra_space);
        this.an = obtainStyledAttributes.getDimensionPixelSize(16, context2.getResources().getDimensionPixelSize(cn.trinea.android.developertools.R.dimen.mtrl_textinput_box_stroke_width_default));
        this.bq = obtainStyledAttributes.getDimensionPixelSize(17, context2.getResources().getDimensionPixelSize(cn.trinea.android.developertools.R.dimen.mtrl_textinput_box_stroke_width_focused));
        this.bn = this.an;
        float dimension = obtainStyledAttributes.getDimension(13, -1.0f);
        float dimension2 = obtainStyledAttributes.getDimension(12, -1.0f);
        float dimension3 = obtainStyledAttributes.getDimension(10, -1.0f);
        float dimension4 = obtainStyledAttributes.getDimension(11, -1.0f);
        bem r = this.bj.r();
        if (dimension >= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            r.f11390e = new ett(dimension);
        }
        if (dimension2 >= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            r.f11392g = new ett(dimension2);
        }
        if (dimension3 >= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            r.l = new ett(dimension3);
        }
        if (dimension4 >= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            r.f11386a = new ett(dimension4);
        }
        this.bj = r.n();
        ColorStateList ar = gs.ar(context2, dzhVar, 7);
        if (ar != null) {
            int defaultColor = ar.getDefaultColor();
            this.aj = defaultColor;
            this.ay = defaultColor;
            if (ar.isStateful()) {
                this.ax = ar.getColorForState(new int[]{-16842910}, -1);
                this.be = ar.getColorForState(new int[]{R.attr.state_focused, R.attr.state_enabled}, -1);
                this.aw = ar.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, -1);
            } else {
                this.be = this.aj;
                ColorStateList bh = eyt.bh(context2, cn.trinea.android.developertools.R.color.mtrl_filled_background_color);
                this.ax = bh.getColorForState(new int[]{-16842910}, -1);
                this.aw = bh.getColorForState(new int[]{R.attr.state_hovered}, -1);
            }
        } else {
            this.ay = 0;
            this.aj = 0;
            this.ax = 0;
            this.be = 0;
            this.aw = 0;
        }
        if (obtainStyledAttributes.hasValue(1)) {
            ColorStateList aa = dzhVar.aa(1);
            this.bk = aa;
            this.am = aa;
        }
        ColorStateList ar2 = gs.ar(context2, dzhVar, 14);
        this.av = obtainStyledAttributes.getColor(14, 0);
        this.al = eyt.af(context2, cn.trinea.android.developertools.R.color.mtrl_textinput_default_box_stroke_color);
        this.bz = eyt.af(context2, cn.trinea.android.developertools.R.color.mtrl_textinput_disabled_color);
        this.y = eyt.af(context2, cn.trinea.android.developertools.R.color.mtrl_textinput_hovered_box_stroke_color);
        if (ar2 != null) {
            setBoxStrokeColorStateList(ar2);
        }
        if (obtainStyledAttributes.hasValue(15)) {
            setBoxStrokeErrorColor(gs.ar(context2, dzhVar, 15));
        }
        if (obtainStyledAttributes.getResourceId(50, -1) != -1) {
            setHintTextAppearance(obtainStyledAttributes.getResourceId(50, 0));
        }
        this.bb = dzhVar.aa(24);
        this.w = dzhVar.aa(25);
        int resourceId = obtainStyledAttributes.getResourceId(40, 0);
        CharSequence text = obtainStyledAttributes.getText(35);
        int i = obtainStyledAttributes.getInt(34, 1);
        boolean z = obtainStyledAttributes.getBoolean(36, false);
        int resourceId2 = obtainStyledAttributes.getResourceId(45, 0);
        boolean z2 = obtainStyledAttributes.getBoolean(44, false);
        CharSequence text2 = obtainStyledAttributes.getText(43);
        int resourceId3 = obtainStyledAttributes.getResourceId(58, 0);
        CharSequence text3 = obtainStyledAttributes.getText(57);
        boolean z3 = obtainStyledAttributes.getBoolean(18, false);
        setCounterMaxLength(obtainStyledAttributes.getInt(19, -1));
        this.ao = obtainStyledAttributes.getResourceId(22, 0);
        this.bt = obtainStyledAttributes.getResourceId(20, 0);
        setBoxBackgroundMode(obtainStyledAttributes.getInt(8, 0));
        setErrorContentDescription(text);
        setErrorAccessibilityLiveRegion(i);
        setCounterOverflowTextAppearance(this.bt);
        setHelperTextTextAppearance(resourceId2);
        setErrorTextAppearance(resourceId);
        setCounterTextAppearance(this.ao);
        setPlaceholderText(text3);
        setPlaceholderTextAppearance(resourceId3);
        if (obtainStyledAttributes.hasValue(41)) {
            setErrorTextColor(dzhVar.aa(41));
        }
        if (obtainStyledAttributes.hasValue(46)) {
            setHelperTextColor(dzhVar.aa(46));
        }
        if (obtainStyledAttributes.hasValue(51)) {
            setHintTextColor(dzhVar.aa(51));
        }
        if (obtainStyledAttributes.hasValue(23)) {
            setCounterTextColor(dzhVar.aa(23));
        }
        if (obtainStyledAttributes.hasValue(21)) {
            setCounterOverflowTextColor(dzhVar.aa(21));
        }
        if (obtainStyledAttributes.hasValue(59)) {
            setPlaceholderTextColor(dzhVar.aa(59));
        }
        zq zqVar = new zq(this, dzhVar);
        this.x = zqVar;
        boolean z4 = obtainStyledAttributes.getBoolean(0, true);
        setHintMaxLines(obtainStyledAttributes.getInt(49, 1));
        dzhVar.af();
        setImportantForAccessibility(2);
        if (Build.VERSION.SDK_INT >= 26) {
            setImportantForAutofill(1);
        }
        frameLayout.addView(emuVar);
        frameLayout.addView(zqVar);
        addView(frameLayout);
        setEnabled(z4);
        setHelperTextEnabled(z2);
        setErrorEnabled(z);
        setCounterEnabled(z3);
        setHelperText(text2);
    }

    public static void cb(ViewGroup viewGroup, boolean z) {
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            childAt.setEnabled(z);
            if (childAt instanceof ViewGroup) {
                cb((ViewGroup) childAt, z);
            }
        }
    }

    private Drawable getEditTextBoxBackground() {
        EditText editText = this.ak;
        if (!(editText instanceof AutoCompleteTextView) || dyd.aw(editText)) {
            return this.by;
        }
        int bs = eyt.bs(cn.trinea.android.developertools.R.attr.colorControlHighlight, this.ak);
        int i = this.f9083g;
        int[][] iArr = f9076a;
        if (i != 2) {
            if (i != 1) {
                return null;
            }
            ddm ddmVar = this.by;
            int i2 = this.ay;
            return new RippleDrawable(new ColorStateList(iArr, new int[]{eyt.ac(bs, 0.1f, i2), i2}), ddmVar, ddmVar);
        }
        Context context = getContext();
        ddm ddmVar2 = this.by;
        TypedValue ad = bfc.ad(context, cn.trinea.android.developertools.R.attr.colorSurface, "TextInputLayout");
        int i3 = ad.resourceId;
        int af = i3 != 0 ? eyt.af(context, i3) : ad.data;
        ddm ddmVar3 = new ddm(ddmVar2.ds.h);
        int ac = eyt.ac(bs, 0.1f, af);
        ddmVar3.en(new ColorStateList(iArr, new int[]{ac, 0}));
        ddmVar3.setTint(af);
        ColorStateList colorStateList = new ColorStateList(iArr, new int[]{ac, af});
        ddm ddmVar4 = new ddm(ddmVar2.ds.h);
        ddmVar4.setTint(-1);
        return new LayerDrawable(new Drawable[]{new RippleDrawable(colorStateList, ddmVar3, ddmVar4), ddmVar2});
    }

    private Drawable getOrCreateFilledDropDownMenuBackground() {
        if (this.as == null) {
            StateListDrawable stateListDrawable = new StateListDrawable();
            this.as = stateListDrawable;
            stateListDrawable.addState(new int[]{R.attr.state_above_anchor}, getOrCreateOutlinedDropDownMenuBackground());
            this.as.addState(new int[0], cd(false));
        }
        return this.as;
    }

    private Drawable getOrCreateOutlinedDropDownMenuBackground() {
        if (this.bs == null) {
            this.bs = cd(true);
        }
        return this.bs;
    }

    private void setEditText(EditText editText) {
        if (this.ak != null) {
            throw new IllegalArgumentException("We already have an EditText, can only have one");
        }
        getEndIconMode();
        this.ak = editText;
        int i = this.m;
        if (i != -1) {
            setMinEms(i);
        } else {
            setMinWidth(this.bf);
        }
        int i2 = this.f9080d;
        if (i2 != -1) {
            setMaxEms(i2);
        } else {
            setMaxWidth(this.u);
        }
        this.aa = false;
        ce();
        setTextInputAccessibilityDelegate(new dgj(this));
        Typeface typeface = this.ak.getTypeface();
        hdh hdhVar = this.n;
        hdhVar.bp(typeface);
        float textSize = this.ak.getTextSize();
        if (hdhVar.f19269c != textSize) {
            hdhVar.f19269c = textSize;
            hdhVar.bx(false);
        }
        float letterSpacing = this.ak.getLetterSpacing();
        if (hdhVar.ac != letterSpacing) {
            hdhVar.ac = letterSpacing;
            hdhVar.bx(false);
        }
        int gravity = this.ak.getGravity();
        int i3 = (gravity & (-113)) | 48;
        if (hdhVar.bi != i3) {
            hdhVar.bi = i3;
            hdhVar.bx(false);
        }
        if (hdhVar.ah != gravity) {
            hdhVar.ah = gravity;
            hdhVar.bx(false);
        }
        this.ai = editText.getMinimumHeight();
        this.ak.addTextChangedListener(new gov(this, editText));
        if (this.am == null) {
            this.am = this.ak.getHintTextColors();
        }
        if (this.t) {
            if (TextUtils.isEmpty(this.ah)) {
                CharSequence hint = this.ak.getHint();
                this.bv = hint;
                setHint(hint);
                this.ak.setHint((CharSequence) null);
            }
            this.ad = true;
        }
        if (Build.VERSION.SDK_INT >= 29) {
            da();
        }
        if (this.h != null) {
            cr(this.ak.getText());
        }
        cw();
        this.f9077ab.ai();
        this.bg.bringToFront();
        zq zqVar = this.x;
        zqVar.bringToFront();
        Iterator it = this.bw.iterator();
        while (it.hasNext()) {
            ((is) it.next()).b(this);
        }
        zqVar.ae();
        if (!isEnabled()) {
            editText.setEnabled(false);
        }
        co(false, true);
    }

    private void setHintInternal(CharSequence charSequence) {
        if (TextUtils.equals(charSequence, this.ah)) {
            return;
        }
        this.ah = charSequence;
        hdh hdhVar = this.n;
        if (charSequence == null || !TextUtils.equals(hdhVar.r, charSequence)) {
            hdhVar.r = charSequence;
            hdhVar.aa = null;
            hdhVar.bx(false);
        }
        if (this.f9078b) {
            return;
        }
        cj();
    }

    private void setPlaceholderTextEnabled(boolean z) {
        if (this.i == z) {
            return;
        }
        if (z) {
            AppCompatTextView appCompatTextView = this.ac;
            if (appCompatTextView != null) {
                this.aq.addView(appCompatTextView);
                this.ac.setVisibility(0);
            }
        } else {
            AppCompatTextView appCompatTextView2 = this.ac;
            if (appCompatTextView2 != null) {
                appCompatTextView2.setVisibility(8);
            }
            this.ac = null;
        }
        this.i = z;
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (!(view instanceof EditText)) {
            super.addView(view, i, layoutParams);
            return;
        }
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(layoutParams);
        layoutParams2.gravity = (layoutParams2.gravity & (-113)) | 16;
        FrameLayout frameLayout = this.aq;
        frameLayout.addView(view, layoutParams2);
        frameLayout.setLayoutParams(layoutParams);
        cn();
        setEditText((EditText) view);
    }

    public final void cc() {
        AppCompatTextView appCompatTextView;
        EditText editText;
        EditText editText2;
        if (this.by == null || this.f9083g == 0) {
            return;
        }
        boolean z = false;
        boolean z2 = isFocused() || ((editText2 = this.ak) != null && editText2.hasFocus());
        if (isHovered() || ((editText = this.ak) != null && editText.isHovered())) {
            z = true;
        }
        if (!isEnabled()) {
            this.j = this.bz;
        } else if (cf()) {
            if (this.bo != null) {
                cg(z2, z);
            } else {
                this.j = getErrorCurrentTextColors();
            }
        } else if (!this.bh || (appCompatTextView = this.h) == null) {
            if (z2) {
                this.j = this.av;
            } else if (z) {
                this.j = this.y;
            } else {
                this.j = this.al;
            }
        } else if (this.bo != null) {
            cg(z2, z);
        } else {
            this.j = appCompatTextView.getCurrentTextColor();
        }
        if (Build.VERSION.SDK_INT >= 29) {
            da();
        }
        zq zqVar = this.x;
        TextInputLayout textInputLayout = zqVar.p;
        CheckableImageButton checkableImageButton = zqVar.f20409d;
        TextInputLayout textInputLayout2 = zqVar.p;
        zqVar.aa();
        cux.w(textInputLayout2, zqVar.h, zqVar.m);
        cux.w(textInputLayout2, checkableImageButton, zqVar.j);
        if (zqVar.ag() instanceof chp) {
            if (!textInputLayout.cf() || checkableImageButton.getDrawable() == null) {
                cux.aq(textInputLayout, checkableImageButton, zqVar.j, zqVar.i);
            } else {
                Drawable mutate = dzm.aw(checkableImageButton.getDrawable()).mutate();
                mutate.setTint(textInputLayout.getErrorCurrentTextColors());
                checkableImageButton.setImageDrawable(mutate);
            }
        }
        emu emuVar = this.bg;
        cux.w(emuVar.f15821g, emuVar.f15819e, emuVar.f15820f);
        if (this.f9083g == 2) {
            int i = this.bn;
            if (z2 && isEnabled()) {
                this.bn = this.bq;
            } else {
                this.bn = this.an;
            }
            if (this.bn != i && cz() && !this.f9078b) {
                if (cz()) {
                    ((fym) this.by).c(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                }
                cj();
            }
        }
        if (this.f9083g == 1) {
            if (!isEnabled()) {
                this.ay = this.ax;
            } else if (z && !z2) {
                this.ay = this.aw;
            } else if (z2) {
                this.ay = this.be;
            } else {
                this.ay = this.aj;
            }
        }
        cx();
    }

    public final ddm cd(boolean z) {
        float dimensionPixelOffset = getResources().getDimensionPixelOffset(cn.trinea.android.developertools.R.dimen.mtrl_shape_corner_size_small_component);
        float f2 = z ? dimensionPixelOffset : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        EditText editText = this.ak;
        float popupElevation = editText instanceof faa ? ((faa) editText).getPopupElevation() : getResources().getDimensionPixelOffset(cn.trinea.android.developertools.R.dimen.m3_comp_outlined_autocomplete_menu_container_elevation);
        int dimensionPixelOffset2 = getResources().getDimensionPixelOffset(cn.trinea.android.developertools.R.dimen.mtrl_exposed_dropdown_menu_popup_vertical_padding);
        eeu eeuVar = new eeu();
        eeu eeuVar2 = new eeu();
        eeu eeuVar3 = new eeu();
        eeu eeuVar4 = new eeu();
        int i = 0;
        bmr bmrVar = new bmr(i);
        bmr bmrVar2 = new bmr(i);
        bmr bmrVar3 = new bmr(i);
        bmr bmrVar4 = new bmr(i);
        ett ettVar = new ett(f2);
        ett ettVar2 = new ett(f2);
        ett ettVar3 = new ett(dimensionPixelOffset);
        ett ettVar4 = new ett(dimensionPixelOffset);
        cjg cjgVar = new cjg();
        cjgVar.f12976f = eeuVar;
        cjgVar.i = eeuVar2;
        cjgVar.k = eeuVar3;
        cjgVar.f12973c = eeuVar4;
        cjgVar.f12975e = ettVar;
        cjgVar.f12977g = ettVar2;
        cjgVar.l = ettVar4;
        cjgVar.f12971a = ettVar3;
        cjgVar.h = bmrVar;
        cjgVar.j = bmrVar2;
        cjgVar.f12972b = bmrVar3;
        cjgVar.f12974d = bmrVar4;
        EditText editText2 = this.ak;
        ColorStateList dropDownBackgroundTintList = editText2 instanceof faa ? ((faa) editText2).getDropDownBackgroundTintList() : null;
        Context context = getContext();
        if (dropDownBackgroundTintList == null) {
            Paint paint = ddm.cu;
            TypedValue ad = bfc.ad(context, cn.trinea.android.developertools.R.attr.colorSurface, ddm.class.getSimpleName());
            int i2 = ad.resourceId;
            dropDownBackgroundTintList = ColorStateList.valueOf(i2 != 0 ? eyt.af(context, i2) : ad.data);
        }
        ddm ddmVar = new ddm();
        ddmVar.ef(context);
        ddmVar.en(dropDownBackgroundTintList);
        ddmVar.ec(popupElevation);
        ddmVar.setShapeAppearanceModel(cjgVar);
        dwo dwoVar = ddmVar.ds;
        if (dwoVar.f14950a == null) {
            dwoVar.f14950a = new Rect();
        }
        ddmVar.ds.f14950a.set(0, dimensionPixelOffset2, 0, dimensionPixelOffset2);
        ddmVar.invalidateSelf();
        return ddmVar;
    }

    public final void ce() {
        int i = this.f9083g;
        if (i == 0) {
            this.by = null;
            this.s = null;
            this.l = null;
        } else if (i == 1) {
            this.by = new ddm(this.bj);
            this.s = new ddm();
            this.l = new ddm();
        } else {
            if (i != 2) {
                throw new IllegalArgumentException(awf.x(new StringBuilder(), this.f9083g, " is illegal; only @BoxBackgroundMode constants are supported."));
            }
            if (!this.t || (this.by instanceof fym)) {
                this.by = new ddm(this.bj);
            } else {
                cjg cjgVar = this.bj;
                int i2 = fym.f17641a;
                if (cjgVar == null) {
                    cjgVar = new cjg();
                }
                ehw ehwVar = new ehw(cjgVar, new RectF());
                fym fymVar = new fym(ehwVar);
                fymVar.f17642b = ehwVar;
                this.by = fymVar;
            }
            this.s = null;
            this.l = null;
        }
        cm();
        cc();
        if (this.f9083g == 1) {
            if (getContext().getResources().getConfiguration().fontScale >= 2.0f) {
                this.f9081e = getResources().getDimensionPixelSize(cn.trinea.android.developertools.R.dimen.material_font_2_0_box_collapsed_padding_top);
            } else if (gs.m(getContext())) {
                this.f9081e = getResources().getDimensionPixelSize(cn.trinea.android.developertools.R.dimen.material_font_1_3_box_collapsed_padding_top);
            }
        }
        cl();
        if (this.f9083g != 0) {
            cn();
        }
        EditText editText = this.ak;
        if (editText instanceof AutoCompleteTextView) {
            AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) editText;
            if (autoCompleteTextView.getDropDownBackground() == null) {
                int i3 = this.f9083g;
                if (i3 == 2) {
                    autoCompleteTextView.setDropDownBackgroundDrawable(getOrCreateOutlinedDropDownMenuBackground());
                } else if (i3 == 1) {
                    autoCompleteTextView.setDropDownBackgroundDrawable(getOrCreateFilledDropDownMenuBackground());
                }
            }
        }
    }

    public final boolean cf() {
        baj bajVar = this.f9077ab;
        return (bajVar.f11166d != 1 || bajVar.f11163ab == null || TextUtils.isEmpty(bajVar.q)) ? false : true;
    }

    public final void cg(boolean z, boolean z2) {
        int defaultColor = this.bo.getDefaultColor();
        int colorForState = this.bo.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, defaultColor);
        int colorForState2 = this.bo.getColorForState(new int[]{R.attr.state_activated, R.attr.state_enabled}, defaultColor);
        if (z) {
            this.j = colorForState2;
        } else if (z2) {
            this.j = colorForState;
        } else {
            this.j = defaultColor;
        }
    }

    public final void ch(AppCompatTextView appCompatTextView, int i) {
        try {
            bff.g(appCompatTextView, i);
        } catch (Exception unused) {
        }
        if (Build.VERSION.SDK_INT >= 23) {
            if (appCompatTextView.getTextColors().getDefaultColor() != -65281) {
                return;
            }
            bff.g(appCompatTextView, 2131952179);
            appCompatTextView.setTextColor(eyt.af(getContext(), cn.trinea.android.developertools.R.color.design_error));
        }
    }

    public final Rect ci(Rect rect) {
        if (this.ak == null) {
            throw new IllegalStateException();
        }
        boolean z = getLayoutDirection() == 1;
        int i = rect.bottom;
        Rect rect2 = this.bd;
        rect2.bottom = i;
        int i2 = this.f9083g;
        if (i2 == 1) {
            rect2.left = cs(rect.left, z);
            rect2.top = rect.top + this.f9081e;
            rect2.right = cu(rect.right, z);
            return rect2;
        }
        if (i2 != 2) {
            rect2.left = cs(rect.left, z);
            rect2.top = getPaddingTop();
            rect2.right = cu(rect.right, z);
            return rect2;
        }
        rect2.left = this.ak.getPaddingLeft() + rect.left;
        rect2.top = rect.top - ck();
        rect2.right = rect.right - this.ak.getPaddingRight();
        return rect2;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00cc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void cj() {
        float f2;
        float f3;
        float f4;
        RectF rectF;
        float f5;
        int i;
        float f6;
        int i2;
        if (cz()) {
            int width = this.ak.getWidth();
            int gravity = this.ak.getGravity();
            hdh hdhVar = this.n;
            boolean by = hdhVar.by(hdhVar.r);
            hdhVar.y = by;
            Rect rect = hdhVar.q;
            if (gravity != 17 && (gravity & 7) != 1) {
                if ((gravity & 8388613) == 8388613 || (gravity & 5) == 5) {
                    if (by) {
                        i2 = rect.left;
                        f4 = i2;
                    } else {
                        f2 = rect.right;
                        f3 = hdhVar.an;
                    }
                } else if (by) {
                    f2 = rect.right;
                    f3 = hdhVar.an;
                } else {
                    i2 = rect.left;
                    f4 = i2;
                }
                float max = Math.max(f4, rect.left);
                rectF = this.br;
                rectF.left = max;
                rectF.top = rect.top;
                if (gravity != 17 || (gravity & 7) == 1) {
                    f5 = (width / 2.0f) + (hdhVar.an / 2.0f);
                } else if ((gravity & 8388613) == 8388613 || (gravity & 5) == 5) {
                    if (hdhVar.y) {
                        f6 = hdhVar.an;
                        f5 = f6 + max;
                    } else {
                        i = rect.right;
                        f5 = i;
                    }
                } else if (hdhVar.y) {
                    i = rect.right;
                    f5 = i;
                } else {
                    f6 = hdhVar.an;
                    f5 = f6 + max;
                }
                rectF.right = Math.min(f5, rect.right);
                rectF.bottom = hdhVar.bt() + rect.top;
                if (hdhVar.be != null && !hdhVar.bo()) {
                    StaticLayout staticLayout = hdhVar.be;
                    float lineWidth = (hdhVar.aq / hdhVar.f19269c) * staticLayout.getLineWidth(staticLayout.getLineCount() - 1);
                    if (hdhVar.y) {
                        rectF.right = rectF.left + lineWidth;
                    } else {
                        rectF.left = rectF.right - lineWidth;
                    }
                }
                if (rectF.width() > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT || rectF.height() <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                }
                float f7 = rectF.left;
                float f8 = this.v;
                rectF.left = f7 - f8;
                rectF.right += f8;
                rectF.offset(-getPaddingLeft(), ((-getPaddingTop()) - (rectF.height() / 2.0f)) + this.bn);
                rectF.top = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                fym fymVar = (fym) this.by;
                fymVar.getClass();
                fymVar.c(rectF.left, rectF.top, rectF.right, rectF.bottom);
                return;
            }
            f2 = width / 2.0f;
            f3 = hdhVar.an / 2.0f;
            f4 = f2 - f3;
            float max2 = Math.max(f4, rect.left);
            rectF = this.br;
            rectF.left = max2;
            rectF.top = rect.top;
            if (gravity != 17) {
            }
            f5 = (width / 2.0f) + (hdhVar.an / 2.0f);
            rectF.right = Math.min(f5, rect.right);
            rectF.bottom = hdhVar.bt() + rect.top;
            if (hdhVar.be != null) {
                StaticLayout staticLayout2 = hdhVar.be;
                float lineWidth2 = (hdhVar.aq / hdhVar.f19269c) * staticLayout2.getLineWidth(staticLayout2.getLineCount() - 1);
                if (hdhVar.y) {
                }
            }
            if (rectF.width() > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            }
        }
    }

    public final int ck() {
        if (this.t) {
            int i = this.f9083g;
            hdh hdhVar = this.n;
            if (i == 0) {
                return (int) hdhVar.bt();
            }
            if (i == 2) {
                if (getHintMaxLines() == 1) {
                    return (int) (hdhVar.bt() / 2.0f);
                }
                float bt = hdhVar.bt();
                TextPaint textPaint = hdhVar.ap;
                textPaint.setTextSize(hdhVar.aq);
                textPaint.setTypeface(hdhVar.ak);
                textPaint.setLetterSpacing(hdhVar.af);
                return Math.max(0, (int) (bt - ((-textPaint.ascent()) / 2.0f)));
            }
        }
        return 0;
    }

    public final void cl() {
        if (this.ak == null || this.f9083g != 1) {
            return;
        }
        if (getHintMaxLines() != 1) {
            EditText editText = this.ak;
            editText.setPaddingRelative(editText.getPaddingStart(), (int) (this.n.bt() + this.ag), this.ak.getPaddingEnd(), getResources().getDimensionPixelSize(cn.trinea.android.developertools.R.dimen.material_filled_edittext_font_1_3_padding_bottom));
        } else if (getContext().getResources().getConfiguration().fontScale >= 2.0f) {
            EditText editText2 = this.ak;
            editText2.setPaddingRelative(editText2.getPaddingStart(), getResources().getDimensionPixelSize(cn.trinea.android.developertools.R.dimen.material_filled_edittext_font_2_0_padding_top), this.ak.getPaddingEnd(), getResources().getDimensionPixelSize(cn.trinea.android.developertools.R.dimen.material_filled_edittext_font_2_0_padding_bottom));
        } else if (gs.m(getContext())) {
            EditText editText3 = this.ak;
            editText3.setPaddingRelative(editText3.getPaddingStart(), getResources().getDimensionPixelSize(cn.trinea.android.developertools.R.dimen.material_filled_edittext_font_1_3_padding_top), this.ak.getPaddingEnd(), getResources().getDimensionPixelSize(cn.trinea.android.developertools.R.dimen.material_filled_edittext_font_1_3_padding_bottom));
        }
    }

    public final void cm() {
        EditText editText = this.ak;
        if (editText == null || this.by == null) {
            return;
        }
        if ((this.aa || editText.getBackground() == null) && this.f9083g != 0) {
            this.ak.setBackground(getEditTextBoxBackground());
            this.aa = true;
        }
    }

    public final void cn() {
        if (this.f9083g != 1) {
            FrameLayout frameLayout = this.aq;
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) frameLayout.getLayoutParams();
            int ck = ck();
            if (ck != layoutParams.topMargin) {
                layoutParams.topMargin = ck;
                frameLayout.requestLayout();
            }
        }
    }

    public final void co(boolean z, boolean z2) {
        ColorStateList colorStateList;
        AppCompatTextView appCompatTextView;
        boolean isEnabled = isEnabled();
        EditText editText = this.ak;
        boolean z3 = (editText == null || TextUtils.isEmpty(editText.getText())) ? false : true;
        EditText editText2 = this.ak;
        boolean z4 = editText2 != null && editText2.hasFocus();
        ColorStateList colorStateList2 = this.am;
        hdh hdhVar = this.n;
        if (colorStateList2 != null) {
            hdhVar.bn(colorStateList2);
        }
        if (!isEnabled) {
            ColorStateList colorStateList3 = this.am;
            hdhVar.bn(ColorStateList.valueOf(colorStateList3 != null ? colorStateList3.getColorForState(new int[]{-16842910}, this.bz) : this.bz));
        } else if (cf()) {
            AppCompatTextView appCompatTextView2 = this.f9077ab.f11163ab;
            hdhVar.bn(appCompatTextView2 != null ? appCompatTextView2.getTextColors() : null);
        } else if (this.bh && (appCompatTextView = this.h) != null) {
            hdhVar.bn(appCompatTextView.getTextColors());
        } else if (z4 && (colorStateList = this.bk) != null && hdhVar.f19270d != colorStateList) {
            hdhVar.f19270d = colorStateList;
            hdhVar.bx(false);
        }
        zq zqVar = this.x;
        emu emuVar = this.bg;
        if (z3 || !this.ap || (isEnabled() && z4)) {
            if (z2 || this.f9078b) {
                ValueAnimator valueAnimator = this.k;
                if (valueAnimator != null && valueAnimator.isRunning()) {
                    this.k.cancel();
                }
                if (z && this.f9082f) {
                    ct(1.0f);
                } else {
                    hdhVar.bu(1.0f);
                }
                this.f9078b = false;
                if (cz()) {
                    cj();
                }
                EditText editText3 = this.ak;
                cy(editText3 != null ? editText3.getText() : null);
                emuVar.f15817c = false;
                emuVar.l();
                zqVar.o = false;
                zqVar.y();
                return;
            }
            return;
        }
        if (z2 || !this.f9078b) {
            ValueAnimator valueAnimator2 = this.k;
            if (valueAnimator2 != null && valueAnimator2.isRunning()) {
                this.k.cancel();
            }
            if (z && this.f9082f) {
                ct(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
            } else {
                hdhVar.bu(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
            }
            if (cz() && !((fym) this.by).f17642b.r.isEmpty() && cz()) {
                ((fym) this.by).c(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
            }
            this.f9078b = true;
            AppCompatTextView appCompatTextView3 = this.ac;
            if (appCompatTextView3 != null && this.i) {
                appCompatTextView3.setText((CharSequence) null);
                atq.d(this.aq, this.o);
                this.ac.setVisibility(4);
            }
            emuVar.f15817c = true;
            emuVar.l();
            zqVar.o = true;
            zqVar.y();
        }
    }

    public final ud cp() {
        ud udVar = new ud();
        udVar.am = egh.bf(getContext(), cn.trinea.android.developertools.R.attr.motionDurationShort2, 87);
        udVar.ar = egh.r(getContext(), cn.trinea.android.developertools.R.attr.motionEasingLinearInterpolator, gtk.f18727b);
        return udVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00ab  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean cq() {
        boolean z;
        zq zqVar;
        Drawable[] compoundDrawablesRelative;
        ColorDrawable colorDrawable;
        Drawable drawable;
        ColorDrawable colorDrawable2;
        if (this.ak == null) {
            return false;
        }
        CheckableImageButton checkableImageButton = null;
        boolean z2 = true;
        if (getStartIconDrawable() != null || (getPrefixText() != null && getPrefixTextView().getVisibility() == 0)) {
            emu emuVar = this.bg;
            if (emuVar.getMeasuredWidth() > 0) {
                int measuredWidth = emuVar.getMeasuredWidth() - this.ak.getPaddingLeft();
                if (this.bl == null || this.af != measuredWidth) {
                    ColorDrawable colorDrawable3 = new ColorDrawable();
                    this.bl = colorDrawable3;
                    this.af = measuredWidth;
                    colorDrawable3.setBounds(0, 0, measuredWidth, 1);
                }
                Drawable[] compoundDrawablesRelative2 = this.ak.getCompoundDrawablesRelative();
                Drawable drawable2 = compoundDrawablesRelative2[0];
                ColorDrawable colorDrawable4 = this.bl;
                if (drawable2 != colorDrawable4) {
                    this.ak.setCompoundDrawablesRelative(colorDrawable4, compoundDrawablesRelative2[1], compoundDrawablesRelative2[2], compoundDrawablesRelative2[3]);
                    z = true;
                    zqVar = this.x;
                    if ((!zqVar.ab() || ((zqVar.q != 0 && zqVar.z()) || zqVar.f20407b != null)) && zqVar.getMeasuredWidth() > 0) {
                        int measuredWidth2 = zqVar.t.getMeasuredWidth() - this.ak.getPaddingRight();
                        if (!zqVar.ab()) {
                            checkableImageButton = zqVar.h;
                        } else if (zqVar.q != 0 && zqVar.z()) {
                            checkableImageButton = zqVar.f20409d;
                        }
                        if (checkableImageButton != null) {
                            measuredWidth2 = ((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams()).getMarginStart() + checkableImageButton.getMeasuredWidth() + measuredWidth2;
                        }
                        compoundDrawablesRelative = this.ak.getCompoundDrawablesRelative();
                        colorDrawable = this.ca;
                        if (colorDrawable == null && this.az != measuredWidth2) {
                            this.az = measuredWidth2;
                            colorDrawable.setBounds(0, 0, measuredWidth2, 1);
                            this.ak.setCompoundDrawablesRelative(compoundDrawablesRelative[0], compoundDrawablesRelative[1], this.ca, compoundDrawablesRelative[3]);
                            return true;
                        }
                        if (colorDrawable == null) {
                            ColorDrawable colorDrawable5 = new ColorDrawable();
                            this.ca = colorDrawable5;
                            this.az = measuredWidth2;
                            colorDrawable5.setBounds(0, 0, measuredWidth2, 1);
                        }
                        drawable = compoundDrawablesRelative[2];
                        colorDrawable2 = this.ca;
                        if (drawable != colorDrawable2) {
                            this.bx = drawable;
                            this.ak.setCompoundDrawablesRelative(compoundDrawablesRelative[0], compoundDrawablesRelative[1], colorDrawable2, compoundDrawablesRelative[3]);
                            return true;
                        }
                    } else if (this.ca != null) {
                        Drawable[] compoundDrawablesRelative3 = this.ak.getCompoundDrawablesRelative();
                        if (compoundDrawablesRelative3[2] == this.ca) {
                            this.ak.setCompoundDrawablesRelative(compoundDrawablesRelative3[0], compoundDrawablesRelative3[1], this.bx, compoundDrawablesRelative3[3]);
                        } else {
                            z2 = z;
                        }
                        this.ca = null;
                        return z2;
                    }
                    return z;
                }
                z = false;
                zqVar = this.x;
                if (zqVar.ab()) {
                }
                int measuredWidth22 = zqVar.t.getMeasuredWidth() - this.ak.getPaddingRight();
                if (!zqVar.ab()) {
                }
                if (checkableImageButton != null) {
                }
                compoundDrawablesRelative = this.ak.getCompoundDrawablesRelative();
                colorDrawable = this.ca;
                if (colorDrawable == null) {
                }
                if (colorDrawable == null) {
                }
                drawable = compoundDrawablesRelative[2];
                colorDrawable2 = this.ca;
                if (drawable != colorDrawable2) {
                }
                return z;
            }
        }
        if (this.bl != null) {
            Drawable[] compoundDrawablesRelative4 = this.ak.getCompoundDrawablesRelative();
            this.ak.setCompoundDrawablesRelative(null, compoundDrawablesRelative4[1], compoundDrawablesRelative4[2], compoundDrawablesRelative4[3]);
            this.bl = null;
            z = true;
            zqVar = this.x;
            if (zqVar.ab()) {
            }
            int measuredWidth222 = zqVar.t.getMeasuredWidth() - this.ak.getPaddingRight();
            if (!zqVar.ab()) {
            }
            if (checkableImageButton != null) {
            }
            compoundDrawablesRelative = this.ak.getCompoundDrawablesRelative();
            colorDrawable = this.ca;
            if (colorDrawable == null) {
            }
            if (colorDrawable == null) {
            }
            drawable = compoundDrawablesRelative[2];
            colorDrawable2 = this.ca;
            if (drawable != colorDrawable2) {
            }
            return z;
        }
        z = false;
        zqVar = this.x;
        if (zqVar.ab()) {
        }
        int measuredWidth2222 = zqVar.t.getMeasuredWidth() - this.ak.getPaddingRight();
        if (!zqVar.ab()) {
        }
        if (checkableImageButton != null) {
        }
        compoundDrawablesRelative = this.ak.getCompoundDrawablesRelative();
        colorDrawable = this.ca;
        if (colorDrawable == null) {
        }
        if (colorDrawable == null) {
        }
        drawable = compoundDrawablesRelative[2];
        colorDrawable2 = this.ca;
        if (drawable != colorDrawable2) {
        }
        return z;
    }

    public final void cr(Editable editable) {
        ((bco) this.r).getClass();
        int length = editable != null ? editable.length() : 0;
        boolean z = this.bh;
        int i = this.bu;
        if (i == -1) {
            this.h.setText(String.valueOf(length));
            this.h.setContentDescription(null);
            this.bh = false;
        } else {
            this.bh = length > i;
            Context context = getContext();
            this.h.setContentDescription(context.getString(this.bh ? cn.trinea.android.developertools.R.string.character_counter_overflowed_content_description : cn.trinea.android.developertools.R.string.character_counter_content_description, Integer.valueOf(length), Integer.valueOf(this.bu)));
            if (z != this.bh) {
                cv();
            }
            String str = dlx.f14399c;
            dlx dlxVar = TextUtils.getLayoutDirectionFromLocale(Locale.getDefault()) == 1 ? dlx.f14398b : dlx.f14397a;
            AppCompatTextView appCompatTextView = this.h;
            String string = getContext().getString(cn.trinea.android.developertools.R.string.character_counter_pattern, Integer.valueOf(length), Integer.valueOf(this.bu));
            dlxVar.getClass();
            gez gezVar = cl.f13046b;
            appCompatTextView.setText(string != null ? dlxVar.h(string).toString() : null);
        }
        if (this.ak == null || z == this.bh) {
            return;
        }
        co(false, false);
        cc();
        cw();
    }

    public final int cs(int i, boolean z) {
        return ((z || getPrefixText() == null) ? (!z || getSuffixText() == null) ? this.ak.getCompoundPaddingLeft() : this.x.ai() : this.bg.m()) + i;
    }

    public final void ct(float f2) {
        hdh hdhVar = this.n;
        if (hdhVar.ar == f2) {
            return;
        }
        if (this.k == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.k = valueAnimator;
            valueAnimator.setInterpolator(egh.r(getContext(), cn.trinea.android.developertools.R.attr.motionEasingEmphasizedInterpolator, gtk.f18728c));
            this.k.setDuration(egh.bf(getContext(), cn.trinea.android.developertools.R.attr.motionDurationMedium4, MediaPlayer.MEDIA_PLAYER_OPTION_SUPER_RES_STRENGTH_OPTION));
            this.k.addUpdateListener(new zl(4, this));
        }
        this.k.setFloatValues(hdhVar.ar, f2);
        this.k.start();
    }

    public final int cu(int i, boolean z) {
        return i - ((z || getSuffixText() == null) ? (!z || getPrefixText() == null) ? this.ak.getCompoundPaddingRight() : this.bg.m() : this.x.ai());
    }

    public final void cv() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        AppCompatTextView appCompatTextView = this.h;
        if (appCompatTextView != null) {
            ch(appCompatTextView, this.bh ? this.bt : this.ao);
            if (!this.bh && (colorStateList2 = this.at) != null) {
                this.h.setTextColor(colorStateList2);
            }
            if (!this.bh || (colorStateList = this.bm) == null) {
                return;
            }
            this.h.setTextColor(colorStateList);
        }
    }

    public final void cw() {
        Drawable background;
        AppCompatTextView appCompatTextView;
        EditText editText = this.ak;
        if (editText == null || this.f9083g != 0 || (background = editText.getBackground()) == null) {
            return;
        }
        int[] iArr = edd.f15344a;
        Drawable mutate = background.mutate();
        if (cf()) {
            mutate.setColorFilter(cfl.g(getErrorCurrentTextColors(), PorterDuff.Mode.SRC_IN));
        } else if (this.bh && (appCompatTextView = this.h) != null) {
            mutate.setColorFilter(cfl.g(appCompatTextView.getCurrentTextColor(), PorterDuff.Mode.SRC_IN));
        } else {
            dzm.am(mutate);
            this.ak.refreshDrawableState();
        }
    }

    public final void cx() {
        int i;
        int i2;
        ddm ddmVar = this.by;
        if (ddmVar == null) {
            return;
        }
        cjg cjgVar = ddmVar.ds.h;
        cjg cjgVar2 = this.bj;
        if (cjgVar != cjgVar2) {
            ddmVar.setShapeAppearanceModel(cjgVar2);
        }
        if (this.f9083g == 2 && (i = this.bn) > -1 && (i2 = this.j) != 0) {
            ddm ddmVar2 = this.by;
            ddmVar2.ds.f14951b = i;
            ddmVar2.invalidateSelf();
            ColorStateList valueOf = ColorStateList.valueOf(i2);
            dwo dwoVar = ddmVar2.ds;
            if (dwoVar.f14956g != valueOf) {
                dwoVar.f14956g = valueOf;
                ddmVar2.onStateChange(ddmVar2.getState());
            }
        }
        int i3 = this.ay;
        if (this.f9083g == 1) {
            i3 = afr.f(this.ay, eyt.z(getContext(), cn.trinea.android.developertools.R.attr.colorSurface, 0));
        }
        this.ay = i3;
        this.by.en(ColorStateList.valueOf(i3));
        ddm ddmVar3 = this.s;
        if (ddmVar3 != null && this.l != null) {
            if (this.bn > -1 && this.j != 0) {
                ddmVar3.en(this.ak.isFocused() ? ColorStateList.valueOf(this.al) : ColorStateList.valueOf(this.j));
                this.l.en(ColorStateList.valueOf(this.j));
            }
            invalidate();
        }
        cm();
    }

    public final void cy(Editable editable) {
        ((bco) this.r).getClass();
        int length = editable != null ? editable.length() : 0;
        FrameLayout frameLayout = this.aq;
        if (length != 0 || this.f9078b) {
            AppCompatTextView appCompatTextView = this.ac;
            if (appCompatTextView == null || !this.i) {
                return;
            }
            appCompatTextView.setText((CharSequence) null);
            atq.d(frameLayout, this.o);
            this.ac.setVisibility(4);
            return;
        }
        if (this.ac == null || !this.i || TextUtils.isEmpty(this.ae)) {
            return;
        }
        this.ac.setText(this.ae);
        atq.d(frameLayout, this.au);
        this.ac.setVisibility(0);
        this.ac.bringToFront();
    }

    public final boolean cz() {
        return this.t && !TextUtils.isEmpty(this.ah) && (this.by instanceof fym);
    }

    public final void da() {
        Drawable textCursorDrawable;
        Drawable textCursorDrawable2;
        ColorStateList colorStateList;
        ColorStateList colorStateList2 = this.bb;
        if (colorStateList2 == null) {
            Context context = getContext();
            TypedValue i = bfc.i(context, cn.trinea.android.developertools.R.attr.colorControlActivated);
            if (i != null) {
                int i2 = i.resourceId;
                if (i2 != 0) {
                    colorStateList2 = eyt.bh(context, i2);
                } else {
                    int i3 = i.data;
                    if (i3 != 0) {
                        colorStateList2 = ColorStateList.valueOf(i3);
                    }
                }
            }
            colorStateList2 = null;
        }
        EditText editText = this.ak;
        if (editText != null) {
            textCursorDrawable = editText.getTextCursorDrawable();
            if (textCursorDrawable == null) {
                return;
            }
            textCursorDrawable2 = this.ak.getTextCursorDrawable();
            Drawable mutate = dzm.aw(textCursorDrawable2).mutate();
            if ((cf() || (this.h != null && this.bh)) && (colorStateList = this.w) != null) {
                colorStateList2 = colorStateList;
            }
            mutate.setTintList(colorStateList2);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchProvideAutofillStructure(ViewStructure viewStructure, int i) {
        EditText editText = this.ak;
        if (editText == null) {
            super.dispatchProvideAutofillStructure(viewStructure, i);
            return;
        }
        if (this.bv != null) {
            boolean z = this.ad;
            this.ad = false;
            CharSequence hint = editText.getHint();
            this.ak.setHint(this.bv);
            try {
                super.dispatchProvideAutofillStructure(viewStructure, i);
                return;
            } finally {
                this.ak.setHint(hint);
                this.ad = z;
            }
        }
        viewStructure.setAutofillId(getAutofillId());
        onProvideAutofillStructure(viewStructure, i);
        onProvideAutofillVirtualStructure(viewStructure, i);
        FrameLayout frameLayout = this.aq;
        viewStructure.setChildCount(frameLayout.getChildCount());
        for (int i2 = 0; i2 < frameLayout.getChildCount(); i2++) {
            View childAt = frameLayout.getChildAt(i2);
            ViewStructure newChild = viewStructure.newChild(i2);
            childAt.dispatchProvideAutofillStructure(newChild, i);
            if (childAt == this.ak) {
                newChild.setHint(getHint());
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchRestoreInstanceState(SparseArray sparseArray) {
        this.ar = true;
        super.dispatchRestoreInstanceState(sparseArray);
        this.ar = false;
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        ddm ddmVar;
        super.draw(canvas);
        boolean z = this.t;
        hdh hdhVar = this.n;
        if (z) {
            TextPaint textPaint = hdhVar.ay;
            RectF rectF = hdhVar.u;
            int save = canvas.save();
            if (hdhVar.aa != null && rectF.width() > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT && rectF.height() > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                textPaint.setTextSize(hdhVar.m);
                float f2 = hdhVar.au;
                float f3 = hdhVar.bj;
                float f4 = hdhVar.ax;
                if (f4 != 1.0f) {
                    canvas.scale(f4, f4, f2, f3);
                }
                if ((hdhVar.az > 1 || hdhVar.bd > 1) && !hdhVar.y && hdhVar.bo()) {
                    float lineStart = hdhVar.au - hdhVar.be.getLineStart(0);
                    int alpha = textPaint.getAlpha();
                    canvas.translate(lineStart, f3);
                    float f5 = alpha;
                    textPaint.setAlpha((int) (hdhVar.n * f5));
                    int i = Build.VERSION.SDK_INT;
                    if (i >= 31) {
                        textPaint.setShadowLayer(hdhVar.f19272f, hdhVar.bf, hdhVar.aj, eyt.bt(hdhVar.ad, textPaint.getAlpha()));
                    }
                    hdhVar.be.draw(canvas);
                    textPaint.setAlpha((int) (hdhVar.z * f5));
                    if (i >= 31) {
                        textPaint.setShadowLayer(hdhVar.f19272f, hdhVar.bf, hdhVar.aj, eyt.bt(hdhVar.ad, textPaint.getAlpha()));
                    }
                    int lineBaseline = hdhVar.be.getLineBaseline(0);
                    CharSequence charSequence = hdhVar.h;
                    float f6 = lineBaseline;
                    canvas.drawText(charSequence, 0, charSequence.length(), TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, f6, textPaint);
                    if (i >= 31) {
                        textPaint.setShadowLayer(hdhVar.f19272f, hdhVar.bf, hdhVar.aj, hdhVar.ad);
                    }
                    String trim = hdhVar.h.toString().trim();
                    if (trim.endsWith("…")) {
                        trim = trim.substring(0, trim.length() - 1);
                    }
                    String str = trim;
                    textPaint.setAlpha(alpha);
                    canvas.drawText(str, 0, Math.min(hdhVar.be.getLineEnd(0), str.length()), TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, f6, (Paint) textPaint);
                    canvas = canvas;
                } else {
                    canvas.translate(f2, f3);
                    hdhVar.be.draw(canvas);
                }
                canvas.restoreToCount(save);
            }
        }
        if (this.l == null || (ddmVar = this.s) == null) {
            return;
        }
        ddmVar.draw(canvas);
        if (this.ak.isFocused()) {
            Rect bounds = this.l.getBounds();
            Rect bounds2 = this.s.getBounds();
            float f7 = hdhVar.ar;
            int centerX = bounds2.centerX();
            bounds.left = gtk.g(centerX, f7, bounds2.left);
            bounds.right = gtk.g(centerX, f7, bounds2.right);
            this.l.draw(canvas);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x004d  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void drawableStateChanged() {
        boolean z;
        ColorStateList colorStateList;
        if (this.ba) {
            return;
        }
        this.ba = true;
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        hdh hdhVar = this.n;
        if (hdhVar != null) {
            hdhVar.f19267ab = drawableState;
            ColorStateList colorStateList2 = hdhVar.f19270d;
            if ((colorStateList2 != null && colorStateList2.isStateful()) || ((colorStateList = hdhVar.at) != null && colorStateList.isStateful())) {
                hdhVar.bx(false);
                z = true;
                if (this.ak != null) {
                    co(isLaidOut() && isEnabled(), false);
                }
                cw();
                cc();
                if (z) {
                    invalidate();
                }
                this.ba = false;
            }
        }
        z = false;
        if (this.ak != null) {
        }
        cw();
        cc();
        if (z) {
        }
        this.ba = false;
    }

    @Override // android.widget.LinearLayout, android.view.View
    public int getBaseline() {
        EditText editText = this.ak;
        if (editText == null) {
            return super.getBaseline();
        }
        return ck() + getPaddingTop() + editText.getBaseline();
    }

    public ddm getBoxBackground() {
        int i = this.f9083g;
        if (i == 1 || i == 2) {
            return this.by;
        }
        throw new IllegalStateException();
    }

    public int getBoxBackgroundColor() {
        return this.ay;
    }

    public int getBoxBackgroundMode() {
        return this.f9083g;
    }

    public int getBoxCollapsedPaddingTop() {
        return this.f9081e;
    }

    public float getBoxCornerRadiusBottomEnd() {
        int layoutDirection = getLayoutDirection();
        RectF rectF = this.br;
        return layoutDirection == 1 ? this.bj.f12971a.b(rectF) : this.bj.l.b(rectF);
    }

    public float getBoxCornerRadiusBottomStart() {
        int layoutDirection = getLayoutDirection();
        RectF rectF = this.br;
        return layoutDirection == 1 ? this.bj.l.b(rectF) : this.bj.f12971a.b(rectF);
    }

    public float getBoxCornerRadiusTopEnd() {
        int layoutDirection = getLayoutDirection();
        RectF rectF = this.br;
        return layoutDirection == 1 ? this.bj.f12975e.b(rectF) : this.bj.f12977g.b(rectF);
    }

    public float getBoxCornerRadiusTopStart() {
        int layoutDirection = getLayoutDirection();
        RectF rectF = this.br;
        return layoutDirection == 1 ? this.bj.f12977g.b(rectF) : this.bj.f12975e.b(rectF);
    }

    public int getBoxStrokeColor() {
        return this.av;
    }

    public ColorStateList getBoxStrokeErrorColor() {
        return this.bo;
    }

    public int getBoxStrokeWidth() {
        return this.an;
    }

    public int getBoxStrokeWidthFocused() {
        return this.bq;
    }

    public int getCounterMaxLength() {
        return this.bu;
    }

    public CharSequence getCounterOverflowDescription() {
        AppCompatTextView appCompatTextView;
        if (this.z && this.bh && (appCompatTextView = this.h) != null) {
            return appCompatTextView.getContentDescription();
        }
        return null;
    }

    public ColorStateList getCounterOverflowTextColor() {
        return this.bm;
    }

    public ColorStateList getCounterTextColor() {
        return this.at;
    }

    public ColorStateList getCursorColor() {
        return this.bb;
    }

    public ColorStateList getCursorErrorColor() {
        return this.w;
    }

    public ColorStateList getDefaultHintTextColor() {
        return this.am;
    }

    public EditText getEditText() {
        return this.ak;
    }

    public CharSequence getEndIconContentDescription() {
        return this.x.f20409d.getContentDescription();
    }

    public Drawable getEndIconDrawable() {
        return this.x.f20409d.getDrawable();
    }

    public int getEndIconMinSize() {
        return this.x.u;
    }

    public int getEndIconMode() {
        return this.x.q;
    }

    public ImageView.ScaleType getEndIconScaleType() {
        return this.x.s;
    }

    public CheckableImageButton getEndIconView() {
        return this.x.f20409d;
    }

    public CharSequence getError() {
        baj bajVar = this.f9077ab;
        if (bajVar.v) {
            return bajVar.q;
        }
        return null;
    }

    public int getErrorAccessibilityLiveRegion() {
        return this.f9077ab.x;
    }

    public CharSequence getErrorContentDescription() {
        return this.f9077ab.p;
    }

    public int getErrorCurrentTextColors() {
        AppCompatTextView appCompatTextView = this.f9077ab.f11163ab;
        if (appCompatTextView != null) {
            return appCompatTextView.getCurrentTextColor();
        }
        return -1;
    }

    public Drawable getErrorIconDrawable() {
        return this.x.h.getDrawable();
    }

    public CharSequence getHelperText() {
        baj bajVar = this.f9077ab;
        if (bajVar.z) {
            return bajVar.n;
        }
        return null;
    }

    public int getHelperTextCurrentTextColor() {
        AppCompatTextView appCompatTextView = this.f9077ab.f11167e;
        if (appCompatTextView != null) {
            return appCompatTextView.getCurrentTextColor();
        }
        return -1;
    }

    public CharSequence getHint() {
        if (this.t) {
            return this.ah;
        }
        return null;
    }

    public final float getHintCollapsedTextHeight() {
        return this.n.bt();
    }

    public final int getHintCurrentCollapsedTextColor() {
        hdh hdhVar = this.n;
        return hdhVar.bz(hdhVar.f19270d);
    }

    public int getHintMaxLines() {
        return this.n.az;
    }

    public ColorStateList getHintTextColor() {
        return this.bk;
    }

    public dcn getLengthCounter() {
        return this.r;
    }

    public int getMaxEms() {
        return this.f9080d;
    }

    public int getMaxWidth() {
        return this.u;
    }

    public int getMinEms() {
        return this.m;
    }

    public int getMinWidth() {
        return this.bf;
    }

    @Deprecated
    public CharSequence getPasswordVisibilityToggleContentDescription() {
        return this.x.f20409d.getContentDescription();
    }

    @Deprecated
    public Drawable getPasswordVisibilityToggleDrawable() {
        return this.x.f20409d.getDrawable();
    }

    public CharSequence getPlaceholderText() {
        if (this.i) {
            return this.ae;
        }
        return null;
    }

    public int getPlaceholderTextAppearance() {
        return this.bi;
    }

    public ColorStateList getPlaceholderTextColor() {
        return this.p;
    }

    public CharSequence getPrefixText() {
        return this.bg.f15818d;
    }

    public ColorStateList getPrefixTextColor() {
        return this.bg.i.getTextColors();
    }

    public TextView getPrefixTextView() {
        return this.bg.i;
    }

    public cjg getShapeAppearanceModel() {
        return this.bj;
    }

    public CharSequence getStartIconContentDescription() {
        return this.bg.f15819e.getContentDescription();
    }

    public Drawable getStartIconDrawable() {
        return this.bg.f15819e.getDrawable();
    }

    public int getStartIconMinSize() {
        return this.bg.f15816b;
    }

    public ImageView.ScaleType getStartIconScaleType() {
        return this.bg.f15815a;
    }

    public CharSequence getSuffixText() {
        return this.x.f20407b;
    }

    public ColorStateList getSuffixTextColor() {
        return this.x.t.getTextColors();
    }

    public TextView getSuffixTextView() {
        return this.x.t;
    }

    public Typeface getTypeface() {
        return this.f9079c;
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.n.bv(configuration);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        int max;
        zq zqVar = this.x;
        zqVar.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        boolean z = false;
        this.bc = false;
        if (this.ak != null && this.ak.getMeasuredHeight() < (max = Math.max(zqVar.getMeasuredHeight(), this.bg.getMeasuredHeight()))) {
            this.ak.setMinimumHeight(max);
            z = true;
        }
        boolean cq = cq();
        if (z || cq) {
            this.ak.post(new fvi(26, this));
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        float descent;
        int i5;
        int compoundPaddingTop;
        super.onLayout(z, i, i2, i3, i4);
        EditText editText = this.ak;
        if (editText != null) {
            Rect rect = this.q;
            aqr.c(this, editText, rect);
            ddm ddmVar = this.s;
            if (ddmVar != null) {
                int i6 = rect.bottom;
                ddmVar.setBounds(rect.left, i6 - this.an, rect.right, i6);
            }
            ddm ddmVar2 = this.l;
            if (ddmVar2 != null) {
                int i7 = rect.bottom;
                ddmVar2.setBounds(rect.left, i7 - this.bq, rect.right, i7);
            }
            if (this.t) {
                float textSize = this.ak.getTextSize();
                hdh hdhVar = this.n;
                float f2 = hdhVar.f19269c;
                TextPaint textPaint = hdhVar.ap;
                if (f2 != textSize) {
                    hdhVar.f19269c = textSize;
                    hdhVar.bx(false);
                }
                int gravity = this.ak.getGravity();
                int i8 = (gravity & (-113)) | 48;
                if (hdhVar.bi != i8) {
                    hdhVar.bi = i8;
                    hdhVar.bx(false);
                }
                if (hdhVar.ah != gravity) {
                    hdhVar.ah = gravity;
                    hdhVar.bx(false);
                }
                Rect ci = ci(rect);
                int i9 = ci.left;
                int i10 = ci.top;
                int i11 = ci.right;
                int i12 = ci.bottom;
                Rect rect2 = hdhVar.q;
                if (rect2.left != i9 || rect2.top != i10 || rect2.right != i11 || rect2.bottom != i12) {
                    rect2.set(i9, i10, i11, i12);
                    hdhVar.l = true;
                }
                if (this.ak == null) {
                    throw new IllegalStateException();
                }
                if (getHintMaxLines() == 1) {
                    textPaint.setTextSize(hdhVar.f19269c);
                    textPaint.setTypeface(hdhVar.ae);
                    textPaint.setLetterSpacing(hdhVar.ac);
                    descent = -textPaint.ascent();
                } else {
                    textPaint.setTextSize(hdhVar.f19269c);
                    textPaint.setTypeface(hdhVar.ae);
                    textPaint.setLetterSpacing(hdhVar.ac);
                    descent = hdhVar.s * (textPaint.descent() + (-textPaint.ascent()));
                }
                int compoundPaddingLeft = this.ak.getCompoundPaddingLeft() + rect.left;
                Rect rect3 = this.bd;
                rect3.left = compoundPaddingLeft;
                if (this.f9083g != 1 || this.ak.getMinLines() > 1) {
                    if (this.f9083g != 0 || getHintMaxLines() == 1) {
                        i5 = 0;
                    } else {
                        textPaint.setTextSize(hdhVar.f19269c);
                        textPaint.setTypeface(hdhVar.ae);
                        textPaint.setLetterSpacing(hdhVar.ac);
                        i5 = (int) ((-textPaint.ascent()) / 2.0f);
                    }
                    compoundPaddingTop = (this.ak.getCompoundPaddingTop() + rect.top) - i5;
                } else {
                    compoundPaddingTop = (int) (rect.centerY() - (descent / 2.0f));
                }
                rect3.top = compoundPaddingTop;
                rect3.right = rect.right - this.ak.getCompoundPaddingRight();
                int compoundPaddingBottom = (this.f9083g != 1 || this.ak.getMinLines() > 1) ? rect.bottom - this.ak.getCompoundPaddingBottom() : (int) (rect3.top + descent);
                rect3.bottom = compoundPaddingBottom;
                int i13 = rect3.left;
                int i14 = rect3.top;
                int i15 = rect3.right;
                Rect rect4 = hdhVar.bb;
                if (rect4.left != i13 || rect4.top != i14 || rect4.right != i15 || rect4.bottom != compoundPaddingBottom || true != hdhVar.ai) {
                    rect4.set(i13, i14, i15, compoundPaddingBottom);
                    hdhVar.l = true;
                    hdhVar.ai = true;
                }
                hdhVar.bx(false);
                if (!cz() || this.f9078b) {
                    return;
                }
                cj();
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        float f2;
        EditText editText;
        super.onMeasure(i, i2);
        boolean z = this.bc;
        zq zqVar = this.x;
        if (!z) {
            zqVar.getViewTreeObserver().addOnGlobalLayoutListener(this);
            this.bc = true;
        }
        if (this.ac != null && (editText = this.ak) != null) {
            this.ac.setGravity(editText.getGravity());
            this.ac.setPadding(this.ak.getCompoundPaddingLeft(), this.ak.getCompoundPaddingTop(), this.ak.getCompoundPaddingRight(), this.ak.getCompoundPaddingBottom());
        }
        zqVar.ae();
        if (getHintMaxLines() == 1) {
            return;
        }
        int measuredWidth = (this.ak.getMeasuredWidth() - this.ak.getCompoundPaddingLeft()) - this.ak.getCompoundPaddingRight();
        hdh hdhVar = this.n;
        TextPaint textPaint = hdhVar.ap;
        textPaint.setTextSize(hdhVar.aq);
        textPaint.setTypeface(hdhVar.ak);
        textPaint.setLetterSpacing(hdhVar.af);
        float f3 = measuredWidth;
        hdhVar.f19268b = hdhVar.bs(hdhVar.bd, textPaint, hdhVar.r, (hdhVar.aq / hdhVar.f19269c) * f3, hdhVar.y).getHeight();
        textPaint.setTextSize(hdhVar.f19269c);
        textPaint.setTypeface(hdhVar.ae);
        textPaint.setLetterSpacing(hdhVar.ac);
        hdhVar.bc = hdhVar.bs(hdhVar.az, textPaint, hdhVar.r, f3, hdhVar.y).getHeight();
        EditText editText2 = this.ak;
        Rect rect = this.q;
        aqr.c(this, editText2, rect);
        Rect ci = ci(rect);
        int i3 = ci.left;
        int i4 = ci.top;
        int i5 = ci.right;
        int i6 = ci.bottom;
        Rect rect2 = hdhVar.q;
        if (rect2.left != i3 || rect2.top != i4 || rect2.right != i5 || rect2.bottom != i6) {
            rect2.set(i3, i4, i5, i6);
            hdhVar.l = true;
        }
        cn();
        cl();
        if (this.ak == null) {
            return;
        }
        int i7 = hdhVar.bc;
        if (i7 != -1) {
            f2 = i7;
        } else {
            TextPaint textPaint2 = hdhVar.ap;
            textPaint2.setTextSize(hdhVar.f19269c);
            textPaint2.setTypeface(hdhVar.ae);
            textPaint2.setLetterSpacing(hdhVar.ac);
            f2 = -textPaint2.ascent();
        }
        CharSequence charSequence = this.ae;
        float f4 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        if (charSequence != null) {
            TextPaint textPaint3 = new TextPaint(TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA);
            textPaint3.set(this.ac.getPaint());
            textPaint3.setTextSize(this.ac.getTextSize());
            textPaint3.setTypeface(this.ac.getTypeface());
            textPaint3.setLetterSpacing(this.ac.getLetterSpacing());
            try {
                cla claVar = new cla(this.ae, textPaint3, measuredWidth);
                claVar.f13054f = getLayoutDirection() == 1;
                claVar.o = true;
                float lineSpacingExtra = this.ac.getLineSpacingExtra();
                float lineSpacingMultiplier = this.ac.getLineSpacingMultiplier();
                claVar.q = lineSpacingExtra;
                claVar.f13053e = lineSpacingMultiplier;
                claVar.l = new aoi(16, this);
                f4 = claVar.r().getHeight() + (this.f9083g == 1 ? hdhVar.bt() + this.f9081e + this.ag : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
            } catch (gkz e2) {
                Log.e("TextInputLayout", e2.getCause().getMessage(), e2);
            }
        }
        float max = Math.max(f2, f4);
        if (this.ak.getMeasuredHeight() < max) {
            this.ak.setMinimumHeight(Math.round(max));
        }
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof a)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        a aVar = (a) parcelable;
        super.onRestoreInstanceState(aVar.getSuperState());
        setError(aVar.error);
        if (aVar.isEndIconChecked) {
            post(new dyn(0, this));
        }
        requestLayout();
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onRtlPropertiesChanged(int i) {
        super.onRtlPropertiesChanged(i);
        boolean z = i == 1;
        if (z != this.bp) {
            gjn gjnVar = this.bj.f12975e;
            RectF rectF = this.br;
            float b2 = gjnVar.b(rectF);
            float b3 = this.bj.f12977g.b(rectF);
            float b4 = this.bj.f12971a.b(rectF);
            float b5 = this.bj.l.b(rectF);
            cjg cjgVar = this.bj;
            afo afoVar = cjgVar.f12976f;
            afo afoVar2 = cjgVar.i;
            afo afoVar3 = cjgVar.f12973c;
            afo afoVar4 = cjgVar.k;
            bmr bmrVar = new bmr(0);
            bmr bmrVar2 = new bmr(0);
            bmr bmrVar3 = new bmr(0);
            bmr bmrVar4 = new bmr(0);
            bem.m(afoVar2);
            bem.m(afoVar);
            bem.m(afoVar4);
            bem.m(afoVar3);
            ett ettVar = new ett(b3);
            ett ettVar2 = new ett(b2);
            ett ettVar3 = new ett(b5);
            ett ettVar4 = new ett(b4);
            cjg cjgVar2 = new cjg();
            cjgVar2.f12976f = afoVar2;
            cjgVar2.i = afoVar;
            cjgVar2.k = afoVar3;
            cjgVar2.f12973c = afoVar4;
            cjgVar2.f12975e = ettVar;
            cjgVar2.f12977g = ettVar2;
            cjgVar2.l = ettVar4;
            cjgVar2.f12971a = ettVar3;
            cjgVar2.h = bmrVar;
            cjgVar2.j = bmrVar2;
            cjgVar2.f12972b = bmrVar3;
            cjgVar2.f12974d = bmrVar4;
            this.bp = z;
            setShapeAppearanceModel(cjgVar2);
        }
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        a aVar = new a(super.onSaveInstanceState());
        if (cf()) {
            aVar.error = getError();
        }
        zq zqVar = this.x;
        aVar.isEndIconChecked = zqVar.q != 0 && zqVar.f20409d.f9053e;
        return aVar;
    }

    public void setBoxBackgroundColor(int i) {
        if (this.ay != i) {
            this.ay = i;
            this.aj = i;
            this.be = i;
            this.aw = i;
            cx();
        }
    }

    public void setBoxBackgroundColorResource(int i) {
        setBoxBackgroundColor(eyt.af(getContext(), i));
    }

    public void setBoxBackgroundColorStateList(ColorStateList colorStateList) {
        int defaultColor = colorStateList.getDefaultColor();
        this.aj = defaultColor;
        this.ay = defaultColor;
        this.ax = colorStateList.getColorForState(new int[]{-16842910}, -1);
        this.be = colorStateList.getColorForState(new int[]{R.attr.state_focused, R.attr.state_enabled}, -1);
        this.aw = colorStateList.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, -1);
        cx();
    }

    public void setBoxBackgroundMode(int i) {
        if (i == this.f9083g) {
            return;
        }
        this.f9083g = i;
        if (this.ak != null) {
            ce();
        }
    }

    public void setBoxCollapsedPaddingTop(int i) {
        this.f9081e = i;
    }

    public void setBoxCornerFamily(int i) {
        bem r = this.bj.r();
        gjn gjnVar = this.bj.f12975e;
        afo n = kj.n(i);
        r.f11391f = n;
        bem.m(n);
        r.f11390e = gjnVar;
        gjn gjnVar2 = this.bj.f12977g;
        afo n2 = kj.n(i);
        r.i = n2;
        bem.m(n2);
        r.f11392g = gjnVar2;
        gjn gjnVar3 = this.bj.f12971a;
        afo n3 = kj.n(i);
        r.f11388c = n3;
        bem.m(n3);
        r.f11386a = gjnVar3;
        gjn gjnVar4 = this.bj.l;
        afo n4 = kj.n(i);
        r.k = n4;
        bem.m(n4);
        r.l = gjnVar4;
        this.bj = r.n();
        cx();
    }

    public void setBoxStrokeColor(int i) {
        if (this.av != i) {
            this.av = i;
            cc();
        }
    }

    public void setBoxStrokeColorStateList(ColorStateList colorStateList) {
        if (colorStateList.isStateful()) {
            this.al = colorStateList.getDefaultColor();
            this.bz = colorStateList.getColorForState(new int[]{-16842910}, -1);
            this.y = colorStateList.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, -1);
            this.av = colorStateList.getColorForState(new int[]{R.attr.state_focused, R.attr.state_enabled}, -1);
        } else if (this.av != colorStateList.getDefaultColor()) {
            this.av = colorStateList.getDefaultColor();
        }
        cc();
    }

    public void setBoxStrokeErrorColor(ColorStateList colorStateList) {
        if (this.bo != colorStateList) {
            this.bo = colorStateList;
            cc();
        }
    }

    public void setBoxStrokeWidth(int i) {
        this.an = i;
        cc();
    }

    public void setBoxStrokeWidthFocused(int i) {
        this.bq = i;
        cc();
    }

    public void setBoxStrokeWidthFocusedResource(int i) {
        setBoxStrokeWidthFocused(getResources().getDimensionPixelSize(i));
    }

    public void setBoxStrokeWidthResource(int i) {
        setBoxStrokeWidth(getResources().getDimensionPixelSize(i));
    }

    public void setCounterEnabled(boolean z) {
        if (this.z != z) {
            baj bajVar = this.f9077ab;
            if (z) {
                AppCompatTextView appCompatTextView = new AppCompatTextView(getContext(), null);
                this.h = appCompatTextView;
                appCompatTextView.setId(cn.trinea.android.developertools.R.id.textinput_counter);
                Typeface typeface = this.f9079c;
                if (typeface != null) {
                    this.h.setTypeface(typeface);
                }
                this.h.setMaxLines(1);
                bajVar.af(this.h, 2);
                ((ViewGroup.MarginLayoutParams) this.h.getLayoutParams()).setMarginStart(getResources().getDimensionPixelOffset(cn.trinea.android.developertools.R.dimen.mtrl_textinput_counter_margin_start));
                cv();
                if (this.h != null) {
                    EditText editText = this.ak;
                    cr(editText != null ? editText.getText() : null);
                }
            } else {
                bajVar.ak(this.h, 2);
                this.h = null;
            }
            this.z = z;
        }
    }

    public void setCounterMaxLength(int i) {
        if (this.bu != i) {
            if (i > 0) {
                this.bu = i;
            } else {
                this.bu = -1;
            }
            if (!this.z || this.h == null) {
                return;
            }
            EditText editText = this.ak;
            cr(editText == null ? null : editText.getText());
        }
    }

    public void setCounterOverflowTextAppearance(int i) {
        if (this.bt != i) {
            this.bt = i;
            cv();
        }
    }

    public void setCounterOverflowTextColor(ColorStateList colorStateList) {
        if (this.bm != colorStateList) {
            this.bm = colorStateList;
            cv();
        }
    }

    public void setCounterTextAppearance(int i) {
        if (this.ao != i) {
            this.ao = i;
            cv();
        }
    }

    public void setCounterTextColor(ColorStateList colorStateList) {
        if (this.at != colorStateList) {
            this.at = colorStateList;
            cv();
        }
    }

    public void setCursorColor(ColorStateList colorStateList) {
        if (this.bb != colorStateList) {
            this.bb = colorStateList;
            da();
        }
    }

    public void setCursorErrorColor(ColorStateList colorStateList) {
        if (this.w != colorStateList) {
            this.w = colorStateList;
            if (cf() || (this.h != null && this.bh)) {
                da();
            }
        }
    }

    public void setDefaultHintTextColor(ColorStateList colorStateList) {
        this.am = colorStateList;
        this.bk = colorStateList;
        if (this.ak != null) {
            co(false, false);
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        cb(this, z);
        super.setEnabled(z);
    }

    public void setEndIconActivated(boolean z) {
        this.x.f20409d.setActivated(z);
    }

    public void setEndIconCheckable(boolean z) {
        this.x.f20409d.setCheckable(z);
    }

    public void setEndIconContentDescription(int i) {
        zq zqVar = this.x;
        CharSequence text = i != 0 ? zqVar.getResources().getText(i) : null;
        CheckableImageButton checkableImageButton = zqVar.f20409d;
        if (checkableImageButton.getContentDescription() != text) {
            checkableImageButton.setContentDescription(text);
        }
    }

    public void setEndIconContentDescription(CharSequence charSequence) {
        CheckableImageButton checkableImageButton = this.x.f20409d;
        if (checkableImageButton.getContentDescription() != charSequence) {
            checkableImageButton.setContentDescription(charSequence);
        }
    }

    public void setEndIconDrawable(int i) {
        zq zqVar = this.x;
        Drawable ai = i != 0 ? fso.ai(zqVar.getContext(), i) : null;
        TextInputLayout textInputLayout = zqVar.p;
        CheckableImageButton checkableImageButton = zqVar.f20409d;
        checkableImageButton.setImageDrawable(ai);
        if (ai != null) {
            cux.aq(textInputLayout, checkableImageButton, zqVar.j, zqVar.i);
            cux.w(textInputLayout, checkableImageButton, zqVar.j);
        }
    }

    public void setEndIconDrawable(Drawable drawable) {
        zq zqVar = this.x;
        TextInputLayout textInputLayout = zqVar.p;
        CheckableImageButton checkableImageButton = zqVar.f20409d;
        checkableImageButton.setImageDrawable(drawable);
        if (drawable != null) {
            cux.aq(textInputLayout, checkableImageButton, zqVar.j, zqVar.i);
            cux.w(textInputLayout, checkableImageButton, zqVar.j);
        }
    }

    public void setEndIconMinSize(int i) {
        zq zqVar = this.x;
        if (i < 0) {
            zqVar.getClass();
            throw new IllegalArgumentException("endIconSize cannot be less than 0");
        }
        if (i != zqVar.u) {
            zqVar.u = i;
            CheckableImageButton checkableImageButton = zqVar.f20409d;
            checkableImageButton.setMinimumWidth(i);
            checkableImageButton.setMinimumHeight(i);
            CheckableImageButton checkableImageButton2 = zqVar.h;
            checkableImageButton2.setMinimumWidth(i);
            checkableImageButton2.setMinimumHeight(i);
        }
    }

    public void setEndIconMode(int i) {
        this.x.aj(i);
    }

    public void setEndIconOnClickListener(View.OnClickListener onClickListener) {
        zq zqVar = this.x;
        CheckableImageButton checkableImageButton = zqVar.f20409d;
        View.OnLongClickListener onLongClickListener = zqVar.f20411f;
        checkableImageButton.setOnClickListener(onClickListener);
        cux.at(checkableImageButton, onLongClickListener);
    }

    public void setEndIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        zq zqVar = this.x;
        zqVar.f20411f = onLongClickListener;
        CheckableImageButton checkableImageButton = zqVar.f20409d;
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        cux.at(checkableImageButton, onLongClickListener);
    }

    public void setEndIconScaleType(ImageView.ScaleType scaleType) {
        zq zqVar = this.x;
        zqVar.s = scaleType;
        zqVar.f20409d.setScaleType(scaleType);
        zqVar.h.setScaleType(scaleType);
    }

    public void setEndIconTintList(ColorStateList colorStateList) {
        zq zqVar = this.x;
        if (zqVar.j != colorStateList) {
            zqVar.j = colorStateList;
            cux.aq(zqVar.p, zqVar.f20409d, colorStateList, zqVar.i);
        }
    }

    public void setEndIconTintMode(PorterDuff.Mode mode) {
        zq zqVar = this.x;
        if (zqVar.i != mode) {
            zqVar.i = mode;
            cux.aq(zqVar.p, zqVar.f20409d, zqVar.j, mode);
        }
    }

    public void setEndIconVisible(boolean z) {
        this.x.w(z);
    }

    public void setError(CharSequence charSequence) {
        baj bajVar = this.f9077ab;
        if (!bajVar.v) {
            if (TextUtils.isEmpty(charSequence)) {
                return;
            } else {
                setErrorEnabled(true);
            }
        }
        if (TextUtils.isEmpty(charSequence)) {
            bajVar.ag();
            return;
        }
        bajVar.aj();
        bajVar.q = charSequence;
        bajVar.f11163ab.setText(charSequence);
        int i = bajVar.f11168f;
        if (i != 1) {
            bajVar.f11166d = 1;
        }
        bajVar.ah(i, bajVar.f11166d, bajVar.ac(bajVar.f11163ab, charSequence));
    }

    public void setErrorAccessibilityLiveRegion(int i) {
        baj bajVar = this.f9077ab;
        bajVar.x = i;
        AppCompatTextView appCompatTextView = bajVar.f11163ab;
        if (appCompatTextView != null) {
            appCompatTextView.setAccessibilityLiveRegion(i);
        }
    }

    public void setErrorContentDescription(CharSequence charSequence) {
        baj bajVar = this.f9077ab;
        bajVar.p = charSequence;
        AppCompatTextView appCompatTextView = bajVar.f11163ab;
        if (appCompatTextView != null) {
            appCompatTextView.setContentDescription(charSequence);
        }
    }

    public void setErrorEnabled(boolean z) {
        baj bajVar = this.f9077ab;
        TextInputLayout textInputLayout = bajVar.f11164b;
        if (bajVar.v == z) {
            return;
        }
        bajVar.aj();
        if (z) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(bajVar.aa, null);
            bajVar.f11163ab = appCompatTextView;
            appCompatTextView.setId(cn.trinea.android.developertools.R.id.textinput_error);
            bajVar.f11163ab.setTextAlignment(5);
            Typeface typeface = bajVar.h;
            if (typeface != null) {
                bajVar.f11163ab.setTypeface(typeface);
            }
            int i = bajVar.l;
            bajVar.l = i;
            AppCompatTextView appCompatTextView2 = bajVar.f11163ab;
            if (appCompatTextView2 != null) {
                bajVar.f11164b.ch(appCompatTextView2, i);
            }
            ColorStateList colorStateList = bajVar.m;
            bajVar.m = colorStateList;
            AppCompatTextView appCompatTextView3 = bajVar.f11163ab;
            if (appCompatTextView3 != null && colorStateList != null) {
                appCompatTextView3.setTextColor(colorStateList);
            }
            CharSequence charSequence = bajVar.p;
            bajVar.p = charSequence;
            AppCompatTextView appCompatTextView4 = bajVar.f11163ab;
            if (appCompatTextView4 != null) {
                appCompatTextView4.setContentDescription(charSequence);
            }
            int i2 = bajVar.x;
            bajVar.x = i2;
            AppCompatTextView appCompatTextView5 = bajVar.f11163ab;
            if (appCompatTextView5 != null) {
                appCompatTextView5.setAccessibilityLiveRegion(i2);
            }
            bajVar.f11163ab.setVisibility(4);
            bajVar.af(bajVar.f11163ab, 0);
        } else {
            bajVar.ag();
            bajVar.ak(bajVar.f11163ab, 0);
            bajVar.f11163ab = null;
            textInputLayout.cw();
            textInputLayout.cc();
        }
        bajVar.v = z;
    }

    public void setErrorIconDrawable(int i) {
        zq zqVar = this.x;
        zqVar.af(i != 0 ? fso.ai(zqVar.getContext(), i) : null);
        cux.w(zqVar.p, zqVar.h, zqVar.m);
    }

    public void setErrorIconDrawable(Drawable drawable) {
        this.x.af(drawable);
    }

    public void setErrorIconOnClickListener(View.OnClickListener onClickListener) {
        zq zqVar = this.x;
        CheckableImageButton checkableImageButton = zqVar.h;
        View.OnLongClickListener onLongClickListener = zqVar.v;
        checkableImageButton.setOnClickListener(onClickListener);
        cux.at(checkableImageButton, onLongClickListener);
    }

    public void setErrorIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        zq zqVar = this.x;
        zqVar.v = onLongClickListener;
        CheckableImageButton checkableImageButton = zqVar.h;
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        cux.at(checkableImageButton, onLongClickListener);
    }

    public void setErrorIconTintList(ColorStateList colorStateList) {
        zq zqVar = this.x;
        if (zqVar.m != colorStateList) {
            zqVar.m = colorStateList;
            cux.aq(zqVar.p, zqVar.h, colorStateList, zqVar.n);
        }
    }

    public void setErrorIconTintMode(PorterDuff.Mode mode) {
        zq zqVar = this.x;
        if (zqVar.n != mode) {
            zqVar.n = mode;
            cux.aq(zqVar.p, zqVar.h, zqVar.m, mode);
        }
    }

    public void setErrorTextAppearance(int i) {
        baj bajVar = this.f9077ab;
        bajVar.l = i;
        AppCompatTextView appCompatTextView = bajVar.f11163ab;
        if (appCompatTextView != null) {
            bajVar.f11164b.ch(appCompatTextView, i);
        }
    }

    public void setErrorTextColor(ColorStateList colorStateList) {
        baj bajVar = this.f9077ab;
        bajVar.m = colorStateList;
        AppCompatTextView appCompatTextView = bajVar.f11163ab;
        if (appCompatTextView == null || colorStateList == null) {
            return;
        }
        appCompatTextView.setTextColor(colorStateList);
    }

    public void setExpandedHintEnabled(boolean z) {
        if (this.ap != z) {
            this.ap = z;
            co(false, false);
        }
    }

    public void setHelperText(CharSequence charSequence) {
        boolean isEmpty = TextUtils.isEmpty(charSequence);
        baj bajVar = this.f9077ab;
        if (isEmpty) {
            if (bajVar.z) {
                setHelperTextEnabled(false);
                return;
            }
            return;
        }
        if (!bajVar.z) {
            setHelperTextEnabled(true);
        }
        bajVar.aj();
        bajVar.n = charSequence;
        bajVar.f11167e.setText(charSequence);
        int i = bajVar.f11168f;
        if (i != 2) {
            bajVar.f11166d = 2;
        }
        bajVar.ah(i, bajVar.f11166d, bajVar.ac(bajVar.f11167e, charSequence));
    }

    public void setHelperTextColor(ColorStateList colorStateList) {
        baj bajVar = this.f9077ab;
        bajVar.w = colorStateList;
        AppCompatTextView appCompatTextView = bajVar.f11167e;
        if (appCompatTextView == null || colorStateList == null) {
            return;
        }
        appCompatTextView.setTextColor(colorStateList);
    }

    public void setHelperTextEnabled(boolean z) {
        baj bajVar = this.f9077ab;
        TextInputLayout textInputLayout = bajVar.f11164b;
        if (bajVar.z == z) {
            return;
        }
        bajVar.aj();
        if (z) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(bajVar.aa, null);
            bajVar.f11167e = appCompatTextView;
            appCompatTextView.setId(cn.trinea.android.developertools.R.id.textinput_helper_text);
            bajVar.f11167e.setTextAlignment(5);
            Typeface typeface = bajVar.h;
            if (typeface != null) {
                bajVar.f11167e.setTypeface(typeface);
            }
            bajVar.f11167e.setVisibility(4);
            bajVar.f11167e.setAccessibilityLiveRegion(1);
            int i = bajVar.f11162a;
            bajVar.f11162a = i;
            AppCompatTextView appCompatTextView2 = bajVar.f11167e;
            if (appCompatTextView2 != null) {
                bff.g(appCompatTextView2, i);
            }
            ColorStateList colorStateList = bajVar.w;
            bajVar.w = colorStateList;
            AppCompatTextView appCompatTextView3 = bajVar.f11167e;
            if (appCompatTextView3 != null && colorStateList != null) {
                appCompatTextView3.setTextColor(colorStateList);
            }
            bajVar.af(bajVar.f11167e, 1);
            bajVar.f11167e.setAccessibilityDelegate(new eev(bajVar));
        } else {
            bajVar.aj();
            int i2 = bajVar.f11168f;
            if (i2 == 2) {
                bajVar.f11166d = 0;
            }
            bajVar.ah(i2, bajVar.f11166d, bajVar.ac(bajVar.f11167e, ""));
            bajVar.ak(bajVar.f11167e, 1);
            bajVar.f11167e = null;
            textInputLayout.cw();
            textInputLayout.cc();
        }
        bajVar.z = z;
    }

    public void setHelperTextTextAppearance(int i) {
        baj bajVar = this.f9077ab;
        bajVar.f11162a = i;
        AppCompatTextView appCompatTextView = bajVar.f11167e;
        if (appCompatTextView != null) {
            bff.g(appCompatTextView, i);
        }
    }

    public void setHint(int i) {
        setHint(i != 0 ? getResources().getText(i) : null);
    }

    public void setHint(CharSequence charSequence) {
        if (this.t) {
            setHintInternal(charSequence);
            sendAccessibilityEvent(2048);
        }
    }

    public void setHintAnimationEnabled(boolean z) {
        this.f9082f = z;
    }

    public void setHintEnabled(boolean z) {
        if (z != this.t) {
            this.t = z;
            if (z) {
                CharSequence hint = this.ak.getHint();
                if (!TextUtils.isEmpty(hint)) {
                    if (TextUtils.isEmpty(this.ah)) {
                        setHint(hint);
                    }
                    this.ak.setHint((CharSequence) null);
                }
                this.ad = true;
            } else {
                this.ad = false;
                if (!TextUtils.isEmpty(this.ah) && TextUtils.isEmpty(this.ak.getHint())) {
                    this.ak.setHint(this.ah);
                }
                setHintInternal(null);
            }
            if (this.ak != null) {
                cn();
            }
        }
    }

    public void setHintMaxLines(int i) {
        hdh hdhVar = this.n;
        if (i != hdhVar.bd) {
            hdhVar.bd = i;
            hdhVar.bx(false);
        }
        if (i != hdhVar.az) {
            hdhVar.az = i;
            hdhVar.bx(false);
        }
        requestLayout();
    }

    public void setHintTextAppearance(int i) {
        hdh hdhVar = this.n;
        TextInputLayout textInputLayout = hdhVar.w;
        asw aswVar = new asw(textInputLayout.getContext(), i);
        ColorStateList colorStateList = aswVar.f10778b;
        if (colorStateList != null) {
            hdhVar.f19270d = colorStateList;
        }
        float f2 = aswVar.f10782f;
        if (f2 != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            hdhVar.aq = f2;
        }
        ColorStateList colorStateList2 = aswVar.h;
        if (colorStateList2 != null) {
            hdhVar.o = colorStateList2;
        }
        hdhVar.as = aswVar.i;
        hdhVar.v = aswVar.p;
        hdhVar.ba = aswVar.f10777a;
        hdhVar.af = aswVar.n;
        aor aorVar = hdhVar.f19266a;
        if (aorVar != null) {
            aorVar.f10582c = true;
        }
        fc fcVar = new fc(6, hdhVar);
        aswVar.s();
        hdhVar.f19266a = new aor(fcVar, aswVar.j);
        aswVar.u(textInputLayout.getContext(), hdhVar.f19266a);
        hdhVar.bx(false);
        this.bk = hdhVar.f19270d;
        if (this.ak != null) {
            co(false, false);
            cn();
        }
    }

    public void setHintTextColor(ColorStateList colorStateList) {
        if (this.bk != colorStateList) {
            if (this.am == null) {
                hdh hdhVar = this.n;
                if (hdhVar.f19270d != colorStateList) {
                    hdhVar.f19270d = colorStateList;
                    hdhVar.bx(false);
                }
            }
            this.bk = colorStateList;
            if (this.ak != null) {
                co(false, false);
            }
        }
    }

    public void setLengthCounter(dcn dcnVar) {
        this.r = dcnVar;
    }

    public void setMaxEms(int i) {
        this.f9080d = i;
        EditText editText = this.ak;
        if (editText == null || i == -1) {
            return;
        }
        editText.setMaxEms(i);
    }

    public void setMaxWidth(int i) {
        this.u = i;
        EditText editText = this.ak;
        if (editText == null || i == -1) {
            return;
        }
        editText.setMaxWidth(i);
    }

    public void setMaxWidthResource(int i) {
        setMaxWidth(getContext().getResources().getDimensionPixelSize(i));
    }

    public void setMinEms(int i) {
        this.m = i;
        EditText editText = this.ak;
        if (editText == null || i == -1) {
            return;
        }
        editText.setMinEms(i);
    }

    public void setMinWidth(int i) {
        this.bf = i;
        EditText editText = this.ak;
        if (editText == null || i == -1) {
            return;
        }
        editText.setMinWidth(i);
    }

    public void setMinWidthResource(int i) {
        setMinWidth(getContext().getResources().getDimensionPixelSize(i));
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(int i) {
        zq zqVar = this.x;
        zqVar.f20409d.setContentDescription(i != 0 ? zqVar.getResources().getText(i) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(CharSequence charSequence) {
        this.x.f20409d.setContentDescription(charSequence);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(int i) {
        zq zqVar = this.x;
        zqVar.f20409d.setImageDrawable(i != 0 ? fso.ai(zqVar.getContext(), i) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(Drawable drawable) {
        this.x.f20409d.setImageDrawable(drawable);
    }

    @Deprecated
    public void setPasswordVisibilityToggleEnabled(boolean z) {
        zq zqVar = this.x;
        if (z && zqVar.q != 1) {
            zqVar.aj(1);
        } else if (z) {
            zqVar.getClass();
        } else {
            zqVar.aj(0);
        }
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintList(ColorStateList colorStateList) {
        zq zqVar = this.x;
        zqVar.j = colorStateList;
        cux.aq(zqVar.p, zqVar.f20409d, colorStateList, zqVar.i);
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintMode(PorterDuff.Mode mode) {
        zq zqVar = this.x;
        zqVar.i = mode;
        cux.aq(zqVar.p, zqVar.f20409d, zqVar.j, mode);
    }

    public void setPlaceholderText(CharSequence charSequence) {
        if (this.ac == null) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(getContext(), null);
            this.ac = appCompatTextView;
            appCompatTextView.setId(cn.trinea.android.developertools.R.id.textinput_placeholder);
            this.ac.setImportantForAccessibility(1);
            this.ac.setAccessibilityLiveRegion(1);
            ud cp = cp();
            this.au = cp;
            cp.aw = 67L;
            this.o = cp();
            setPlaceholderTextAppearance(this.bi);
            setPlaceholderTextColor(this.p);
            goi.ab(this.ac, new glf(4));
        }
        if (TextUtils.isEmpty(charSequence)) {
            setPlaceholderTextEnabled(false);
        } else {
            if (!this.i) {
                setPlaceholderTextEnabled(true);
            }
            this.ae = charSequence;
        }
        EditText editText = this.ak;
        cy(editText != null ? editText.getText() : null);
    }

    public void setPlaceholderTextAppearance(int i) {
        this.bi = i;
        AppCompatTextView appCompatTextView = this.ac;
        if (appCompatTextView != null) {
            bff.g(appCompatTextView, i);
        }
    }

    public void setPlaceholderTextColor(ColorStateList colorStateList) {
        if (this.p != colorStateList) {
            this.p = colorStateList;
            AppCompatTextView appCompatTextView = this.ac;
            if (appCompatTextView == null || colorStateList == null) {
                return;
            }
            appCompatTextView.setTextColor(colorStateList);
        }
    }

    public void setPrefixText(CharSequence charSequence) {
        emu emuVar = this.bg;
        emuVar.getClass();
        emuVar.f15818d = TextUtils.isEmpty(charSequence) ? null : charSequence;
        emuVar.i.setText(charSequence);
        emuVar.l();
    }

    public void setPrefixTextAppearance(int i) {
        bff.g(this.bg.i, i);
    }

    public void setPrefixTextColor(ColorStateList colorStateList) {
        this.bg.i.setTextColor(colorStateList);
    }

    public void setShapeAppearanceModel(cjg cjgVar) {
        ddm ddmVar = this.by;
        if (ddmVar == null || ddmVar.ds.h == cjgVar) {
            return;
        }
        this.bj = cjgVar;
        cx();
    }

    public void setStartIconCheckable(boolean z) {
        this.bg.f15819e.setCheckable(z);
    }

    public void setStartIconContentDescription(int i) {
        setStartIconContentDescription(i != 0 ? getResources().getText(i) : null);
    }

    public void setStartIconContentDescription(CharSequence charSequence) {
        CheckableImageButton checkableImageButton = this.bg.f15819e;
        if (checkableImageButton.getContentDescription() != charSequence) {
            checkableImageButton.setContentDescription(charSequence);
        }
    }

    public void setStartIconDrawable(int i) {
        setStartIconDrawable(i != 0 ? fso.ai(getContext(), i) : null);
    }

    public void setStartIconDrawable(Drawable drawable) {
        this.bg.n(drawable);
    }

    public void setStartIconMinSize(int i) {
        emu emuVar = this.bg;
        if (i < 0) {
            emuVar.getClass();
            throw new IllegalArgumentException("startIconSize cannot be less than 0");
        }
        if (i != emuVar.f15816b) {
            emuVar.f15816b = i;
            CheckableImageButton checkableImageButton = emuVar.f15819e;
            checkableImageButton.setMinimumWidth(i);
            checkableImageButton.setMinimumHeight(i);
        }
    }

    public void setStartIconOnClickListener(View.OnClickListener onClickListener) {
        emu emuVar = this.bg;
        CheckableImageButton checkableImageButton = emuVar.f15819e;
        View.OnLongClickListener onLongClickListener = emuVar.h;
        checkableImageButton.setOnClickListener(onClickListener);
        cux.at(checkableImageButton, onLongClickListener);
    }

    public void setStartIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        emu emuVar = this.bg;
        emuVar.h = onLongClickListener;
        CheckableImageButton checkableImageButton = emuVar.f15819e;
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        cux.at(checkableImageButton, onLongClickListener);
    }

    public void setStartIconScaleType(ImageView.ScaleType scaleType) {
        emu emuVar = this.bg;
        emuVar.f15815a = scaleType;
        emuVar.f15819e.setScaleType(scaleType);
    }

    public void setStartIconTintList(ColorStateList colorStateList) {
        emu emuVar = this.bg;
        if (emuVar.f15820f != colorStateList) {
            emuVar.f15820f = colorStateList;
            cux.aq(emuVar.f15821g, emuVar.f15819e, colorStateList, emuVar.j);
        }
    }

    public void setStartIconTintMode(PorterDuff.Mode mode) {
        emu emuVar = this.bg;
        if (emuVar.j != mode) {
            emuVar.j = mode;
            cux.aq(emuVar.f15821g, emuVar.f15819e, emuVar.f15820f, mode);
        }
    }

    public void setStartIconVisible(boolean z) {
        this.bg.o(z);
    }

    public void setSuffixText(CharSequence charSequence) {
        zq zqVar = this.x;
        zqVar.getClass();
        zqVar.f20407b = TextUtils.isEmpty(charSequence) ? null : charSequence;
        zqVar.t.setText(charSequence);
        zqVar.y();
    }

    public void setSuffixTextAppearance(int i) {
        bff.g(this.x.t, i);
    }

    public void setSuffixTextColor(ColorStateList colorStateList) {
        this.x.t.setTextColor(colorStateList);
    }

    public void setTextInputAccessibilityDelegate(dgj dgjVar) {
        EditText editText = this.ak;
        if (editText != null) {
            goi.ab(editText, dgjVar);
        }
    }

    public void setTypeface(Typeface typeface) {
        if (typeface != this.f9079c) {
            this.f9079c = typeface;
            this.n.bp(typeface);
            baj bajVar = this.f9077ab;
            if (typeface != bajVar.h) {
                bajVar.h = typeface;
                AppCompatTextView appCompatTextView = bajVar.f11163ab;
                if (appCompatTextView != null) {
                    appCompatTextView.setTypeface(typeface);
                }
                AppCompatTextView appCompatTextView2 = bajVar.f11167e;
                if (appCompatTextView2 != null) {
                    appCompatTextView2.setTypeface(typeface);
                }
            }
            AppCompatTextView appCompatTextView3 = this.h;
            if (appCompatTextView3 != null) {
                appCompatTextView3.setTypeface(typeface);
            }
        }
    }
}

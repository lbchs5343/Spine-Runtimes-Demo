package g;

import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import cn.trinea.android.developertools.R;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.textfield.TextInputLayout;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* loaded from: classes3.dex */
public final class zq extends LinearLayout {

    /* renamed from: a, reason: collision with root package name */
    public final pd f20406a;

    /* renamed from: b, reason: collision with root package name */
    public CharSequence f20407b;

    /* renamed from: c, reason: collision with root package name */
    public final AccessibilityManager f20408c;

    /* renamed from: d, reason: collision with root package name */
    public final CheckableImageButton f20409d;

    /* renamed from: e, reason: collision with root package name */
    public final dse f20410e;

    /* renamed from: f, reason: collision with root package name */
    public View.OnLongClickListener f20411f;

    /* renamed from: g, reason: collision with root package name */
    public final LinkedHashSet f20412g;
    public final CheckableImageButton h;
    public PorterDuff.Mode i;
    public ColorStateList j;
    public AccessibilityManager.TouchExplorationStateChangeListener k;
    public EditText l;
    public ColorStateList m;
    public PorterDuff.Mode n;
    public boolean o;
    public final TextInputLayout p;
    public int q;
    public final FrameLayout r;
    public ImageView.ScaleType s;
    public final AppCompatTextView t;
    public int u;
    public View.OnLongClickListener v;

    public zq(TextInputLayout textInputLayout, dzh dzhVar) {
        super(textInputLayout.getContext());
        CharSequence text;
        this.q = 0;
        this.f20412g = new LinkedHashSet();
        this.f20410e = new dse(this);
        is isVar = new is(this);
        this.f20408c = (AccessibilityManager) getContext().getSystemService("accessibility");
        this.p = textInputLayout;
        setVisibility(8);
        setOrientation(0);
        setLayoutParams(new FrameLayout.LayoutParams(-2, -1, 8388613));
        FrameLayout frameLayout = new FrameLayout(getContext());
        this.r = frameLayout;
        frameLayout.setVisibility(8);
        frameLayout.setLayoutParams(new LinearLayout.LayoutParams(-2, -1));
        LayoutInflater from = LayoutInflater.from(getContext());
        CheckableImageButton ac = ac(this, from, R.id.text_input_error_icon);
        this.h = ac;
        CheckableImageButton ac2 = ac(frameLayout, from, R.id.text_input_end_icon);
        this.f20409d = ac2;
        this.f20406a = new pd(this, dzhVar);
        AppCompatTextView appCompatTextView = new AppCompatTextView(getContext(), null);
        this.t = appCompatTextView;
        TypedArray typedArray = (TypedArray) dzhVar.f15121f;
        if (typedArray.hasValue(38)) {
            this.m = gs.ar(getContext(), dzhVar, 38);
        }
        if (typedArray.hasValue(39)) {
            this.n = ckd.r(typedArray.getInt(39, -1), null);
        }
        if (typedArray.hasValue(37)) {
            af(dzhVar.o(37));
        }
        ac.setContentDescription(getResources().getText(R.string.error_icon_content_description));
        ac.setImportantForAccessibility(2);
        ac.setClickable(false);
        ac.setPressable(false);
        ac.setCheckable(false);
        ac.setFocusable(false);
        if (!typedArray.hasValue(54)) {
            if (typedArray.hasValue(32)) {
                this.j = gs.ar(getContext(), dzhVar, 32);
            }
            if (typedArray.hasValue(33)) {
                this.i = ckd.r(typedArray.getInt(33, -1), null);
            }
        }
        if (typedArray.hasValue(30)) {
            aj(typedArray.getInt(30, 0));
            if (typedArray.hasValue(27) && ac2.getContentDescription() != (text = typedArray.getText(27))) {
                ac2.setContentDescription(text);
            }
            ac2.setCheckable(typedArray.getBoolean(26, true));
        } else if (typedArray.hasValue(54)) {
            if (typedArray.hasValue(55)) {
                this.j = gs.ar(getContext(), dzhVar, 55);
            }
            if (typedArray.hasValue(56)) {
                this.i = ckd.r(typedArray.getInt(56, -1), null);
            }
            aj(typedArray.getBoolean(54, false) ? 1 : 0);
            CharSequence text2 = typedArray.getText(52);
            if (ac2.getContentDescription() != text2) {
                ac2.setContentDescription(text2);
            }
        }
        int dimensionPixelSize = typedArray.getDimensionPixelSize(29, getResources().getDimensionPixelSize(R.dimen.mtrl_min_touch_target_size));
        if (dimensionPixelSize < 0) {
            throw new IllegalArgumentException("endIconSize cannot be less than 0");
        }
        if (dimensionPixelSize != this.u) {
            this.u = dimensionPixelSize;
            ac2.setMinimumWidth(dimensionPixelSize);
            ac2.setMinimumHeight(dimensionPixelSize);
            ac.setMinimumWidth(dimensionPixelSize);
            ac.setMinimumHeight(dimensionPixelSize);
        }
        if (typedArray.hasValue(31)) {
            ImageView.ScaleType aw = cux.aw(typedArray.getInt(31, -1));
            this.s = aw;
            ac2.setScaleType(aw);
            ac.setScaleType(aw);
        }
        appCompatTextView.setVisibility(8);
        appCompatTextView.setId(R.id.textinput_suffix_text);
        appCompatTextView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2, 80.0f));
        appCompatTextView.setAccessibilityLiveRegion(1);
        bff.g(appCompatTextView, typedArray.getResourceId(73, 0));
        if (typedArray.hasValue(74)) {
            appCompatTextView.setTextColor(dzhVar.aa(74));
        }
        CharSequence text3 = typedArray.getText(72);
        this.f20407b = TextUtils.isEmpty(text3) ? null : text3;
        appCompatTextView.setText(text3);
        y();
        frameLayout.addView(ac2);
        addView(appCompatTextView);
        addView(frameLayout);
        addView(ac);
        textInputLayout.bw.add(isVar);
        if (textInputLayout.ak != null) {
            isVar.b(textInputLayout);
        }
        addOnAttachStateChangeListener(new bwh(2, this));
    }

    public final void aa() {
        CheckableImageButton checkableImageButton = this.h;
        Drawable drawable = checkableImageButton.getDrawable();
        TextInputLayout textInputLayout = this.p;
        checkableImageButton.setVisibility((drawable != null && textInputLayout.f9077ab.v && textInputLayout.cf()) ? 0 : 8);
        x();
        ae();
        if (this.q != 0) {
            return;
        }
        textInputLayout.cq();
    }

    public final boolean ab() {
        return this.h.getVisibility() == 0;
    }

    public final CheckableImageButton ac(ViewGroup viewGroup, LayoutInflater layoutInflater, int i) {
        Drawable b2;
        CheckableImageButton checkableImageButton = (CheckableImageButton) layoutInflater.inflate(R.layout.design_text_input_end_icon, viewGroup, false);
        checkableImageButton.setId(i);
        if (Build.VERSION.SDK_INT < 23) {
            b2 = fsa.b(checkableImageButton.getContext(), (int) TypedValue.applyDimension(1, 4, checkableImageButton.getContext().getResources().getDisplayMetrics()));
            checkableImageButton.setBackground(b2);
        }
        if (gs.m(getContext())) {
            ((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams()).setMarginStart(0);
        }
        return checkableImageButton;
    }

    public final void ad(boolean z) {
        boolean z2;
        boolean isActivated;
        boolean z3;
        bhb ag = ag();
        boolean aa = ag.aa();
        CheckableImageButton checkableImageButton = this.f20409d;
        boolean z4 = true;
        if (!aa || (z3 = checkableImageButton.f9053e) == ag.ad()) {
            z2 = false;
        } else {
            checkableImageButton.setChecked(!z3);
            z2 = true;
        }
        if (!(ag instanceof chp) || (isActivated = checkableImageButton.isActivated()) == ag.ag()) {
            z4 = z2;
        } else {
            checkableImageButton.setActivated(!isActivated);
        }
        if (z || z4) {
            cux.w(this.p, checkableImageButton, this.j);
        }
    }

    public final void ae() {
        TextInputLayout textInputLayout = this.p;
        if (textInputLayout.ak == null) {
            return;
        }
        this.t.setPaddingRelative(getContext().getResources().getDimensionPixelSize(R.dimen.material_input_text_to_prefix_suffix_padding), textInputLayout.ak.getPaddingTop(), (z() || ab()) ? 0 : textInputLayout.ak.getPaddingEnd(), textInputLayout.ak.getPaddingBottom());
    }

    public final void af(Drawable drawable) {
        CheckableImageButton checkableImageButton = this.h;
        checkableImageButton.setImageDrawable(drawable);
        aa();
        cux.aq(this.p, checkableImageButton, this.m, this.n);
    }

    public final bhb ag() {
        bhb edbVar;
        int i = this.q;
        pd pdVar = this.f20406a;
        SparseArray sparseArray = (SparseArray) pdVar.f19807d;
        bhb bhbVar = (bhb) sparseArray.get(i);
        if (bhbVar != null) {
            return bhbVar;
        }
        zq zqVar = (zq) pdVar.f19804a;
        if (i == -1) {
            edbVar = new edb(zqVar, 0);
        } else if (i == 0) {
            edbVar = new edb(zqVar, 1);
        } else if (i == 1) {
            edbVar = new gxp(zqVar, pdVar.f19806c);
        } else if (i == 2) {
            edbVar = new azm(zqVar);
        } else {
            if (i != 3) {
                throw new IllegalArgumentException(awf.ac(i, "Invalid end icon mode: "));
            }
            edbVar = new chp(zqVar);
        }
        sparseArray.append(i, edbVar);
        return edbVar;
    }

    public final void ah(bhb bhbVar) {
        if (this.l == null) {
            return;
        }
        if (bhbVar.k() != null) {
            this.l.setOnFocusChangeListener(bhbVar.k());
        }
        if (bhbVar.t() != null) {
            this.f20409d.setOnFocusChangeListener(bhbVar.t());
        }
    }

    public final int ai() {
        int marginStart;
        if (z() || ab()) {
            CheckableImageButton checkableImageButton = this.f20409d;
            marginStart = ((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams()).getMarginStart() + checkableImageButton.getMeasuredWidth();
        } else {
            marginStart = 0;
        }
        return this.t.getPaddingEnd() + getPaddingEnd() + marginStart;
    }

    public final void aj(int i) {
        if (this.q == i) {
            return;
        }
        bhb ag = ag();
        AccessibilityManager.TouchExplorationStateChangeListener touchExplorationStateChangeListener = this.k;
        AccessibilityManager accessibilityManager = this.f20408c;
        if (touchExplorationStateChangeListener != null && accessibilityManager != null) {
            accessibilityManager.removeTouchExplorationStateChangeListener(touchExplorationStateChangeListener);
        }
        this.k = null;
        ag.o();
        this.q = i;
        Iterator it = this.f20412g.iterator();
        if (it.hasNext()) {
            throw tn.c(it);
        }
        w(i != 0);
        bhb ag2 = ag();
        int i2 = this.f20406a.f19805b;
        if (i2 == 0) {
            i2 = ag2.j();
        }
        Drawable ai = i2 != 0 ? fso.ai(getContext(), i2) : null;
        CheckableImageButton checkableImageButton = this.f20409d;
        checkableImageButton.setImageDrawable(ai);
        TextInputLayout textInputLayout = this.p;
        if (ai != null) {
            cux.aq(textInputLayout, checkableImageButton, this.j, this.i);
            cux.w(textInputLayout, checkableImageButton, this.j);
        }
        int s = ag2.s();
        CharSequence text = s != 0 ? getResources().getText(s) : null;
        if (checkableImageButton.getContentDescription() != text) {
            checkableImageButton.setContentDescription(text);
        }
        checkableImageButton.setCheckable(ag2.aa());
        if (!ag2.ae(textInputLayout.getBoxBackgroundMode())) {
            throw new IllegalStateException("The current box background mode " + textInputLayout.getBoxBackgroundMode() + " is not supported by the end icon mode " + i);
        }
        ag2.u();
        AccessibilityManager.TouchExplorationStateChangeListener z = ag2.z();
        this.k = z;
        if (z != null && accessibilityManager != null && isAttachedToWindow()) {
            accessibilityManager.addTouchExplorationStateChangeListener(this.k);
        }
        View.OnClickListener n = ag2.n();
        View.OnLongClickListener onLongClickListener = this.f20411f;
        checkableImageButton.setOnClickListener(n);
        cux.at(checkableImageButton, onLongClickListener);
        EditText editText = this.l;
        if (editText != null) {
            ag2.q(editText);
            ah(ag2);
        }
        cux.aq(textInputLayout, checkableImageButton, this.j, this.i);
        ad(true);
    }

    public final void w(boolean z) {
        if (z() != z) {
            this.f20409d.setVisibility(z ? 0 : 8);
            x();
            ae();
            this.p.cq();
        }
    }

    public final void x() {
        this.r.setVisibility((this.f20409d.getVisibility() != 0 || ab()) ? 8 : 0);
        setVisibility((z() || ab() || ((this.f20407b == null || this.o) ? '\b' : (char) 0) == 0) ? 0 : 8);
    }

    public final void y() {
        AppCompatTextView appCompatTextView = this.t;
        int visibility = appCompatTextView.getVisibility();
        int i = (this.f20407b == null || this.o) ? 8 : 0;
        if (visibility != i) {
            ag().p(i == 0);
        }
        x();
        appCompatTextView.setVisibility(i);
        this.p.cq();
    }

    public final boolean z() {
        return this.r.getVisibility() == 0 && this.f20409d.getVisibility() == 0;
    }
}

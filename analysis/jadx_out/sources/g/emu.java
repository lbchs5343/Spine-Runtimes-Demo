package g;

import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import cn.trinea.android.developertools.R;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.textfield.TextInputLayout;

/* loaded from: classes3.dex */
public final class emu extends LinearLayout {

    /* renamed from: a, reason: collision with root package name */
    public ImageView.ScaleType f15815a;

    /* renamed from: b, reason: collision with root package name */
    public int f15816b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f15817c;

    /* renamed from: d, reason: collision with root package name */
    public CharSequence f15818d;

    /* renamed from: e, reason: collision with root package name */
    public final CheckableImageButton f15819e;

    /* renamed from: f, reason: collision with root package name */
    public ColorStateList f15820f;

    /* renamed from: g, reason: collision with root package name */
    public final TextInputLayout f15821g;
    public View.OnLongClickListener h;
    public final AppCompatTextView i;
    public PorterDuff.Mode j;

    public emu(TextInputLayout textInputLayout, dzh dzhVar) {
        super(textInputLayout.getContext());
        CharSequence text;
        Drawable b2;
        this.f15821g = textInputLayout;
        setVisibility(8);
        setOrientation(0);
        setLayoutParams(new FrameLayout.LayoutParams(-2, -1, 8388611));
        CheckableImageButton checkableImageButton = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(R.layout.design_text_input_start_icon, (ViewGroup) this, false);
        this.f15819e = checkableImageButton;
        if (Build.VERSION.SDK_INT < 23) {
            b2 = fsa.b(checkableImageButton.getContext(), (int) TypedValue.applyDimension(1, 4, checkableImageButton.getContext().getResources().getDisplayMetrics()));
            checkableImageButton.setBackground(b2);
        }
        AppCompatTextView appCompatTextView = new AppCompatTextView(getContext(), null);
        this.i = appCompatTextView;
        if (gs.m(getContext())) {
            ((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams()).setMarginEnd(0);
        }
        View.OnLongClickListener onLongClickListener = this.h;
        checkableImageButton.setOnClickListener(null);
        cux.at(checkableImageButton, onLongClickListener);
        this.h = null;
        checkableImageButton.setOnLongClickListener(null);
        cux.at(checkableImageButton, null);
        TypedArray typedArray = (TypedArray) dzhVar.f15121f;
        if (typedArray.hasValue(70)) {
            this.f15820f = gs.ar(getContext(), dzhVar, 70);
        }
        if (typedArray.hasValue(71)) {
            this.j = ckd.r(typedArray.getInt(71, -1), null);
        }
        if (typedArray.hasValue(67)) {
            n(dzhVar.o(67));
            if (typedArray.hasValue(66) && checkableImageButton.getContentDescription() != (text = typedArray.getText(66))) {
                checkableImageButton.setContentDescription(text);
            }
            checkableImageButton.setCheckable(typedArray.getBoolean(65, true));
        }
        int dimensionPixelSize = typedArray.getDimensionPixelSize(68, getResources().getDimensionPixelSize(R.dimen.mtrl_min_touch_target_size));
        if (dimensionPixelSize < 0) {
            throw new IllegalArgumentException("startIconSize cannot be less than 0");
        }
        if (dimensionPixelSize != this.f15816b) {
            this.f15816b = dimensionPixelSize;
            checkableImageButton.setMinimumWidth(dimensionPixelSize);
            checkableImageButton.setMinimumHeight(dimensionPixelSize);
        }
        if (typedArray.hasValue(69)) {
            ImageView.ScaleType aw = cux.aw(typedArray.getInt(69, -1));
            this.f15815a = aw;
            checkableImageButton.setScaleType(aw);
        }
        appCompatTextView.setVisibility(8);
        appCompatTextView.setId(R.id.textinput_prefix_text);
        appCompatTextView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        appCompatTextView.setAccessibilityLiveRegion(1);
        bff.g(appCompatTextView, typedArray.getResourceId(61, 0));
        if (typedArray.hasValue(62)) {
            appCompatTextView.setTextColor(dzhVar.aa(62));
        }
        CharSequence text2 = typedArray.getText(60);
        this.f15818d = TextUtils.isEmpty(text2) ? null : text2;
        appCompatTextView.setText(text2);
        l();
        addView(checkableImageButton);
        addView(appCompatTextView);
    }

    public final void k() {
        EditText editText = this.f15821g.ak;
        if (editText == null) {
            return;
        }
        this.i.setPaddingRelative(this.f15819e.getVisibility() == 0 ? 0 : editText.getPaddingStart(), editText.getCompoundPaddingTop(), getContext().getResources().getDimensionPixelSize(R.dimen.material_input_text_to_prefix_suffix_padding), editText.getCompoundPaddingBottom());
    }

    public final void l() {
        int i = (this.f15818d == null || this.f15817c) ? 8 : 0;
        setVisibility((this.f15819e.getVisibility() == 0 || i == 0) ? 0 : 8);
        this.i.setVisibility(i);
        this.f15821g.cq();
    }

    public final int m() {
        int i;
        CheckableImageButton checkableImageButton = this.f15819e;
        if (checkableImageButton.getVisibility() == 0) {
            i = ((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams()).getMarginEnd() + checkableImageButton.getMeasuredWidth();
        } else {
            i = 0;
        }
        return this.i.getPaddingStart() + getPaddingStart() + i;
    }

    public final void n(Drawable drawable) {
        CheckableImageButton checkableImageButton = this.f15819e;
        checkableImageButton.setImageDrawable(drawable);
        if (drawable != null) {
            ColorStateList colorStateList = this.f15820f;
            PorterDuff.Mode mode = this.j;
            TextInputLayout textInputLayout = this.f15821g;
            cux.aq(textInputLayout, checkableImageButton, colorStateList, mode);
            o(true);
            cux.w(textInputLayout, checkableImageButton, this.f15820f);
            return;
        }
        o(false);
        View.OnLongClickListener onLongClickListener = this.h;
        checkableImageButton.setOnClickListener(null);
        cux.at(checkableImageButton, onLongClickListener);
        this.h = null;
        checkableImageButton.setOnLongClickListener(null);
        cux.at(checkableImageButton, null);
        if (checkableImageButton.getContentDescription() != null) {
            checkableImageButton.setContentDescription(null);
        }
    }

    public final void o(boolean z) {
        CheckableImageButton checkableImageButton = this.f15819e;
        if ((checkableImageButton.getVisibility() == 0) != z) {
            checkableImageButton.setVisibility(z ? 0 : 8);
            k();
            l();
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        k();
    }
}

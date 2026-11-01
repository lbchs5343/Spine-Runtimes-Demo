package androidx.appcompat.widget;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.InputFilter;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.view.textclassifier.TextClassifier;
import android.widget.TextView;
import g.C0258do;
import g.abh;
import g.afv;
import g.b;
import g.bff;
import g.bhh;
import g.bhx;
import g.bnw;
import g.bpm;
import g.bsr;
import g.byh;
import g.cic;
import g.dnh;
import g.dum;
import g.eyl;
import g.eyt;
import g.fc;
import g.ffn;
import g.fgt;
import g.fso;
import g.ftk;
import g.gkv;
import g.id;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

/* loaded from: classes.dex */
public class AppCompatTextView extends TextView implements b {
    private final dum mBackgroundTintHelper;
    private C0258do mEmojiTextViewHelper;
    private boolean mIsSetTypefaceProcessing;
    private Future<abh> mPrecomputedTextFuture;
    private ffn mSuperCaller;
    private final afv mTextClassifierHelper;
    private final cic mTextHelper;

    public AppCompatTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.textViewStyle);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppCompatTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        bhh.b(context);
        this.mIsSetTypefaceProcessing = false;
        this.mSuperCaller = null;
        fgt.i(getContext(), this);
        dum dumVar = new dum(this);
        this.mBackgroundTintHelper = dumVar;
        dumVar.h(attributeSet, i);
        cic cicVar = new cic(this);
        this.mTextHelper = cicVar;
        cicVar.v(attributeSet, i);
        cicVar.y();
        afv afvVar = new afv();
        afvVar.f10161a = this;
        this.mTextClassifierHelper = afvVar;
        getEmojiTextViewHelper().e(attributeSet, i);
    }

    private C0258do getEmojiTextViewHelper() {
        if (this.mEmojiTextViewHelper == null) {
            this.mEmojiTextViewHelper = new C0258do(this);
        }
        return this.mEmojiTextViewHelper;
    }

    @Override // android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        dum dumVar = this.mBackgroundTintHelper;
        if (dumVar != null) {
            dumVar.j();
        }
        cic cicVar = this.mTextHelper;
        if (cicVar != null) {
            cicVar.y();
        }
    }

    @Override // android.widget.TextView
    public int getAutoSizeMaxTextSize() {
        if (dnh.f14459c) {
            return super.getAutoSizeMaxTextSize();
        }
        cic cicVar = this.mTextHelper;
        if (cicVar != null) {
            return Math.round(cicVar.i.f11896f);
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeMinTextSize() {
        if (dnh.f14459c) {
            return super.getAutoSizeMinTextSize();
        }
        cic cicVar = this.mTextHelper;
        if (cicVar != null) {
            return Math.round(cicVar.i.f11895e);
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeStepGranularity() {
        if (dnh.f14459c) {
            return super.getAutoSizeStepGranularity();
        }
        cic cicVar = this.mTextHelper;
        if (cicVar != null) {
            return Math.round(cicVar.i.l);
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int[] getAutoSizeTextAvailableSizes() {
        if (dnh.f14459c) {
            return super.getAutoSizeTextAvailableSizes();
        }
        cic cicVar = this.mTextHelper;
        return cicVar != null ? cicVar.i.h : new int[0];
    }

    @Override // android.widget.TextView
    @SuppressLint({"WrongConstant"})
    public int getAutoSizeTextType() {
        if (dnh.f14459c) {
            return super.getAutoSizeTextType() == 1 ? 1 : 0;
        }
        cic cicVar = this.mTextHelper;
        if (cicVar != null) {
            return cicVar.i.f11897g;
        }
        return 0;
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return bff.af(super.getCustomSelectionActionModeCallback());
    }

    @Override // android.widget.TextView
    public int getFirstBaselineToTopHeight() {
        return getPaddingTop() - getPaint().getFontMetricsInt().top;
    }

    @Override // android.widget.TextView
    public int getLastBaselineToBottomHeight() {
        return getPaddingBottom() + getPaint().getFontMetricsInt().bottom;
    }

    public ffn getSuperCaller() {
        if (this.mSuperCaller == null) {
            int i = Build.VERSION.SDK_INT;
            if (i >= 34) {
                this.mSuperCaller = new eyl(this);
            } else if (i >= 28) {
                this.mSuperCaller = new gkv(this);
            } else if (i >= 26) {
                this.mSuperCaller = new fc(4, this);
            }
        }
        return this.mSuperCaller;
    }

    public ColorStateList getSupportBackgroundTintList() {
        dum dumVar = this.mBackgroundTintHelper;
        if (dumVar != null) {
            return dumVar.m();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        dum dumVar = this.mBackgroundTintHelper;
        if (dumVar != null) {
            return dumVar.n();
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.mTextHelper.r();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.mTextHelper.t();
    }

    @Override // android.widget.TextView
    public CharSequence getText() {
        Future<abh> future = this.mPrecomputedTextFuture;
        if (future != null) {
            try {
                this.mPrecomputedTextFuture = null;
                if (future.get() != null) {
                    throw new ClassCastException();
                }
                if (Build.VERSION.SDK_INT >= 29) {
                    throw null;
                }
                bff.c(this);
                throw null;
            } catch (InterruptedException | ExecutionException unused) {
            }
        }
        return super.getText();
    }

    @Override // android.widget.TextView
    public TextClassifier getTextClassifier() {
        afv afvVar;
        if (Build.VERSION.SDK_INT >= 28 || (afvVar = this.mTextClassifierHelper) == null) {
            return super.getTextClassifier();
        }
        TextClassifier textClassifier = afvVar.f10162b;
        return textClassifier == null ? bhx.a(afvVar.f10161a) : textClassifier;
    }

    public bsr getTextMetricsParamsCompat() {
        return bff.c(this);
    }

    public boolean isEmojiCompatEnabled() {
        return ((byh) getEmojiTextViewHelper().f14504b.f16548e).bg();
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        this.mTextHelper.getClass();
        cic.n(editorInfo, onCreateInputConnection, this);
        byh.y(editorInfo, onCreateInputConnection, this);
        return onCreateInputConnection;
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        int i = Build.VERSION.SDK_INT;
        if (i < 30 || i >= 33 || !onCheckIsTextEditor()) {
            return;
        }
        ((InputMethodManager) getContext().getSystemService("input_method")).isActive(this);
    }

    @Override // android.widget.TextView, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        cic cicVar = this.mTextHelper;
        if (cicVar == null || dnh.f14459c) {
            return;
        }
        cicVar.i.r();
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        Future<abh> future = this.mPrecomputedTextFuture;
        if (future != null) {
            try {
                this.mPrecomputedTextFuture = null;
                if (future.get() != null) {
                    throw new ClassCastException();
                }
                if (Build.VERSION.SDK_INT >= 29) {
                    throw null;
                }
                bff.c(this);
                throw null;
            } catch (InterruptedException | ExecutionException unused) {
            }
        }
        super.onMeasure(i, i2);
    }

    @Override // android.widget.TextView
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        cic cicVar = this.mTextHelper;
        if (cicVar == null || dnh.f14459c || !cicVar.i.q()) {
            return;
        }
        this.mTextHelper.i.r();
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z) {
        super.setAllCaps(z);
        getEmojiTextViewHelper().f(z);
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeUniformWithConfiguration(int i, int i2, int i3, int i4) throws IllegalArgumentException {
        if (dnh.f14459c) {
            super.setAutoSizeTextTypeUniformWithConfiguration(i, i2, i3, i4);
            return;
        }
        cic cicVar = this.mTextHelper;
        if (cicVar != null) {
            cicVar.x(i, i2, i3, i4);
        }
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeUniformWithPresetSizes(int[] iArr, int i) throws IllegalArgumentException {
        if (dnh.f14459c) {
            super.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i);
            return;
        }
        cic cicVar = this.mTextHelper;
        if (cicVar != null) {
            cicVar.z(iArr, i);
        }
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeWithDefaults(int i) {
        if (dnh.f14459c) {
            super.setAutoSizeTextTypeWithDefaults(i);
            return;
        }
        cic cicVar = this.mTextHelper;
        if (cicVar != null) {
            cicVar.p(i);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        dum dumVar = this.mBackgroundTintHelper;
        if (dumVar != null) {
            dumVar.i();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        dum dumVar = this.mBackgroundTintHelper;
        if (dumVar != null) {
            dumVar.k(i);
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        cic cicVar = this.mTextHelper;
        if (cicVar != null) {
            cicVar.y();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        cic cicVar = this.mTextHelper;
        if (cicVar != null) {
            cicVar.y();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        Context context = getContext();
        setCompoundDrawablesRelativeWithIntrinsicBounds(i != 0 ? fso.ai(context, i) : null, i2 != 0 ? fso.ai(context, i2) : null, i3 != 0 ? fso.ai(context, i3) : null, i4 != 0 ? fso.ai(context, i4) : null);
        cic cicVar = this.mTextHelper;
        if (cicVar != null) {
            cicVar.y();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        cic cicVar = this.mTextHelper;
        if (cicVar != null) {
            cicVar.y();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        Context context = getContext();
        setCompoundDrawablesWithIntrinsicBounds(i != 0 ? fso.ai(context, i) : null, i2 != 0 ? fso.ai(context, i2) : null, i3 != 0 ? fso.ai(context, i3) : null, i4 != 0 ? fso.ai(context, i4) : null);
        cic cicVar = this.mTextHelper;
        if (cicVar != null) {
            cicVar.y();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        cic cicVar = this.mTextHelper;
        if (cicVar != null) {
            cicVar.y();
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(bff.ae(callback, this));
    }

    public void setEmojiCompatEnabled(boolean z) {
        getEmojiTextViewHelper().c(z);
    }

    @Override // android.widget.TextView
    public void setFilters(InputFilter[] inputFilterArr) {
        super.setFilters(getEmojiTextViewHelper().d(inputFilterArr));
    }

    @Override // android.widget.TextView
    public void setFirstBaselineToTopHeight(int i) {
        if (Build.VERSION.SDK_INT >= 28) {
            getSuperCaller().n(i);
        } else {
            bff.ar(this, i);
        }
    }

    @Override // android.widget.TextView
    public void setLastBaselineToBottomHeight(int i) {
        if (Build.VERSION.SDK_INT >= 28) {
            getSuperCaller().j(i);
        } else {
            bff.aa(this, i);
        }
    }

    @Override // android.widget.TextView
    public void setLineHeight(int i) {
        bff.w(this, i);
    }

    @Override // android.widget.TextView
    public void setLineHeight(int i, float f2) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 34) {
            getSuperCaller().r(i, f2);
        } else if (i2 >= 34) {
            bpm.a(this, i, f2);
        } else {
            bff.w(this, Math.round(TypedValue.applyDimension(i, f2, getResources().getDisplayMetrics())));
        }
    }

    public void setPrecomputedText(abh abhVar) {
        if (Build.VERSION.SDK_INT >= 29) {
            throw null;
        }
        bff.c(this);
        throw null;
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        dum dumVar = this.mBackgroundTintHelper;
        if (dumVar != null) {
            dumVar.g(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        dum dumVar = this.mBackgroundTintHelper;
        if (dumVar != null) {
            dumVar.l(mode);
        }
    }

    @Override // g.b
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        this.mTextHelper.s(colorStateList);
        this.mTextHelper.y();
    }

    @Override // g.b
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        this.mTextHelper.w(mode);
        this.mTextHelper.y();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        cic cicVar = this.mTextHelper;
        if (cicVar != null) {
            cicVar.aa(context, i);
        }
    }

    @Override // android.widget.TextView
    public void setTextClassifier(TextClassifier textClassifier) {
        afv afvVar;
        if (Build.VERSION.SDK_INT >= 28 || (afvVar = this.mTextClassifierHelper) == null) {
            super.setTextClassifier(textClassifier);
        } else {
            afvVar.f10162b = textClassifier;
        }
    }

    public void setTextFuture(Future<abh> future) {
        this.mPrecomputedTextFuture = future;
        if (future != null) {
            requestLayout();
        }
    }

    public void setTextMetricsParamsCompat(bsr bsrVar) {
        TextDirectionHeuristic textDirectionHeuristic;
        TextDirectionHeuristic textDirectionHeuristic2 = bsrVar.f12141c;
        TextPaint textPaint = bsrVar.f12140b;
        TextDirectionHeuristic textDirectionHeuristic3 = TextDirectionHeuristics.FIRSTSTRONG_RTL;
        int i = 1;
        if (textDirectionHeuristic2 != textDirectionHeuristic3 && textDirectionHeuristic2 != (textDirectionHeuristic = TextDirectionHeuristics.FIRSTSTRONG_LTR)) {
            if (textDirectionHeuristic2 == TextDirectionHeuristics.ANYRTL_LTR) {
                i = 2;
            } else if (textDirectionHeuristic2 == TextDirectionHeuristics.LTR) {
                i = 3;
            } else if (textDirectionHeuristic2 == TextDirectionHeuristics.RTL) {
                i = 4;
            } else if (textDirectionHeuristic2 == TextDirectionHeuristics.LOCALE) {
                i = 5;
            } else if (textDirectionHeuristic2 == textDirectionHeuristic) {
                i = 6;
            } else if (textDirectionHeuristic2 == textDirectionHeuristic3) {
                i = 7;
            }
        }
        setTextDirection(i);
        if (Build.VERSION.SDK_INT >= 23) {
            getPaint().set(textPaint);
            id.f(this, bsrVar.f12142d);
            id.u(this, bsrVar.f12139a);
        } else {
            float textScaleX = textPaint.getTextScaleX();
            getPaint().set(textPaint);
            if (textScaleX == getTextScaleX()) {
                setTextScaleX((textScaleX / 2.0f) + 1.0f);
            }
            setTextScaleX(textScaleX);
        }
    }

    @Override // android.widget.TextView
    public void setTextSize(int i, float f2) {
        boolean z = dnh.f14459c;
        if (z) {
            super.setTextSize(i, f2);
            return;
        }
        cic cicVar = this.mTextHelper;
        if (cicVar != null) {
            bnw bnwVar = cicVar.i;
            if (z || bnwVar.q()) {
                return;
            }
            bnwVar.s(i, f2);
        }
    }

    @Override // android.widget.TextView
    public void setTypeface(Typeface typeface, int i) {
        Typeface typeface2;
        if (this.mIsSetTypefaceProcessing) {
            return;
        }
        if (typeface == null || i <= 0) {
            typeface2 = null;
        } else {
            Context context = getContext();
            eyt eytVar = ftk.f17385a;
            if (context == null) {
                throw new IllegalArgumentException("Context cannot be null");
            }
            typeface2 = Typeface.create(typeface, i);
        }
        this.mIsSetTypefaceProcessing = true;
        if (typeface2 != null) {
            typeface = typeface2;
        }
        try {
            super.setTypeface(typeface, i);
        } finally {
            this.mIsSetTypefaceProcessing = false;
        }
    }
}

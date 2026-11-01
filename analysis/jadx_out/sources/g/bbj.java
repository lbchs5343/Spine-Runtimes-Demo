package g;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;

/* loaded from: classes.dex */
public class bbj extends Button implements b {
    public C0258do ap;
    public final dum aq;
    public final cic ar;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bbj(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        bhh.b(context);
        fgt.i(getContext(), this);
        dum dumVar = new dum(this);
        this.aq = dumVar;
        dumVar.h(attributeSet, i);
        cic cicVar = new cic(this);
        this.ar = cicVar;
        cicVar.v(attributeSet, i);
        cicVar.y();
        getEmojiTextViewHelper().e(attributeSet, i);
    }

    private C0258do getEmojiTextViewHelper() {
        if (this.ap == null) {
            this.ap = new C0258do(this);
        }
        return this.ap;
    }

    @Override // android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        dum dumVar = this.aq;
        if (dumVar != null) {
            dumVar.j();
        }
        cic cicVar = this.ar;
        if (cicVar != null) {
            cicVar.y();
        }
    }

    @Override // android.widget.TextView
    public int getAutoSizeMaxTextSize() {
        if (dnh.f14459c) {
            return super.getAutoSizeMaxTextSize();
        }
        cic cicVar = this.ar;
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
        cic cicVar = this.ar;
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
        cic cicVar = this.ar;
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
        cic cicVar = this.ar;
        return cicVar != null ? cicVar.i.h : new int[0];
    }

    @Override // android.widget.TextView
    @SuppressLint({"WrongConstant"})
    public int getAutoSizeTextType() {
        if (dnh.f14459c) {
            return super.getAutoSizeTextType() == 1 ? 1 : 0;
        }
        cic cicVar = this.ar;
        if (cicVar != null) {
            return cicVar.i.f11897g;
        }
        return 0;
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return bff.af(super.getCustomSelectionActionModeCallback());
    }

    public ColorStateList getSupportBackgroundTintList() {
        dum dumVar = this.aq;
        if (dumVar != null) {
            return dumVar.m();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        dum dumVar = this.aq;
        if (dumVar != null) {
            return dumVar.n();
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.ar.r();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.ar.t();
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(Button.class.getName());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(Button.class.getName());
    }

    @Override // android.widget.TextView, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        cic cicVar = this.ar;
        if (cicVar == null || dnh.f14459c) {
            return;
        }
        cicVar.i.r();
    }

    @Override // android.widget.TextView
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        cic cicVar = this.ar;
        if (cicVar != null) {
            bnw bnwVar = cicVar.i;
            if (dnh.f14459c || !bnwVar.q()) {
                return;
            }
            bnwVar.r();
        }
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z) {
        super.setAllCaps(z);
        getEmojiTextViewHelper().f(z);
    }

    @Override // android.widget.TextView
    public final void setAutoSizeTextTypeUniformWithConfiguration(int i, int i2, int i3, int i4) {
        if (dnh.f14459c) {
            super.setAutoSizeTextTypeUniformWithConfiguration(i, i2, i3, i4);
            return;
        }
        cic cicVar = this.ar;
        if (cicVar != null) {
            cicVar.x(i, i2, i3, i4);
        }
    }

    @Override // android.widget.TextView
    public final void setAutoSizeTextTypeUniformWithPresetSizes(int[] iArr, int i) {
        if (dnh.f14459c) {
            super.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i);
            return;
        }
        cic cicVar = this.ar;
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
        cic cicVar = this.ar;
        if (cicVar != null) {
            cicVar.p(i);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        dum dumVar = this.aq;
        if (dumVar != null) {
            dumVar.i();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        dum dumVar = this.aq;
        if (dumVar != null) {
            dumVar.k(i);
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

    public void setSupportAllCaps(boolean z) {
        cic cicVar = this.ar;
        if (cicVar != null) {
            cicVar.f12919f.setAllCaps(z);
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        dum dumVar = this.aq;
        if (dumVar != null) {
            dumVar.g(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        dum dumVar = this.aq;
        if (dumVar != null) {
            dumVar.l(mode);
        }
    }

    @Override // g.b
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        cic cicVar = this.ar;
        cicVar.s(colorStateList);
        cicVar.y();
    }

    @Override // g.b
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        cic cicVar = this.ar;
        cicVar.w(mode);
        cicVar.y();
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        cic cicVar = this.ar;
        if (cicVar != null) {
            cicVar.aa(context, i);
        }
    }

    @Override // android.widget.TextView
    public final void setTextSize(int i, float f2) {
        boolean z = dnh.f14459c;
        if (z) {
            super.setTextSize(i, f2);
            return;
        }
        cic cicVar = this.ar;
        if (cicVar != null) {
            bnw bnwVar = cicVar.i;
            if (z || bnwVar.q()) {
                return;
            }
            bnwVar.s(i, f2);
        }
    }
}

package g;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.widget.ToggleButton;

/* loaded from: classes.dex */
public final class bdr extends ToggleButton implements b {

    /* renamed from: a, reason: collision with root package name */
    public C0258do f11340a;

    /* renamed from: b, reason: collision with root package name */
    public final dum f11341b;

    /* renamed from: c, reason: collision with root package name */
    public final cic f11342c;

    public bdr(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.buttonStyleToggle);
        fgt.i(getContext(), this);
        dum dumVar = new dum(this);
        this.f11341b = dumVar;
        dumVar.h(attributeSet, R.attr.buttonStyleToggle);
        cic cicVar = new cic(this);
        this.f11342c = cicVar;
        cicVar.v(attributeSet, R.attr.buttonStyleToggle);
        getEmojiTextViewHelper().e(attributeSet, R.attr.buttonStyleToggle);
    }

    private C0258do getEmojiTextViewHelper() {
        if (this.f11340a == null) {
            this.f11340a = new C0258do(this);
        }
        return this.f11340a;
    }

    @Override // android.widget.ToggleButton, android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        dum dumVar = this.f11341b;
        if (dumVar != null) {
            dumVar.j();
        }
        cic cicVar = this.f11342c;
        if (cicVar != null) {
            cicVar.y();
        }
    }

    public ColorStateList getSupportBackgroundTintList() {
        dum dumVar = this.f11341b;
        if (dumVar != null) {
            return dumVar.m();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        dum dumVar = this.f11341b;
        if (dumVar != null) {
            return dumVar.n();
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f11342c.r();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f11342c.t();
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z) {
        super.setAllCaps(z);
        getEmojiTextViewHelper().f(z);
    }

    @Override // android.widget.ToggleButton, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        dum dumVar = this.f11341b;
        if (dumVar != null) {
            dumVar.i();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        dum dumVar = this.f11341b;
        if (dumVar != null) {
            dumVar.k(i);
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        cic cicVar = this.f11342c;
        if (cicVar != null) {
            cicVar.y();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        cic cicVar = this.f11342c;
        if (cicVar != null) {
            cicVar.y();
        }
    }

    public void setEmojiCompatEnabled(boolean z) {
        getEmojiTextViewHelper().c(z);
    }

    @Override // android.widget.TextView
    public void setFilters(InputFilter[] inputFilterArr) {
        super.setFilters(getEmojiTextViewHelper().d(inputFilterArr));
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        dum dumVar = this.f11341b;
        if (dumVar != null) {
            dumVar.g(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        dum dumVar = this.f11341b;
        if (dumVar != null) {
            dumVar.l(mode);
        }
    }

    @Override // g.b
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        cic cicVar = this.f11342c;
        cicVar.s(colorStateList);
        cicVar.y();
    }

    @Override // g.b
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        cic cicVar = this.f11342c;
        cicVar.w(mode);
        cicVar.y();
    }
}

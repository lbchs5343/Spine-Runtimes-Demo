package g;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.widget.RadioButton;
import cn.trinea.android.developertools.R;

/* loaded from: classes.dex */
public class ajz extends RadioButton implements dvn, b {

    /* renamed from: d, reason: collision with root package name */
    public final cic f10359d;

    /* renamed from: e, reason: collision with root package name */
    public C0258do f10360e;

    /* renamed from: f, reason: collision with root package name */
    public final cr f10361f;

    /* renamed from: g, reason: collision with root package name */
    public final dum f10362g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ajz(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.radioButtonStyle);
        bhh.b(context);
        fgt.i(getContext(), this);
        cr crVar = new cr(this);
        this.f10361f = crVar;
        crVar.j(attributeSet, R.attr.radioButtonStyle);
        dum dumVar = new dum(this);
        this.f10362g = dumVar;
        dumVar.h(attributeSet, R.attr.radioButtonStyle);
        cic cicVar = new cic(this);
        this.f10359d = cicVar;
        cicVar.v(attributeSet, R.attr.radioButtonStyle);
        getEmojiTextViewHelper().e(attributeSet, R.attr.radioButtonStyle);
    }

    private C0258do getEmojiTextViewHelper() {
        if (this.f10360e == null) {
            this.f10360e = new C0258do(this);
        }
        return this.f10360e;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        dum dumVar = this.f10362g;
        if (dumVar != null) {
            dumVar.j();
        }
        cic cicVar = this.f10359d;
        if (cicVar != null) {
            cicVar.y();
        }
    }

    public ColorStateList getSupportBackgroundTintList() {
        dum dumVar = this.f10362g;
        if (dumVar != null) {
            return dumVar.m();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        dum dumVar = this.f10362g;
        if (dumVar != null) {
            return dumVar.n();
        }
        return null;
    }

    @Override // g.dvn
    public ColorStateList getSupportButtonTintList() {
        cr crVar = this.f10361f;
        if (crVar != null) {
            return (ColorStateList) crVar.f13356c;
        }
        return null;
    }

    public PorterDuff.Mode getSupportButtonTintMode() {
        cr crVar = this.f10361f;
        if (crVar != null) {
            return (PorterDuff.Mode) crVar.f13358e;
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f10359d.r();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f10359d.t();
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z) {
        super.setAllCaps(z);
        getEmojiTextViewHelper().f(z);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        dum dumVar = this.f10362g;
        if (dumVar != null) {
            dumVar.i();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        dum dumVar = this.f10362g;
        if (dumVar != null) {
            dumVar.k(i);
        }
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(int i) {
        setButtonDrawable(fso.ai(getContext(), i));
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(Drawable drawable) {
        super.setButtonDrawable(drawable);
        cr crVar = this.f10361f;
        if (crVar != null) {
            if (crVar.f13355b) {
                crVar.f13355b = false;
            } else {
                crVar.f13355b = true;
                crVar.h();
            }
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        cic cicVar = this.f10359d;
        if (cicVar != null) {
            cicVar.y();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        cic cicVar = this.f10359d;
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
        dum dumVar = this.f10362g;
        if (dumVar != null) {
            dumVar.g(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        dum dumVar = this.f10362g;
        if (dumVar != null) {
            dumVar.l(mode);
        }
    }

    @Override // g.dvn
    public void setSupportButtonTintList(ColorStateList colorStateList) {
        cr crVar = this.f10361f;
        if (crVar != null) {
            crVar.f13356c = colorStateList;
            crVar.f13359f = true;
            crVar.h();
        }
    }

    @Override // g.dvn
    public void setSupportButtonTintMode(PorterDuff.Mode mode) {
        cr crVar = this.f10361f;
        if (crVar != null) {
            crVar.f13358e = mode;
            crVar.f13354a = true;
            crVar.h();
        }
    }

    @Override // g.b
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        cic cicVar = this.f10359d;
        cicVar.s(colorStateList);
        cicVar.y();
    }

    @Override // g.b
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        cic cicVar = this.f10359d;
        cicVar.w(mode);
        cicVar.y();
    }
}

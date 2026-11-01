package g;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.widget.CheckBox;

/* loaded from: classes.dex */
public class fqn extends CheckBox implements dvn, b {
    public final cic ac;
    public C0258do ad;
    public final cr ae;
    public final dum af;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fqn(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        bhh.b(context);
        fgt.i(getContext(), this);
        cr crVar = new cr(this);
        this.ae = crVar;
        crVar.j(attributeSet, i);
        dum dumVar = new dum(this);
        this.af = dumVar;
        dumVar.h(attributeSet, i);
        cic cicVar = new cic(this);
        this.ac = cicVar;
        cicVar.v(attributeSet, i);
        getEmojiTextViewHelper().e(attributeSet, i);
    }

    private C0258do getEmojiTextViewHelper() {
        if (this.ad == null) {
            this.ad = new C0258do(this);
        }
        return this.ad;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        dum dumVar = this.af;
        if (dumVar != null) {
            dumVar.j();
        }
        cic cicVar = this.ac;
        if (cicVar != null) {
            cicVar.y();
        }
    }

    public ColorStateList getSupportBackgroundTintList() {
        dum dumVar = this.af;
        if (dumVar != null) {
            return dumVar.m();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        dum dumVar = this.af;
        if (dumVar != null) {
            return dumVar.n();
        }
        return null;
    }

    @Override // g.dvn
    public ColorStateList getSupportButtonTintList() {
        cr crVar = this.ae;
        if (crVar != null) {
            return (ColorStateList) crVar.f13356c;
        }
        return null;
    }

    public PorterDuff.Mode getSupportButtonTintMode() {
        cr crVar = this.ae;
        if (crVar != null) {
            return (PorterDuff.Mode) crVar.f13358e;
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.ac.r();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.ac.t();
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z) {
        super.setAllCaps(z);
        getEmojiTextViewHelper().f(z);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        dum dumVar = this.af;
        if (dumVar != null) {
            dumVar.i();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        dum dumVar = this.af;
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
        cr crVar = this.ae;
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
    public void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        cic cicVar = this.ac;
        if (cicVar != null) {
            cicVar.y();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        cic cicVar = this.ac;
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
        dum dumVar = this.af;
        if (dumVar != null) {
            dumVar.g(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        dum dumVar = this.af;
        if (dumVar != null) {
            dumVar.l(mode);
        }
    }

    @Override // g.dvn
    public void setSupportButtonTintList(ColorStateList colorStateList) {
        cr crVar = this.ae;
        if (crVar != null) {
            crVar.f13356c = colorStateList;
            crVar.f13359f = true;
            crVar.h();
        }
    }

    @Override // g.dvn
    public void setSupportButtonTintMode(PorterDuff.Mode mode) {
        cr crVar = this.ae;
        if (crVar != null) {
            crVar.f13358e = mode;
            crVar.f13354a = true;
            crVar.h();
        }
    }

    @Override // g.b
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        cic cicVar = this.ac;
        cicVar.s(colorStateList);
        cicVar.y();
    }

    @Override // g.b
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        cic cicVar = this.ac;
        cicVar.w(mode);
        cicVar.y();
    }
}

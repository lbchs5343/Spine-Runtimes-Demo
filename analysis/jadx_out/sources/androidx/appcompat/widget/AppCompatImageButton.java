package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.ImageButton;
import android.widget.ImageView;
import cn.trinea.android.developertools.R;
import g.bhh;
import g.cxc;
import g.dum;
import g.edd;
import g.fgt;
import g.fkn;
import g.fso;

/* loaded from: classes.dex */
public class AppCompatImageButton extends ImageButton {

    /* renamed from: a, reason: collision with root package name */
    public boolean f87a;

    /* renamed from: b, reason: collision with root package name */
    public final dum f88b;

    /* renamed from: c, reason: collision with root package name */
    public final fkn f89c;

    public AppCompatImageButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.imageButtonStyle);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppCompatImageButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        bhh.b(context);
        this.f87a = false;
        fgt.i(getContext(), this);
        dum dumVar = new dum(this);
        this.f88b = dumVar;
        dumVar.h(attributeSet, i);
        fkn fknVar = new fkn(this);
        this.f89c = fknVar;
        fknVar.h(attributeSet, i);
    }

    @Override // android.widget.ImageView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        dum dumVar = this.f88b;
        if (dumVar != null) {
            dumVar.j();
        }
        fkn fknVar = this.f89c;
        if (fknVar != null) {
            fknVar.g();
        }
    }

    public ColorStateList getSupportBackgroundTintList() {
        dum dumVar = this.f88b;
        if (dumVar != null) {
            return dumVar.m();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        dum dumVar = this.f88b;
        if (dumVar != null) {
            return dumVar.n();
        }
        return null;
    }

    public ColorStateList getSupportImageTintList() {
        cxc cxcVar;
        fkn fknVar = this.f89c;
        if (fknVar == null || (cxcVar = (cxc) fknVar.f16940d) == null) {
            return null;
        }
        return (ColorStateList) cxcVar.f13671a;
    }

    public PorterDuff.Mode getSupportImageTintMode() {
        cxc cxcVar;
        fkn fknVar = this.f89c;
        if (fknVar == null || (cxcVar = (cxc) fknVar.f16940d) == null) {
            return null;
        }
        return (PorterDuff.Mode) cxcVar.f13672b;
    }

    @Override // android.widget.ImageView, android.view.View
    public final boolean hasOverlappingRendering() {
        return !(((ImageView) this.f89c.f16939c).getBackground() instanceof RippleDrawable) && super.hasOverlappingRendering();
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        dum dumVar = this.f88b;
        if (dumVar != null) {
            dumVar.i();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        dum dumVar = this.f88b;
        if (dumVar != null) {
            dumVar.k(i);
        }
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        fkn fknVar = this.f89c;
        if (fknVar != null) {
            fknVar.g();
        }
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        fkn fknVar = this.f89c;
        if (fknVar != null && drawable != null && !this.f87a) {
            fknVar.f16938b = drawable.getLevel();
        }
        super.setImageDrawable(drawable);
        if (fknVar != null) {
            fknVar.g();
            if (this.f87a) {
                return;
            }
            ImageView imageView = (ImageView) fknVar.f16939c;
            if (imageView.getDrawable() != null) {
                imageView.getDrawable().setLevel(fknVar.f16938b);
            }
        }
    }

    @Override // android.widget.ImageView
    public void setImageLevel(int i) {
        super.setImageLevel(i);
        this.f87a = true;
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        fkn fknVar = this.f89c;
        ImageView imageView = (ImageView) fknVar.f16939c;
        if (i != 0) {
            Drawable ai = fso.ai(imageView.getContext(), i);
            if (ai != null) {
                edd.d(ai);
            }
            imageView.setImageDrawable(ai);
        } else {
            imageView.setImageDrawable(null);
        }
        fknVar.g();
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        fkn fknVar = this.f89c;
        if (fknVar != null) {
            fknVar.g();
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        dum dumVar = this.f88b;
        if (dumVar != null) {
            dumVar.g(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        dum dumVar = this.f88b;
        if (dumVar != null) {
            dumVar.l(mode);
        }
    }

    public void setSupportImageTintList(ColorStateList colorStateList) {
        fkn fknVar = this.f89c;
        if (fknVar != null) {
            if (((cxc) fknVar.f16940d) == null) {
                fknVar.f16940d = new cxc(2);
            }
            cxc cxcVar = (cxc) fknVar.f16940d;
            cxcVar.f13671a = colorStateList;
            cxcVar.f13675e = true;
            fknVar.g();
        }
    }

    public void setSupportImageTintMode(PorterDuff.Mode mode) {
        fkn fknVar = this.f89c;
        if (fknVar != null) {
            if (((cxc) fknVar.f16940d) == null) {
                fknVar.f16940d = new cxc(2);
            }
            cxc cxcVar = (cxc) fknVar.f16940d;
            cxcVar.f13672b = mode;
            cxcVar.f13674d = true;
            fknVar.g();
        }
    }
}

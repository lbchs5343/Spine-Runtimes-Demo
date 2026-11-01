package g;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import cn.trinea.android.developertools.R;
import com.google.android.material.button.MaterialButton;

/* loaded from: classes3.dex */
public final class aut {

    /* renamed from: a, reason: collision with root package name */
    public int f10887a;

    /* renamed from: b, reason: collision with root package name */
    public int f10888b;

    /* renamed from: c, reason: collision with root package name */
    public ColorStateList f10889c;

    /* renamed from: d, reason: collision with root package name */
    public ColorStateList f10890d;

    /* renamed from: e, reason: collision with root package name */
    public ceq f10891e;

    /* renamed from: f, reason: collision with root package name */
    public PorterDuff.Mode f10892f;

    /* renamed from: g, reason: collision with root package name */
    public aoi f10893g;
    public final MaterialButton h;
    public RippleDrawable j;
    public int k;
    public int l;
    public ddm n;
    public ColorStateList o;
    public int p;
    public cjg q;
    public int r;
    public boolean t;
    public dsx u;
    public int v;
    public boolean s = false;
    public boolean w = false;
    public boolean m = false;
    public boolean i = true;

    public aut(MaterialButton materialButton, cjg cjgVar) {
        this.h = materialButton;
        this.q = cjgVar;
    }

    public final void aa(int i, int i2) {
        MaterialButton materialButton = this.h;
        int paddingStart = materialButton.getPaddingStart();
        int paddingTop = materialButton.getPaddingTop();
        int paddingEnd = materialButton.getPaddingEnd();
        int paddingBottom = materialButton.getPaddingBottom();
        int i3 = this.f10887a;
        int i4 = this.p;
        this.p = i2;
        this.f10887a = i;
        if (!this.w) {
            ab();
        }
        materialButton.setPaddingRelative(paddingStart, (paddingTop + i) - i3, paddingEnd, (paddingBottom + i2) - i4);
    }

    public final void ab() {
        ddm ddmVar = new ddm(this.q);
        dsx dsxVar = this.u;
        if (dsxVar != null) {
            ddmVar.em(dsxVar);
        }
        ceq ceqVar = this.f10891e;
        if (ceqVar != null) {
            ddmVar.ed(ceqVar);
        }
        aoi aoiVar = this.f10893g;
        if (aoiVar != null) {
            ddmVar.dc = aoiVar;
        }
        MaterialButton materialButton = this.h;
        ddmVar.ef(materialButton.getContext());
        ddmVar.setTintList(this.o);
        PorterDuff.Mode mode = this.f10892f;
        if (mode != null) {
            ddmVar.setTintMode(mode);
        }
        float f2 = this.f10888b;
        ColorStateList colorStateList = this.f10890d;
        ddmVar.ds.f14951b = f2;
        ddmVar.invalidateSelf();
        dwo dwoVar = ddmVar.ds;
        if (dwoVar.f14956g != colorStateList) {
            dwoVar.f14956g = colorStateList;
            ddmVar.onStateChange(ddmVar.getState());
        }
        ddm ddmVar2 = new ddm(this.q);
        dsx dsxVar2 = this.u;
        if (dsxVar2 != null) {
            ddmVar2.em(dsxVar2);
        }
        ceq ceqVar2 = this.f10891e;
        if (ceqVar2 != null) {
            ddmVar2.ed(ceqVar2);
        }
        ddmVar2.setTint(0);
        float f3 = this.f10888b;
        int bs = this.s ? eyt.bs(R.attr.colorSurface, materialButton) : 0;
        ddmVar2.ds.f14951b = f3;
        ddmVar2.invalidateSelf();
        ColorStateList valueOf = ColorStateList.valueOf(bs);
        dwo dwoVar2 = ddmVar2.ds;
        if (dwoVar2.f14956g != valueOf) {
            dwoVar2.f14956g = valueOf;
            ddmVar2.onStateChange(ddmVar2.getState());
        }
        ddm ddmVar3 = new ddm(this.q);
        this.n = ddmVar3;
        dsx dsxVar3 = this.u;
        if (dsxVar3 != null) {
            ddmVar3.em(dsxVar3);
        }
        ceq ceqVar3 = this.f10891e;
        if (ceqVar3 != null) {
            this.n.ed(ceqVar3);
        }
        this.n.setTint(-1);
        RippleDrawable rippleDrawable = new RippleDrawable(buj.ac(this.f10889c), new InsetDrawable((Drawable) new LayerDrawable(new Drawable[]{ddmVar2, ddmVar}), this.l, this.f10887a, this.v, this.p), this.n);
        this.j = rippleDrawable;
        materialButton.setInternalBackground(rippleDrawable);
        ddm z = z(false);
        if (z != null) {
            z.ec(this.k);
            z.setState(materialButton.getDrawableState());
        }
    }

    public final void x() {
        if (Build.VERSION.SDK_INT < 23 && !this.w) {
            MaterialButton materialButton = this.h;
            int paddingStart = materialButton.getPaddingStart();
            int paddingTop = materialButton.getPaddingTop();
            int paddingEnd = materialButton.getPaddingEnd();
            int paddingBottom = materialButton.getPaddingBottom();
            ab();
            materialButton.setPaddingRelative(paddingStart, paddingTop, paddingEnd, paddingBottom);
            return;
        }
        ddm z = z(false);
        if (z != null) {
            dsx dsxVar = this.u;
            if (dsxVar != null) {
                z.em(dsxVar);
            } else {
                z.setShapeAppearanceModel(this.q);
            }
            ceq ceqVar = this.f10891e;
            if (ceqVar != null) {
                z.ed(ceqVar);
            }
        }
        ddm z2 = z(true);
        if (z2 != null) {
            dsx dsxVar2 = this.u;
            if (dsxVar2 != null) {
                z2.em(dsxVar2);
            } else {
                z2.setShapeAppearanceModel(this.q);
            }
            ceq ceqVar2 = this.f10891e;
            if (ceqVar2 != null) {
                z2.ed(ceqVar2);
            }
        }
        RippleDrawable rippleDrawable = this.j;
        cbe cbeVar = (rippleDrawable == null || rippleDrawable.getNumberOfLayers() <= 1) ? null : this.j.getNumberOfLayers() > 2 ? (cbe) this.j.getDrawable(2) : (cbe) this.j.getDrawable(1);
        if (cbeVar != null) {
            cbeVar.setShapeAppearanceModel(this.q);
            if (cbeVar instanceof ddm) {
                ddm ddmVar = (ddm) cbeVar;
                dsx dsxVar3 = this.u;
                if (dsxVar3 != null) {
                    ddmVar.em(dsxVar3);
                }
                ceq ceqVar3 = this.f10891e;
                if (ceqVar3 != null) {
                    ddmVar.ed(ceqVar3);
                }
            }
        }
    }

    public final void y() {
        ddm z = z(false);
        ddm z2 = z(true);
        if (z != null) {
            float f2 = this.f10888b;
            ColorStateList colorStateList = this.f10890d;
            z.ds.f14951b = f2;
            z.invalidateSelf();
            dwo dwoVar = z.ds;
            if (dwoVar.f14956g != colorStateList) {
                dwoVar.f14956g = colorStateList;
                z.onStateChange(z.getState());
            }
            if (z2 != null) {
                float f3 = this.f10888b;
                int bs = this.s ? eyt.bs(R.attr.colorSurface, this.h) : 0;
                z2.ds.f14951b = f3;
                z2.invalidateSelf();
                ColorStateList valueOf = ColorStateList.valueOf(bs);
                dwo dwoVar2 = z2.ds;
                if (dwoVar2.f14956g != valueOf) {
                    dwoVar2.f14956g = valueOf;
                    z2.onStateChange(z2.getState());
                }
            }
        }
    }

    public final ddm z(boolean z) {
        RippleDrawable rippleDrawable = this.j;
        if (rippleDrawable == null || rippleDrawable.getNumberOfLayers() <= 0) {
            return null;
        }
        return (ddm) ((LayerDrawable) ((InsetDrawable) this.j.getDrawable(0)).getDrawable()).getDrawable(!z ? 1 : 0);
    }
}

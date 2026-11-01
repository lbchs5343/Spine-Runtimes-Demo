package g;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import cn.trinea.android.developertools.R;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.google.android.material.card.MaterialCardView;

/* loaded from: classes3.dex */
public final class bqf {

    /* renamed from: a, reason: collision with root package name */
    public static final ColorDrawable f12001a;

    /* renamed from: b, reason: collision with root package name */
    public static final double f12002b = Math.cos(Math.toRadians(45.0d));

    /* renamed from: c, reason: collision with root package name */
    public int f12003c;

    /* renamed from: d, reason: collision with root package name */
    public ColorStateList f12004d;

    /* renamed from: e, reason: collision with root package name */
    public RippleDrawable f12005e;

    /* renamed from: f, reason: collision with root package name */
    public ColorStateList f12006f;

    /* renamed from: g, reason: collision with root package name */
    public final ddm f12007g;
    public ColorStateList h;
    public int i;
    public final MaterialCardView j;
    public final TimeInterpolator k;
    public final int l;
    public final int m;
    public int n;
    public boolean o;
    public LayerDrawable p;
    public cjg q;
    public Drawable r;
    public Drawable t;
    public ddm u;
    public ValueAnimator v;
    public final ddm w;
    public int y;
    public final Rect s = new Rect();
    public boolean z = false;
    public float x = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;

    static {
        f12001a = Build.VERSION.SDK_INT <= 28 ? new ColorDrawable() : null;
    }

    public bqf(MaterialCardView materialCardView, AttributeSet attributeSet) {
        this.j = materialCardView;
        ddm ddmVar = new ddm(materialCardView.getContext(), attributeSet, R.attr.materialCardViewStyle, R.style.Widget_MaterialComponents_CardView);
        this.w = ddmVar;
        ddmVar.ef(materialCardView.getContext());
        ddmVar.ev();
        bem r = ddmVar.ds.h.r();
        TypedArray obtainStyledAttributes = materialCardView.getContext().obtainStyledAttributes(attributeSet, fpg.f17198a, R.attr.materialCardViewStyle, R.style.CardView);
        if (obtainStyledAttributes.hasValue(3)) {
            float dimension = obtainStyledAttributes.getDimension(3, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
            r.f11390e = new ett(dimension);
            r.f11392g = new ett(dimension);
            r.l = new ett(dimension);
            r.f11386a = new ett(dimension);
        }
        this.f12007g = new ddm();
        ab(r.n());
        this.k = egh.r(materialCardView.getContext(), R.attr.motionEasingLinearInterpolator, gtk.f18727b);
        this.l = egh.bf(materialCardView.getContext(), R.attr.motionDurationShort2, TTAdConstant.DEFAULT_LIVE_SHOW_TIME_MAX);
        this.m = egh.bf(materialCardView.getContext(), R.attr.motionDurationShort1, TTAdConstant.DEFAULT_LIVE_SHOW_TIME_MAX);
        obtainStyledAttributes.recycle();
    }

    public static float aa(afo afoVar, float f2) {
        return afoVar instanceof eeu ? (float) ((1.0d - f12002b) * f2) : afoVar instanceof gki ? f2 / 2.0f : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    }

    public final void ab(cjg cjgVar) {
        this.q = cjgVar;
        ddm ddmVar = this.w;
        ddmVar.setShapeAppearanceModel(cjgVar);
        ddmVar.du = !ddmVar.eo();
        ddm ddmVar2 = this.f12007g;
        if (ddmVar2 != null) {
            ddmVar2.setShapeAppearanceModel(cjgVar);
        }
        ddm ddmVar3 = this.u;
        if (ddmVar3 != null) {
            ddmVar3.setShapeAppearanceModel(cjgVar);
        }
    }

    public final void ac() {
        Drawable drawable = this.r;
        Drawable al = ak() ? al() : this.f12007g;
        this.r = al;
        if (drawable != al) {
            int i = Build.VERSION.SDK_INT;
            MaterialCardView materialCardView = this.j;
            if (i < 23 || !(materialCardView.getForeground() instanceof InsetDrawable)) {
                materialCardView.setForeground(ad(al));
            } else {
                ((InsetDrawable) materialCardView.getForeground()).setDrawable(al);
            }
        }
    }

    public final anz ad(Drawable drawable) {
        int i;
        int i2;
        MaterialCardView materialCardView = this.j;
        if (materialCardView.getUseCompatPadding()) {
            float maxCardElevation = materialCardView.getMaxCardElevation() * 1.5f;
            boolean aj = aj();
            float f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            int ceil = (int) Math.ceil(maxCardElevation + (aj ? ag() : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT));
            float maxCardElevation2 = materialCardView.getMaxCardElevation();
            if (aj()) {
                f2 = ag();
            }
            i = (int) Math.ceil(maxCardElevation2 + f2);
            i2 = ceil;
        } else {
            i = 0;
            i2 = 0;
        }
        return new anz(drawable, i, i2, i, i2);
    }

    public final void ae() {
        MaterialCardView materialCardView = this.j;
        boolean preventCornerOverlap = materialCardView.getPreventCornerOverlap();
        float f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        float ag = ((!preventCornerOverlap || this.w.eo()) && !aj()) ? TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT : ag();
        if (materialCardView.getPreventCornerOverlap() && materialCardView.getUseCompatPadding()) {
            f2 = (float) ((1.0d - f12002b) * materialCardView.getCardViewRadius());
        }
        int i = (int) (ag - f2);
        Rect rect = this.s;
        materialCardView.k.set(rect.left + i, rect.top + i, rect.right + i, rect.bottom + i);
        fdy fdyVar = materialCardView.m;
        if (!((dur) fdyVar.f16632a).getUseCompatPadding()) {
            fdyVar.w(0, 0, 0, 0);
            return;
        }
        dmf dmfVar = (dmf) ((Drawable) fdyVar.f16634c);
        float f3 = dmfVar.f14421d;
        float f4 = dmfVar.f14422e;
        int ceil = (int) Math.ceil(gbj.b(f3, f4, r1.getPreventCornerOverlap()));
        int ceil2 = (int) Math.ceil(gbj.c(f3, f4, r1.getPreventCornerOverlap()));
        fdyVar.w(ceil, ceil2, ceil, ceil2);
    }

    public final void af(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        if (this.p != null) {
            MaterialCardView materialCardView = this.j;
            if (materialCardView.getUseCompatPadding()) {
                float maxCardElevation = materialCardView.getMaxCardElevation() * 1.5f;
                boolean aj = aj();
                float f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                i3 = (int) Math.ceil((maxCardElevation + (aj ? ag() : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT)) * 2.0f);
                float maxCardElevation2 = materialCardView.getMaxCardElevation();
                if (aj()) {
                    f2 = ag();
                }
                i4 = (int) Math.ceil((maxCardElevation2 + f2) * 2.0f);
            } else {
                i3 = 0;
                i4 = 0;
            }
            int i7 = this.y;
            int i8 = (i7 & 8388613) == 8388613 ? ((i - this.i) - this.n) - i4 : this.i;
            int i9 = (i7 & 80) == 80 ? this.i : ((i2 - this.i) - this.n) - i3;
            int i10 = (i7 & 8388613) == 8388613 ? this.i : ((i - this.i) - this.n) - i4;
            int i11 = (i7 & 80) == 80 ? ((i2 - this.i) - this.n) - i3 : this.i;
            if (materialCardView.getLayoutDirection() == 1) {
                i6 = i10;
                i5 = i8;
            } else {
                i5 = i10;
                i6 = i8;
            }
            this.p.setLayerInset(2, i6, i11, i5, i9);
        }
    }

    public final float ag() {
        afo afoVar = this.q.f12976f;
        ddm ddmVar = this.w;
        float aa = aa(afoVar, ddmVar.eq());
        afo afoVar2 = this.q.i;
        float[] fArr = ddmVar.dq;
        float max = Math.max(aa, aa(afoVar2, fArr != null ? fArr[0] : ddmVar.ds.h.f12977g.b(ddmVar.eu())));
        afo afoVar3 = this.q.k;
        float[] fArr2 = ddmVar.dq;
        float aa2 = aa(afoVar3, fArr2 != null ? fArr2[1] : ddmVar.ds.h.l.b(ddmVar.eu()));
        afo afoVar4 = this.q.f12973c;
        float[] fArr3 = ddmVar.dq;
        return Math.max(max, Math.max(aa2, aa(afoVar4, fArr3 != null ? fArr3[2] : ddmVar.ds.h.f12971a.b(ddmVar.eu()))));
    }

    public final void ah(boolean z, boolean z2) {
        Drawable drawable = this.t;
        if (drawable != null) {
            float f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            if (!z2) {
                drawable.setAlpha(z ? MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE : 0);
                if (z) {
                    f2 = 1.0f;
                }
                this.x = f2;
                return;
            }
            if (z) {
                f2 = 1.0f;
            }
            float f3 = z ? 1.0f - this.x : this.x;
            ValueAnimator valueAnimator = this.v;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.v = null;
            }
            ValueAnimator ofFloat = ValueAnimator.ofFloat(this.x, f2);
            this.v = ofFloat;
            ofFloat.addUpdateListener(new emn(2, this));
            this.v.setInterpolator(this.k);
            this.v.setDuration((long) ((z ? this.l : this.m) * f3));
            this.v.start();
        }
    }

    public final void ai() {
        boolean z = this.z;
        MaterialCardView materialCardView = this.j;
        if (!z) {
            materialCardView.setBackgroundInternal(ad(this.w));
        }
        materialCardView.setForeground(ad(this.r));
    }

    public final boolean aj() {
        MaterialCardView materialCardView = this.j;
        return materialCardView.getPreventCornerOverlap() && this.w.eo() && materialCardView.getUseCompatPadding();
    }

    public final boolean ak() {
        View view = this.j;
        if (view.isClickable()) {
            return true;
        }
        while (view.isDuplicateParentStateEnabled() && (view.getParent() instanceof View)) {
            view = (View) view.getParent();
        }
        return view.isClickable();
    }

    public final LayerDrawable al() {
        if (this.f12005e == null) {
            this.u = new ddm(this.q);
            this.f12005e = new RippleDrawable(this.f12004d, null, this.u);
        }
        if (this.p == null) {
            LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{this.f12005e, this.f12007g, this.t});
            this.p = layerDrawable;
            layerDrawable.setId(2, R.id.mtrl_card_checked_layer_id);
        }
        return this.p;
    }

    public final void am(Drawable drawable) {
        if (drawable != null) {
            Drawable mutate = dzm.aw(drawable).mutate();
            this.t = mutate;
            mutate.setTintList(this.h);
            ah(this.j.f9025e, false);
        } else {
            this.t = f12001a;
        }
        LayerDrawable layerDrawable = this.p;
        if (layerDrawable != null) {
            layerDrawable.setDrawableByLayerId(R.id.mtrl_card_checked_layer_id, this.t);
        }
    }
}

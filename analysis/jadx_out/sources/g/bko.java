package g;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.os.Build;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.google.android.material.chip.Chip;
import java.lang.ref.WeakReference;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class bko extends ddm implements Drawable.Callback, etp {

    /* renamed from: a, reason: collision with root package name */
    public static final int[] f11744a = {R.attr.state_enabled};

    /* renamed from: b, reason: collision with root package name */
    public static final ShapeDrawable f11745b = new ShapeDrawable(new OvalShape());
    public float aa;

    /* renamed from: ab, reason: collision with root package name */
    public int f11746ab;
    public boolean ac;
    public int ad;
    public int ae;
    public float af;
    public float ag;
    public final Paint.FontMetrics ah;
    public final Context ai;
    public RippleDrawable aj;
    public gqd ak;
    public int al;
    public int am;
    public float an;
    public ColorStateList ao;
    public ColorFilter ap;
    public final Paint aq;
    public ColorStateList ar;
    public float as;
    public boolean at;
    public ColorStateList au;
    public boolean av;
    public float aw;
    public float ax;
    public CharSequence ay;
    public boolean az;
    public PorterDuff.Mode ba;
    public SpannableStringBuilder bb;
    public ColorStateList bc;
    public TextUtils.TruncateAt bd;
    public int be;
    public ColorStateList bf;
    public float bg;
    public ColorStateList bh;
    public final RectF bi;
    public gqd bj;

    /* renamed from: c, reason: collision with root package name */
    public final Path f11747c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f11748d;

    /* renamed from: e, reason: collision with root package name */
    public ColorStateList f11749e;

    /* renamed from: f, reason: collision with root package name */
    public int f11750f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f11751g;
    public Drawable h;
    public Drawable i;
    public int j;
    public float k;
    public final fgx l;
    public ColorStateList m;
    public ColorStateList n;
    public WeakReference o;
    public boolean p;
    public float q;
    public float r;
    public boolean s;
    public Drawable t;
    public int u;
    public final PointF v;
    public float w;
    public PorterDuffColorFilter x;
    public int[] y;
    public float z;

    public bko(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, cn.trinea.android.developertools.R.attr.chipStyle, cn.trinea.android.developertools.R.style.Widget_MaterialComponents_Chip_Action);
        this.r = -1.0f;
        this.aq = new Paint(1);
        this.ah = new Paint.FontMetrics();
        this.bi = new RectF();
        this.v = new PointF();
        this.f11747c = new Path();
        this.u = MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE;
        this.ba = PorterDuff.Mode.SRC_IN;
        this.o = new WeakReference(null);
        ef(context);
        this.ai = context;
        fgx fgxVar = new fgx(this);
        this.l = fgxVar;
        this.ay = "";
        fgxVar.f16772c.density = context.getResources().getDisplayMetrics().density;
        int[] iArr = f11744a;
        setState(iArr);
        bw(iArr);
        this.f11751g = true;
        f11745b.setTint(-1);
    }

    public static boolean bk(Drawable drawable) {
        return drawable != null && drawable.isStateful();
    }

    public static boolean bl(ColorStateList colorStateList) {
        return colorStateList != null && colorStateList.isStateful();
    }

    public static void bm(Drawable drawable) {
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    public final float bn() {
        if (!bq() && !bv()) {
            return TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        }
        float f2 = this.aa;
        Drawable drawable = this.s ? this.t : this.h;
        float f3 = this.aw;
        if (f3 <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT && drawable != null) {
            f3 = drawable.getIntrinsicWidth();
        }
        return f3 + f2 + this.as;
    }

    public final void bo(Drawable drawable) {
        if (this.t != drawable) {
            float bn = bn();
            this.t = drawable;
            float bn2 = bn();
            bm(this.t);
            cr(this.t);
            invalidateSelf();
            if (bn != bn2) {
                cq();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void bp(Drawable drawable) {
        Drawable drawable2;
        Drawable drawable3 = this.h;
        if (drawable3 != 0) {
            boolean z = drawable3 instanceof ai;
            drawable2 = drawable3;
            if (z) {
                drawable2 = ((brt) ((ai) drawable3)).h;
            }
        } else {
            drawable2 = null;
        }
        if (drawable2 != drawable) {
            float bn = bn();
            this.h = drawable != null ? dzm.aw(drawable).mutate() : null;
            float bn2 = bn();
            bm(drawable2);
            if (bq()) {
                cr(this.h);
            }
            invalidateSelf();
            if (bn != bn2) {
                cq();
            }
        }
    }

    public final boolean bq() {
        return this.p && this.h != null;
    }

    public final void br(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (bq() || bv()) {
            float f2 = this.bg + this.aa;
            Drawable drawable = this.s ? this.t : this.h;
            float f3 = this.aw;
            if (f3 <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT && drawable != null) {
                f3 = drawable.getIntrinsicWidth();
            }
            if (dzm.ap(this) == 0) {
                float f4 = rect.left + f2;
                rectF.left = f4;
                rectF.right = f4 + f3;
            } else {
                float f5 = rect.right - f2;
                rectF.right = f5;
                rectF.left = f5 - f3;
            }
            Drawable drawable2 = this.s ? this.t : this.h;
            float f6 = this.aw;
            if (f6 <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT && drawable2 != null) {
                f6 = (float) Math.ceil(TypedValue.applyDimension(1, 24, this.ai.getResources().getDisplayMetrics()));
                if (drawable2.getIntrinsicHeight() <= f6) {
                    f6 = drawable2.getIntrinsicHeight();
                }
            }
            float exactCenterY = rect.exactCenterY() - (f6 / 2.0f);
            rectF.top = exactCenterY;
            rectF.bottom = exactCenterY + f6;
        }
    }

    public final void bs(float f2) {
        if (this.k != f2) {
            this.k = f2;
            this.aq.setStrokeWidth(f2);
            if (this.av) {
                this.ds.f14951b = f2;
                invalidateSelf();
            }
            invalidateSelf();
        }
    }

    public final void bt(ColorStateList colorStateList) {
        this.ac = true;
        if (this.f11749e != colorStateList) {
            this.f11749e = colorStateList;
            if (bq()) {
                this.h.setTintList(colorStateList);
            }
            onStateChange(getState());
        }
    }

    public final void bu(boolean z) {
        if (this.f11748d != z) {
            this.f11748d = z;
            float bn = bn();
            if (!z && this.s) {
                this.s = false;
            }
            float bn2 = bn();
            invalidateSelf();
            if (bn != bn2) {
                cq();
            }
        }
    }

    public final boolean bv() {
        return this.at && this.t != null && this.s;
    }

    public final boolean bw(int[] iArr) {
        if (Arrays.equals(this.y, iArr)) {
            return false;
        }
        this.y = iArr;
        if (cm()) {
            return ck(getState(), iArr);
        }
        return false;
    }

    public final float bx() {
        return this.av ? eq() : this.r;
    }

    public final void by(float f2) {
        if (this.ag != f2) {
            this.ag = f2;
            invalidateSelf();
            if (cm()) {
                cq();
            }
        }
    }

    public final void bz(asw aswVar) {
        fgx fgxVar = this.l;
        eez eezVar = fgxVar.f16774e;
        TextPaint textPaint = fgxVar.f16772c;
        if (fgxVar.f16773d != aswVar) {
            fgxVar.f16773d = aswVar;
            if (aswVar != null) {
                Context context = this.ai;
                aswVar.r(context, textPaint, eezVar);
                etp etpVar = (etp) fgxVar.f16771b.get();
                if (etpVar != null) {
                    textPaint.drawableState = etpVar.getState();
                }
                aswVar.q(context, textPaint, eezVar);
                fgxVar.f16770a = true;
            }
            etp etpVar2 = (etp) fgxVar.f16771b.get();
            if (etpVar2 != null) {
                bko bkoVar = (bko) etpVar2;
                bkoVar.cq();
                bkoVar.invalidateSelf();
                bkoVar.onStateChange(etpVar2.getState());
            }
        }
    }

    public final void ca(float f2) {
        if (this.aw != f2) {
            float bn = bn();
            this.aw = f2;
            float bn2 = bn();
            invalidateSelf();
            if (bn != bn2) {
                cq();
            }
        }
    }

    public final void cb(boolean z) {
        if (this.az != z) {
            boolean cm = cm();
            this.az = z;
            boolean cm2 = cm();
            if (cm != cm2) {
                if (cm2) {
                    cr(this.i);
                } else {
                    bm(this.i);
                }
                invalidateSelf();
                cq();
            }
        }
    }

    public final void cc(float f2) {
        if (this.r != f2) {
            this.r = f2;
            bem r = this.ds.h.r();
            r.f11390e = new ett(f2);
            r.f11392g = new ett(f2);
            r.l = new ett(f2);
            r.f11386a = new ett(f2);
            setShapeAppearanceModel(r.n());
        }
    }

    public final void cd(ColorStateList colorStateList) {
        if (this.m != colorStateList) {
            this.m = colorStateList;
            if (cm()) {
                this.i.setTintList(colorStateList);
            }
            onStateChange(getState());
        }
    }

    public final void ce(boolean z) {
        if (this.at != z) {
            boolean bv = bv();
            this.at = z;
            boolean bv2 = bv();
            if (bv != bv2) {
                if (bv2) {
                    cr(this.t);
                } else {
                    bm(this.t);
                }
                invalidateSelf();
                cq();
            }
        }
    }

    public final void cf(ColorStateList colorStateList) {
        if (this.ar != colorStateList) {
            this.ar = colorStateList;
            this.au = null;
            onStateChange(getState());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void cg(Drawable drawable) {
        Drawable drawable2;
        Drawable drawable3 = this.i;
        if (drawable3 != 0) {
            boolean z = drawable3 instanceof ai;
            drawable2 = drawable3;
            if (z) {
                drawable2 = ((brt) ((ai) drawable3)).h;
            }
        } else {
            drawable2 = null;
        }
        if (drawable2 != drawable) {
            float cj = cj();
            this.i = drawable != null ? dzm.aw(drawable).mutate() : null;
            this.aj = new RippleDrawable(buj.ac(this.ar), this.i, f11745b);
            float cj2 = cj();
            bm(drawable2);
            if (cm()) {
                cr(this.i);
            }
            invalidateSelf();
            if (cj != cj2) {
                cq();
            }
        }
    }

    public final void ch(ColorStateList colorStateList) {
        if (this.n != colorStateList) {
            this.n = colorStateList;
            if (this.av) {
                dwo dwoVar = this.ds;
                if (dwoVar.f14956g != colorStateList) {
                    dwoVar.f14956g = colorStateList;
                    onStateChange(getState());
                }
            }
            onStateChange(getState());
        }
    }

    public final void ci(float f2) {
        if (this.an != f2) {
            this.an = f2;
            invalidateSelf();
            if (cm()) {
                cq();
            }
        }
    }

    public final float cj() {
        return cm() ? this.ag + this.an + this.ax : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0166  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x016f  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0174  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0149  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean ck(int[] iArr, int[] iArr2) {
        int i;
        int colorForState;
        int[] state;
        boolean z;
        boolean z2;
        int colorForState2;
        float bn;
        ColorStateList colorStateList;
        boolean onStateChange = super.onStateChange(iArr);
        ColorStateList colorStateList2 = this.bh;
        int et = et(colorStateList2 != null ? colorStateList2.getColorForState(iArr, this.ad) : 0);
        boolean z3 = true;
        if (this.ad != et) {
            this.ad = et;
            onStateChange = true;
        }
        ColorStateList colorStateList3 = this.bc;
        int et2 = et(colorStateList3 != null ? colorStateList3.getColorForState(iArr, this.f11750f) : 0);
        if (this.f11750f != et2) {
            this.f11750f = et2;
            onStateChange = true;
        }
        int f2 = afr.f(et2, et);
        if ((this.j != f2) | (this.ds.f14954e == null)) {
            this.j = f2;
            en(ColorStateList.valueOf(f2));
            onStateChange = true;
        }
        ColorStateList colorStateList4 = this.n;
        int colorForState3 = colorStateList4 != null ? colorStateList4.getColorForState(iArr, this.al) : 0;
        if (this.al != colorForState3) {
            this.al = colorForState3;
            onStateChange = true;
        }
        if (this.au != null) {
            boolean z4 = false;
            boolean z5 = false;
            for (int i2 : iArr) {
                if (i2 == 16842910) {
                    z4 = true;
                } else if (i2 == 16842908 || i2 == 16842919 || i2 == 16843623) {
                    z5 = true;
                }
            }
            if (z4 && z5) {
                i = this.au.getColorForState(iArr, this.ae);
                if (this.ae != i) {
                    this.ae = i;
                }
                asw aswVar = this.l.f16773d;
                colorForState = (aswVar != null || (colorStateList = aswVar.f10778b) == null) ? 0 : colorStateList.getColorForState(iArr, this.am);
                if (this.am != colorForState) {
                    this.am = colorForState;
                    onStateChange = true;
                }
                state = getState();
                if (state != null) {
                    int length = state.length;
                    int i3 = 0;
                    while (true) {
                        if (i3 >= length) {
                            break;
                        }
                        if (state[i3] != 16842912) {
                            i3++;
                        } else if (this.f11748d) {
                            z = true;
                        }
                    }
                }
                z = false;
                if (this.s != z && this.t != null) {
                    bn = bn();
                    this.s = z;
                    if (bn == bn()) {
                        onStateChange = true;
                        z2 = true;
                        ColorStateList colorStateList5 = this.ao;
                        colorForState2 = colorStateList5 != null ? colorStateList5.getColorForState(iArr, this.be) : 0;
                        if (this.be != colorForState2) {
                            this.be = colorForState2;
                            ColorStateList colorStateList6 = this.ao;
                            PorterDuff.Mode mode = this.ba;
                            this.x = (colorStateList6 == null || mode == null) ? null : new PorterDuffColorFilter(colorStateList6.getColorForState(getState(), 0), mode);
                        } else {
                            z3 = onStateChange;
                        }
                        if (bk(this.h)) {
                            z3 |= this.h.setState(iArr);
                        }
                        if (bk(this.t)) {
                            z3 |= this.t.setState(iArr);
                        }
                        if (bk(this.i)) {
                            int[] iArr3 = new int[iArr.length + iArr2.length];
                            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
                            System.arraycopy(iArr2, 0, iArr3, iArr.length, iArr2.length);
                            z3 |= this.i.setState(iArr3);
                        }
                        if (bk(this.aj)) {
                            z3 |= this.aj.setState(iArr2);
                        }
                        if (z3) {
                            invalidateSelf();
                        }
                        if (z2) {
                            cq();
                        }
                        return z3;
                    }
                    onStateChange = true;
                }
                z2 = false;
                ColorStateList colorStateList52 = this.ao;
                if (colorStateList52 != null) {
                }
                if (this.be != colorForState2) {
                }
                if (bk(this.h)) {
                }
                if (bk(this.t)) {
                }
                if (bk(this.i)) {
                }
                if (bk(this.aj)) {
                }
                if (z3) {
                }
                if (z2) {
                }
                return z3;
            }
        }
        i = 0;
        if (this.ae != i) {
        }
        asw aswVar2 = this.l.f16773d;
        if (aswVar2 != null) {
        }
        if (this.am != colorForState) {
        }
        state = getState();
        if (state != null) {
        }
        z = false;
        if (this.s != z) {
            bn = bn();
            this.s = z;
            if (bn == bn()) {
            }
        }
        z2 = false;
        ColorStateList colorStateList522 = this.ao;
        if (colorStateList522 != null) {
        }
        if (this.be != colorForState2) {
        }
        if (bk(this.h)) {
        }
        if (bk(this.t)) {
        }
        if (bk(this.i)) {
        }
        if (bk(this.aj)) {
        }
        if (z3) {
        }
        if (z2) {
        }
        return z3;
    }

    public final void cl(boolean z) {
        if (this.p != z) {
            boolean bq = bq();
            this.p = z;
            boolean bq2 = bq();
            if (bq != bq2) {
                if (bq2) {
                    cr(this.h);
                } else {
                    bm(this.h);
                }
                invalidateSelf();
                cq();
            }
        }
    }

    public final boolean cm() {
        return this.az && this.i != null;
    }

    public final void cn(float f2) {
        if (this.ax != f2) {
            this.ax = f2;
            invalidateSelf();
            if (cm()) {
                cq();
            }
        }
    }

    public final void co(float f2) {
        if (this.aa != f2) {
            float bn = bn();
            this.aa = f2;
            float bn2 = bn();
            invalidateSelf();
            if (bn != bn2) {
                cq();
            }
        }
    }

    public final void cp(ColorStateList colorStateList) {
        Drawable drawable;
        if (this.bf != colorStateList) {
            this.bf = colorStateList;
            if (this.at && (drawable = this.t) != null && this.f11748d) {
                drawable.setTintList(colorStateList);
            }
            onStateChange(getState());
        }
    }

    public final void cq() {
        cdz cdzVar = (cdz) this.o.get();
        if (cdzVar != null) {
            Chip chip = (Chip) cdzVar;
            chip.z(chip.f9035e);
            chip.requestLayout();
            chip.invalidateOutline();
        }
    }

    public final void cr(Drawable drawable) {
        if (drawable == null) {
            return;
        }
        drawable.setCallback(this);
        dzm.bb(drawable, dzm.ap(this));
        drawable.setLevel(getLevel());
        drawable.setVisible(isVisible(), false);
        if (drawable == this.i) {
            if (drawable.isStateful()) {
                drawable.setState(this.y);
            }
            drawable.setTintList(this.m);
            return;
        }
        Drawable drawable2 = this.h;
        if (drawable == drawable2 && this.ac) {
            drawable2.setTintList(this.f11749e);
        }
        if (drawable.isStateful()) {
            drawable.setState(getState());
        }
    }

    public final void cs(float f2) {
        if (this.as != f2) {
            float bn = bn();
            this.as = f2;
            float bn2 = bn();
            invalidateSelf();
            if (bn != bn2) {
                cq();
            }
        }
    }

    @Override // g.ddm, android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        int i;
        Canvas canvas2;
        int i2;
        float f2;
        int i3;
        int saveLayerAlpha;
        Rect bounds = getBounds();
        if (bounds.isEmpty() || (i = this.u) == 0) {
            return;
        }
        if (i < 255) {
            float f3 = bounds.left;
            float f4 = bounds.top;
            float f5 = bounds.right;
            float f6 = bounds.bottom;
            if (Build.VERSION.SDK_INT > 21) {
                canvas2 = canvas;
                saveLayerAlpha = canvas2.saveLayerAlpha(f3, f4, f5, f6, i);
            } else {
                canvas2 = canvas;
                saveLayerAlpha = canvas2.saveLayerAlpha(f3, f4, f5, f6, i, 31);
            }
            i2 = saveLayerAlpha;
        } else {
            canvas2 = canvas;
            i2 = 0;
        }
        boolean z = this.av;
        Paint paint = this.aq;
        RectF rectF = this.bi;
        if (!z) {
            paint.setColor(this.ad);
            paint.setStyle(Paint.Style.FILL);
            rectF.set(bounds);
            canvas2.drawRoundRect(rectF, bx(), bx(), paint);
        }
        if (!this.av) {
            paint.setColor(this.f11750f);
            paint.setStyle(Paint.Style.FILL);
            ColorFilter colorFilter = this.ap;
            if (colorFilter == null) {
                colorFilter = this.x;
            }
            paint.setColorFilter(colorFilter);
            rectF.set(bounds);
            canvas2.drawRoundRect(rectF, bx(), bx(), paint);
        }
        if (this.av) {
            super.draw(canvas);
        }
        if (this.k > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT && !this.av) {
            paint.setColor(this.al);
            paint.setStyle(Paint.Style.STROKE);
            if (!this.av) {
                ColorFilter colorFilter2 = this.ap;
                if (colorFilter2 == null) {
                    colorFilter2 = this.x;
                }
                paint.setColorFilter(colorFilter2);
            }
            float f7 = bounds.left;
            float f8 = this.k / 2.0f;
            rectF.set(f7 + f8, bounds.top + f8, bounds.right - f8, bounds.bottom - f8);
            float f9 = this.r - (this.k / 2.0f);
            canvas2.drawRoundRect(rectF, f9, f9, paint);
        }
        paint.setColor(this.ae);
        paint.setStyle(Paint.Style.FILL);
        rectF.set(bounds);
        if (this.av) {
            RectF rectF2 = new RectF(bounds);
            dwo dwoVar = this.ds;
            cjg cjgVar = dwoVar.h;
            float[] fArr = this.dq;
            float f10 = dwoVar.n;
            eie eieVar = this.dm;
            ll llVar = this.dj;
            f2 = 2.0f;
            Path path = this.f11747c;
            llVar.m(cjgVar, fArr, f10, rectF2, eieVar, path);
            eg(canvas2, paint, path, this.ds.h, this.dq, eu());
        } else {
            canvas2.drawRoundRect(rectF, bx(), bx(), paint);
            f2 = 2.0f;
        }
        if (bq()) {
            br(bounds, rectF);
            float f11 = rectF.left;
            float f12 = rectF.top;
            canvas2.translate(f11, f12);
            this.h.setBounds(0, 0, (int) rectF.width(), (int) rectF.height());
            this.h.draw(canvas2);
            canvas2.translate(-f11, -f12);
        }
        if (bv()) {
            br(bounds, rectF);
            float f13 = rectF.left;
            float f14 = rectF.top;
            canvas2.translate(f13, f14);
            this.t.setBounds(0, 0, (int) rectF.width(), (int) rectF.height());
            this.t.draw(canvas2);
            canvas2.translate(-f13, -f14);
        }
        if (this.f11751g && this.ay != null) {
            PointF pointF = this.v;
            pointF.set(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
            Paint.Align align = Paint.Align.LEFT;
            CharSequence charSequence = this.ay;
            fgx fgxVar = this.l;
            if (charSequence != null) {
                float bn = bn() + this.bg + this.z;
                if (dzm.ap(this) == 0) {
                    pointF.x = bounds.left + bn;
                } else {
                    pointF.x = bounds.right - bn;
                    align = Paint.Align.RIGHT;
                }
                float centerY = bounds.centerY();
                TextPaint textPaint = fgxVar.f16772c;
                Paint.FontMetrics fontMetrics = this.ah;
                textPaint.getFontMetrics(fontMetrics);
                pointF.y = centerY - ((fontMetrics.descent + fontMetrics.ascent) / f2);
            }
            rectF.setEmpty();
            if (this.ay != null) {
                float bn2 = bn() + this.bg + this.z;
                float cj = cj() + this.w + this.q;
                if (dzm.ap(this) == 0) {
                    rectF.left = bounds.left + bn2;
                    rectF.right = bounds.right - cj;
                } else {
                    rectF.left = bounds.left + cj;
                    rectF.right = bounds.right - bn2;
                }
                rectF.top = bounds.top;
                rectF.bottom = bounds.bottom;
            }
            asw aswVar = fgxVar.f16773d;
            TextPaint textPaint2 = fgxVar.f16772c;
            if (aswVar != null) {
                textPaint2.drawableState = getState();
                fgxVar.f16773d.q(this.ai, textPaint2, fgxVar.f16774e);
            }
            textPaint2.setTextAlign(align);
            boolean z2 = Math.round(fgxVar.g(this.ay.toString())) > Math.round(rectF.width());
            if (z2) {
                int save = canvas2.save();
                canvas2.clipRect(rectF);
                i3 = save;
            } else {
                i3 = 0;
            }
            CharSequence charSequence2 = this.ay;
            if (z2 && this.bd != null) {
                charSequence2 = TextUtils.ellipsize(charSequence2, textPaint2, rectF.width(), this.bd);
            }
            canvas.drawText(charSequence2, 0, charSequence2.length(), pointF.x, pointF.y, textPaint2);
            canvas2 = canvas;
            if (z2) {
                canvas2.restoreToCount(i3);
            }
        }
        if (cm()) {
            rectF.setEmpty();
            if (cm()) {
                float f15 = this.w + this.ax;
                if (dzm.ap(this) == 0) {
                    float f16 = bounds.right - f15;
                    rectF.right = f16;
                    rectF.left = f16 - this.an;
                } else {
                    float f17 = bounds.left + f15;
                    rectF.left = f17;
                    rectF.right = f17 + this.an;
                }
                float exactCenterY = bounds.exactCenterY();
                float f18 = this.an;
                float f19 = exactCenterY - (f18 / f2);
                rectF.top = f19;
                rectF.bottom = f19 + f18;
            }
            float f20 = rectF.left;
            float f21 = rectF.top;
            canvas2.translate(f20, f21);
            this.i.setBounds(0, 0, (int) rectF.width(), (int) rectF.height());
            this.aj.setBounds(this.i.getBounds());
            this.aj.jumpToCurrentState();
            this.aj.draw(canvas2);
            canvas2.translate(-f20, -f21);
        }
        if (this.u < 255) {
            canvas2.restoreToCount(i2);
        }
    }

    @Override // g.ddm, android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.u;
    }

    @Override // android.graphics.drawable.Drawable
    public final ColorFilter getColorFilter() {
        return this.ap;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return (int) this.af;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return Math.min(Math.round(cj() + this.l.g(this.ay.toString()) + bn() + this.bg + this.z + this.q + this.w), this.f11746ab);
    }

    @Override // g.ddm, android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // g.ddm, android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        Outline outline2;
        if (this.av) {
            super.getOutline(outline);
            return;
        }
        Rect bounds = getBounds();
        if (bounds.isEmpty()) {
            outline2 = outline;
            outline2.setRoundRect(0, 0, getIntrinsicWidth(), (int) this.af, this.r);
        } else {
            outline.setRoundRect(bounds, this.r);
            outline2 = outline;
        }
        outline2.setAlpha(this.u / 255.0f);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // g.ddm, android.graphics.drawable.Drawable
    public final boolean isStateful() {
        ColorStateList colorStateList;
        if (bl(this.bh) || bl(this.bc) || bl(this.n)) {
            return true;
        }
        asw aswVar = this.l.f16773d;
        if (aswVar == null || (colorStateList = aswVar.f10778b) == null || !colorStateList.isStateful()) {
            return (this.at && this.t != null && this.f11748d) || bk(this.h) || bk(this.t) || bl(this.ao);
        }
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLayoutDirectionChanged(int i) {
        boolean onLayoutDirectionChanged = super.onLayoutDirectionChanged(i);
        if (bq()) {
            onLayoutDirectionChanged |= dzm.bb(this.h, i);
        }
        if (bv()) {
            onLayoutDirectionChanged |= dzm.bb(this.t, i);
        }
        if (cm()) {
            onLayoutDirectionChanged |= dzm.bb(this.i, i);
        }
        if (!onLayoutDirectionChanged) {
            return true;
        }
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLevelChange(int i) {
        boolean onLevelChange = super.onLevelChange(i);
        if (bq()) {
            onLevelChange |= this.h.setLevel(i);
        }
        if (bv()) {
            onLevelChange |= this.t.setLevel(i);
        }
        if (cm()) {
            onLevelChange |= this.i.setLevel(i);
        }
        if (onLevelChange) {
            invalidateSelf();
        }
        return onLevelChange;
    }

    @Override // g.ddm, android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] iArr) {
        if (this.av) {
            super.onStateChange(iArr);
        }
        return ck(iArr, this.y);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.scheduleDrawable(this, runnable, j);
        }
    }

    @Override // g.ddm, android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        if (this.u != i) {
            this.u = i;
            invalidateSelf();
        }
    }

    @Override // g.ddm, android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        if (this.ap != colorFilter) {
            this.ap = colorFilter;
            invalidateSelf();
        }
    }

    @Override // g.ddm, android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        if (this.ao != colorStateList) {
            this.ao = colorStateList;
            onStateChange(getState());
        }
    }

    @Override // g.ddm, android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        if (this.ba != mode) {
            this.ba = mode;
            ColorStateList colorStateList = this.ao;
            this.x = (colorStateList == null || mode == null) ? null : new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        if (bq()) {
            visible |= this.h.setVisible(z, z2);
        }
        if (bv()) {
            visible |= this.t.setVisible(z, z2);
        }
        if (cm()) {
            visible |= this.i.setVisible(z, z2);
        }
        if (visible) {
            invalidateSelf();
        }
        return visible;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.unscheduleDrawable(this, runnable);
        }
    }
}

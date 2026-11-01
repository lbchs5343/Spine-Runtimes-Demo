package g;

import android.animation.TimeInterpolator;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.Log;
import android.view.Gravity;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.google.android.material.textfield.TextInputLayout;

/* loaded from: classes3.dex */
public final class hdh {

    /* renamed from: a, reason: collision with root package name */
    public aor f19266a;
    public CharSequence aa;

    /* renamed from: ab, reason: collision with root package name */
    public int[] f19267ab;
    public float ac;
    public int ad;
    public Typeface ae;
    public float af;
    public Typeface ag;
    public boolean ai;
    public float aj;
    public Typeface ak;
    public float al;
    public float am;
    public float an;
    public TimeInterpolator ao;
    public final TextPaint ap;
    public float ar;
    public float as;
    public ColorStateList at;
    public float au;
    public Typeface aw;
    public float ax;
    public final TextPaint ay;
    public float ba;
    public final Rect bb;
    public StaticLayout be;
    public float bf;
    public Typeface bh;
    public float bj;
    public float bk;

    /* renamed from: d, reason: collision with root package name */
    public ColorStateList f19270d;

    /* renamed from: f, reason: collision with root package name */
    public float f19272f;

    /* renamed from: g, reason: collision with root package name */
    public int f19273g;
    public CharSequence h;
    public float i;
    public Typeface j;
    public TimeInterpolator k;
    public boolean l;
    public float m;
    public float n;
    public ColorStateList o;
    public float p;
    public final Rect q;
    public CharSequence r;
    public int s;
    public final RectF u;
    public float v;
    public final TextInputLayout w;
    public Typeface x;
    public boolean y;
    public float z;
    public int ah = 16;
    public int bi = 16;

    /* renamed from: c, reason: collision with root package name */
    public float f19269c = 15.0f;
    public float aq = 15.0f;
    public final TextUtils.TruncateAt av = TextUtils.TruncateAt.END;
    public final boolean bg = true;
    public int az = 1;
    public int bd = 1;
    public final float t = 1.0f;

    /* renamed from: e, reason: collision with root package name */
    public final int f19271e = cla.f13050b;

    /* renamed from: b, reason: collision with root package name */
    public int f19268b = -1;
    public int bc = -1;

    public hdh(TextInputLayout textInputLayout) {
        this.w = textInputLayout;
        TextPaint textPaint = new TextPaint(TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA);
        this.ay = textPaint;
        this.ap = new TextPaint(textPaint);
        this.q = new Rect();
        this.bb = new Rect();
        this.u = new RectF();
        bv(textInputLayout.getContext().getResources().getConfiguration());
    }

    public static float bl(float f2, float f3, float f4, TimeInterpolator timeInterpolator) {
        if (timeInterpolator != null) {
            f4 = timeInterpolator.getInterpolation(f4);
        }
        return gtk.e(f2, f3, f4);
    }

    public static int bm(int i, float f2, int i2) {
        float f3 = 1.0f - f2;
        return Color.argb(Math.round((Color.alpha(i2) * f2) + (Color.alpha(i) * f3)), Math.round((Color.red(i2) * f2) + (Color.red(i) * f3)), Math.round((Color.green(i2) * f2) + (Color.green(i) * f3)), Math.round((Color.blue(i2) * f2) + (Color.blue(i) * f3)));
    }

    public final void bn(ColorStateList colorStateList) {
        if (this.f19270d == colorStateList && this.at == colorStateList) {
            return;
        }
        this.f19270d = colorStateList;
        this.at = colorStateList;
        bx(false);
    }

    public final boolean bo() {
        return this.bd == 1;
    }

    public final void bp(Typeface typeface) {
        boolean z;
        boolean br = br(typeface);
        if (this.bh != typeface) {
            this.bh = typeface;
            Typeface k = kj.k(this.w.getContext().getResources().getConfiguration(), typeface);
            this.ag = k;
            if (k == null) {
                k = this.bh;
            }
            this.ae = k;
            z = true;
        } else {
            z = false;
        }
        if (br || z) {
            bx(false);
        }
    }

    public final void bq(float f2, boolean z) {
        float f3;
        Typeface typeface;
        float f4;
        if (this.r == null) {
            return;
        }
        float width = this.q.width();
        float width2 = this.bb.width();
        if (Math.abs(f2 - 1.0f) < 1.0E-5f) {
            f3 = bo() ? this.aq : this.f19269c;
            f4 = bo() ? this.af : this.ac;
            this.ax = bo() ? 1.0f : bl(this.f19269c, this.aq, f2, this.ao) / this.f19269c;
            if (!bo()) {
                width = width2;
            }
            typeface = this.ak;
            width2 = width;
        } else {
            f3 = this.f19269c;
            float f5 = this.ac;
            typeface = this.ae;
            if (Math.abs(f2 - TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) < 1.0E-5f) {
                this.ax = 1.0f;
            } else {
                this.ax = bl(this.f19269c, this.aq, f2, this.ao) / this.f19269c;
            }
            float f6 = this.aq / this.f19269c;
            float f7 = width2 * f6;
            if (!z && f7 > width && bo()) {
                width2 = Math.min(width / f6, width2);
            }
            f4 = f5;
        }
        int i = f2 < 0.5f ? this.az : this.bd;
        TextPaint textPaint = this.ay;
        if (width2 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            boolean z2 = this.m != f3;
            boolean z3 = this.bk != f4;
            boolean z4 = this.j != typeface;
            StaticLayout staticLayout = this.be;
            boolean z5 = z2 || z3 || (staticLayout != null && (width2 > ((float) staticLayout.getWidth()) ? 1 : (width2 == ((float) staticLayout.getWidth()) ? 0 : -1)) != 0) || z4 || (this.f19273g != i) || this.l;
            this.m = f3;
            this.bk = f4;
            this.j = typeface;
            this.l = false;
            this.f19273g = i;
            textPaint.setLinearText(this.ax != 1.0f);
            r7 = z5;
        }
        if (this.aa == null || r7) {
            textPaint.setTextSize(this.m);
            textPaint.setTypeface(this.j);
            textPaint.setLetterSpacing(this.bk);
            boolean by = by(this.r);
            this.y = by;
            StaticLayout bs = bs(((this.az > 1 || this.bd > 1) && !by) ? i : 1, textPaint, this.r, width2 * (bo() ? 1.0f : this.ax), this.y);
            this.be = bs;
            this.aa = bs.getText();
        }
    }

    public final boolean br(Typeface typeface) {
        aor aorVar = this.f19266a;
        if (aorVar != null) {
            aorVar.f10582c = true;
        }
        if (this.x == typeface) {
            return false;
        }
        this.x = typeface;
        Typeface k = kj.k(this.w.getContext().getResources().getConfiguration(), typeface);
        this.aw = k;
        if (k == null) {
            k = this.x;
        }
        this.ak = k;
        return true;
    }

    public final StaticLayout bs(int i, TextPaint textPaint, CharSequence charSequence, float f2, boolean z) {
        Layout.Alignment alignment;
        StaticLayout staticLayout = null;
        try {
            if (i == 1) {
                alignment = Layout.Alignment.ALIGN_NORMAL;
            } else {
                int absoluteGravity = Gravity.getAbsoluteGravity(this.ah, this.y ? 1 : 0) & 7;
                alignment = absoluteGravity != 1 ? absoluteGravity != 5 ? this.y ? Layout.Alignment.ALIGN_OPPOSITE : Layout.Alignment.ALIGN_NORMAL : this.y ? Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_OPPOSITE : Layout.Alignment.ALIGN_CENTER;
            }
            cla claVar = new cla(charSequence, textPaint, (int) f2);
            claVar.h = this.av;
            claVar.f13054f = z;
            claVar.i = alignment;
            claVar.o = false;
            claVar.k = i;
            float f3 = this.t;
            claVar.q = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            claVar.f13053e = f3;
            claVar.m = this.f19271e;
            claVar.l = null;
            staticLayout = claVar.r();
        } catch (gkz e2) {
            Log.e("CollapsingTextHelper", e2.getCause().getMessage(), e2);
        }
        staticLayout.getClass();
        return staticLayout;
    }

    public final float bt() {
        int i = this.f19268b;
        if (i != -1) {
            return i;
        }
        float f2 = this.aq;
        TextPaint textPaint = this.ap;
        textPaint.setTextSize(f2);
        textPaint.setTypeface(this.ak);
        textPaint.setLetterSpacing(this.af);
        return -textPaint.ascent();
    }

    public final void bu(float f2) {
        float ac = dzm.ac(f2, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f);
        if (ac != this.ar) {
            this.ar = ac;
            bw();
        }
    }

    public final void bv(Configuration configuration) {
        if (Build.VERSION.SDK_INT >= 31) {
            Typeface typeface = this.x;
            if (typeface != null) {
                this.aw = kj.k(configuration, typeface);
            }
            Typeface typeface2 = this.bh;
            if (typeface2 != null) {
                this.ag = kj.k(configuration, typeface2);
            }
            Typeface typeface3 = this.aw;
            if (typeface3 == null) {
                typeface3 = this.x;
            }
            this.ak = typeface3;
            Typeface typeface4 = this.ag;
            if (typeface4 == null) {
                typeface4 = this.bh;
            }
            this.ae = typeface4;
            bx(true);
        }
    }

    public final void bw() {
        float f2 = this.ar;
        float f3 = this.bb.left;
        Rect rect = this.q;
        float bl = bl(f3, rect.left, f2, this.k);
        RectF rectF = this.u;
        rectF.left = bl;
        rectF.top = bl(this.am, this.p, f2, this.k);
        rectF.right = bl(r1.right, rect.right, f2, this.k);
        rectF.bottom = bl(r1.bottom, rect.bottom, f2, this.k);
        this.au = bl(this.i, this.al, f2, this.k);
        this.bj = bl(this.am, this.p, f2, this.k);
        bq(f2, false);
        TextInputLayout textInputLayout = this.w;
        textInputLayout.postInvalidateOnAnimation();
        fca fcaVar = gtk.f18728c;
        this.z = 1.0f - bl(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f, 1.0f - f2, fcaVar);
        textInputLayout.postInvalidateOnAnimation();
        this.n = bl(1.0f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, f2, fcaVar);
        textInputLayout.postInvalidateOnAnimation();
        ColorStateList colorStateList = this.f19270d;
        ColorStateList colorStateList2 = this.at;
        TextPaint textPaint = this.ay;
        if (colorStateList != colorStateList2) {
            textPaint.setColor(bm(bz(colorStateList2), f2, bz(this.f19270d)));
        } else {
            textPaint.setColor(bz(colorStateList));
        }
        float f4 = this.af;
        float f5 = this.ac;
        if (f4 != f5) {
            textPaint.setLetterSpacing(bl(f5, f4, f2, fcaVar));
        } else {
            textPaint.setLetterSpacing(f4);
        }
        this.f19272f = gtk.e(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, this.ba, f2);
        this.bf = gtk.e(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, this.as, f2);
        this.aj = gtk.e(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, this.v, f2);
        int bm = bm(0, f2, bz(this.o));
        this.ad = bm;
        textPaint.setShadowLayer(this.f19272f, this.bf, this.aj, bm);
        textInputLayout.postInvalidateOnAnimation();
    }

    public final void bx(boolean z) {
        float measureText;
        TextInputLayout textInputLayout = this.w;
        if ((textInputLayout.getHeight() <= 0 || textInputLayout.getWidth() <= 0) && !z) {
            return;
        }
        bq(1.0f, z);
        CharSequence charSequence = this.aa;
        TextPaint textPaint = this.ay;
        if (charSequence != null && this.be != null) {
            this.h = bo() ? TextUtils.ellipsize(this.aa, textPaint, this.be.getWidth(), this.av) : this.aa;
        }
        CharSequence charSequence2 = this.h;
        float f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        if (charSequence2 != null) {
            this.an = textPaint.measureText(charSequence2, 0, charSequence2.length());
        } else {
            this.an = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        }
        int absoluteGravity = Gravity.getAbsoluteGravity(this.bi, this.y ? 1 : 0);
        int i = absoluteGravity & 112;
        Rect rect = this.q;
        if (i == 48) {
            this.p = rect.top;
        } else if (i != 80) {
            this.p = rect.centerY() - ((textPaint.descent() - textPaint.ascent()) / 2.0f);
        } else {
            this.p = textPaint.ascent() + rect.bottom;
        }
        int i2 = absoluteGravity & 8388615;
        if (i2 == 1) {
            this.al = rect.centerX() - (this.an / 2.0f);
        } else if (i2 != 5) {
            this.al = rect.left;
        } else {
            this.al = rect.right - this.an;
        }
        if (this.an <= rect.width()) {
            float f3 = this.al;
            float max = Math.max(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, rect.left - f3) + f3;
            this.al = max;
            this.al = Math.min(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, rect.right - (this.an + max)) + max;
        }
        float f4 = this.aq;
        TextPaint textPaint2 = this.ap;
        textPaint2.setTextSize(f4);
        textPaint2.setTypeface(this.ak);
        textPaint2.setLetterSpacing(this.af);
        if (textPaint2.descent() + (-textPaint2.ascent()) <= rect.height()) {
            float f5 = this.p;
            float max2 = Math.max(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, rect.top - f5) + f5;
            this.p = max2;
            this.p = Math.min(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, rect.bottom - (bt() + max2)) + max2;
        }
        bq(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, z);
        float height = this.be != null ? r15.getHeight() : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        StaticLayout staticLayout = this.be;
        if (staticLayout == null || this.az <= 1) {
            CharSequence charSequence3 = this.aa;
            measureText = charSequence3 != null ? textPaint.measureText(charSequence3, 0, charSequence3.length()) : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        } else {
            measureText = staticLayout.getWidth();
        }
        StaticLayout staticLayout2 = this.be;
        this.s = staticLayout2 != null ? staticLayout2.getLineCount() : 0;
        int absoluteGravity2 = Gravity.getAbsoluteGravity(this.ah, this.y ? 1 : 0);
        int i3 = absoluteGravity2 & 112;
        Rect rect2 = this.bb;
        if (i3 == 48) {
            this.am = rect2.top;
        } else if (i3 != 80) {
            this.am = rect2.centerY() - (height / 2.0f);
        } else {
            float f6 = rect2.bottom - height;
            if (this.ai) {
                f2 = textPaint.descent();
            }
            this.am = f6 + f2;
        }
        int i4 = absoluteGravity2 & 8388615;
        if (i4 == 1) {
            this.i = rect2.centerX() - (measureText / 2.0f);
        } else if (i4 != 5) {
            this.i = rect2.left;
        } else {
            this.i = rect2.right - measureText;
        }
        bq(this.ar, false);
        textInputLayout.postInvalidateOnAnimation();
        bw();
    }

    public final boolean by(CharSequence charSequence) {
        boolean z = this.w.getLayoutDirection() == 1;
        if (this.bg) {
            return (z ? cl.f13045a : cl.f13048d).k(charSequence, charSequence.length());
        }
        return z;
    }

    public final int bz(ColorStateList colorStateList) {
        if (colorStateList == null) {
            return 0;
        }
        int[] iArr = this.f19267ab;
        return iArr != null ? colorStateList.getColorForState(iArr, 0) : colorStateList.getDefaultColor();
    }
}

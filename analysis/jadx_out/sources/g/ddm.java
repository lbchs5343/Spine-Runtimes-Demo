package g;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Looper;
import android.util.AttributeSet;
import android.util.StateSet;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import j$.util.Objects;
import java.util.BitSet;

/* loaded from: classes3.dex */
public class ddm extends Drawable implements djx, cbe {
    public static final awu[] ct;
    public static final Paint cu;
    public final Matrix cv;
    public final Paint cw;
    public PorterDuffColorFilter cx;
    public boolean cy;
    public cjg cz;
    public final RectF da;
    public final Paint db;
    public aoi dc;
    public final Path dd;
    public float[] de;
    public final ajj[] df;
    public final RectF dg;
    public final RectF dh;
    public PorterDuffColorFilter di;
    public final ll dj;
    public final ajj[] dk;
    public final BitSet dl;
    public final eie dm;
    public final evf dn;

    /* renamed from: do, reason: not valid java name */
    public ceq f3do;
    public boolean dp;
    public float[] dq;
    public final Path dr;
    public dwo ds;
    public final Region dt;
    public boolean du;
    public final eov[] dv;
    public final ech dw;
    public final Region dx;
    public boolean dy;

    static {
        int i = 0;
        afo n = kj.n(0);
        bem.m(n);
        bem.m(n);
        bem.m(n);
        bem.m(n);
        Paint paint = new Paint(1);
        cu = paint;
        paint.setColor(-1);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        ct = new awu[4];
        while (true) {
            awu[] awuVarArr = ct;
            if (i >= awuVarArr.length) {
                return;
            }
            awuVarArr[i] = new awu(i);
            i++;
        }
    }

    public ddm() {
        this(new cjg());
    }

    public ddm(Context context, AttributeSet attributeSet, int i, int i2) {
        this(cjg.n(context, attributeSet, i, i2).n());
    }

    public ddm(cjg cjgVar) {
        this(new dwo(cjgVar));
    }

    public ddm(dwo dwoVar) {
        this.dn = new evf(13, this);
        this.df = new ajj[4];
        this.dk = new ajj[4];
        this.dl = new BitSet(8);
        this.cv = new Matrix();
        this.dr = new Path();
        this.dd = new Path();
        this.dh = new RectF();
        this.dg = new RectF();
        this.dx = new Region();
        this.dt = new Region();
        Paint paint = new Paint(1);
        this.db = paint;
        Paint paint2 = new Paint(1);
        this.cw = paint2;
        this.dw = new ech();
        this.dj = Looper.getMainLooper().getThread() == Thread.currentThread() ? crs.f13401a : new ll();
        this.da = new RectF();
        this.du = true;
        this.dp = true;
        this.dv = new eov[4];
        this.ds = dwoVar;
        paint2.setStyle(Paint.Style.STROKE);
        paint.setStyle(Paint.Style.FILL);
        ej();
        es(getState());
        this.dm = new eie(13, this);
    }

    public static float dz(RectF rectF, cjg cjgVar, float[] fArr) {
        if (fArr == null) {
            if (cjgVar.q(rectF)) {
                return cjgVar.f12975e.b(rectF);
            }
            return -1.0f;
        }
        if (fArr.length > 1) {
            float f2 = fArr[0];
            for (int i = 1; i < fArr.length; i++) {
                if (fArr[i] != f2) {
                    return -1.0f;
                }
            }
        }
        if (cjgVar.p()) {
            return fArr[0];
        }
        return -1.0f;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Paint paint;
        PorterDuffColorFilter porterDuffColorFilter = this.cx;
        Paint paint2 = this.db;
        paint2.setColorFilter(porterDuffColorFilter);
        int alpha = paint2.getAlpha();
        int i = this.ds.f14955f;
        paint2.setAlpha(((i + (i >>> 7)) * alpha) >>> 8);
        PorterDuffColorFilter porterDuffColorFilter2 = this.di;
        Paint paint3 = this.cw;
        paint3.setColorFilter(porterDuffColorFilter2);
        paint3.setStrokeWidth(this.ds.f14951b);
        int alpha2 = paint3.getAlpha();
        int i2 = this.ds.f14955f;
        paint3.setAlpha(((i2 + (i2 >>> 7)) * alpha2) >>> 8);
        Paint.Style style = this.ds.o;
        if (style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.FILL) {
            boolean z = this.dy;
            paint = paint2;
            Path path = this.dr;
            if (z) {
                eh(eu(), path);
                this.dy = false;
            }
            dwo dwoVar = this.ds;
            dwoVar.getClass();
            if (dwoVar.f14952c > 0 && !eo() && !path.isConvex() && Build.VERSION.SDK_INT < 29) {
                canvas.save();
                double d2 = 0;
                canvas.translate((int) (Math.sin(Math.toRadians(d2)) * this.ds.j), (int) (Math.cos(Math.toRadians(d2)) * this.ds.j));
                if (this.du) {
                    RectF rectF = this.da;
                    int width = (int) (rectF.width() - getBounds().width());
                    int height = (int) (rectF.height() - getBounds().height());
                    if (width < 0 || height < 0) {
                        throw new IllegalStateException("Invalid shadow bounds. Check that the treatments result in a valid path.");
                    }
                    Bitmap createBitmap = Bitmap.createBitmap((this.ds.f14952c * 2) + ((int) rectF.width()) + width, (this.ds.f14952c * 2) + ((int) rectF.height()) + height, Bitmap.Config.ARGB_8888);
                    Canvas canvas2 = new Canvas(createBitmap);
                    float f2 = (getBounds().left - this.ds.f14952c) - width;
                    float f3 = (getBounds().top - this.ds.f14952c) - height;
                    canvas2.translate(-f2, -f3);
                    ee(canvas2);
                    canvas.drawBitmap(createBitmap, f2, f3, (Paint) null);
                    createBitmap.recycle();
                    canvas.restore();
                } else {
                    ee(canvas);
                    canvas.restore();
                }
            }
            eg(canvas, paint, path, this.ds.h, this.dq, eu());
        } else {
            paint = paint2;
        }
        if (eb()) {
            if (this.cy) {
                cjg cjgVar = this.ds.h;
                bem r = cjgVar.r();
                gjn gjnVar = cjgVar.f12975e;
                evf evfVar = this.dn;
                r.f11390e = evfVar.n(gjnVar);
                r.f11392g = evfVar.n(cjgVar.f12977g);
                r.f11386a = evfVar.n(cjgVar.f12971a);
                r.l = evfVar.n(cjgVar.l);
                this.cz = r.n();
                float[] fArr = this.dq;
                if (fArr != null) {
                    if (this.de == null) {
                        this.de = new float[fArr.length];
                    }
                    float ep = ep();
                    int i3 = 0;
                    while (true) {
                        float[] fArr2 = this.dq;
                        if (i3 >= fArr2.length) {
                            break;
                        }
                        this.de[i3] = Math.max(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, fArr2[i3] - ep);
                        i3++;
                    }
                } else {
                    this.de = null;
                }
                cjg cjgVar2 = this.cz;
                float[] fArr3 = this.de;
                float f4 = this.ds.n;
                RectF eu = eu();
                RectF rectF2 = this.dg;
                rectF2.set(eu);
                float ep2 = ep();
                rectF2.inset(ep2, ep2);
                this.dj.m(cjgVar2, fArr3, f4, rectF2, null, this.dd);
                this.cy = false;
            }
            el(canvas);
        }
        paint.setAlpha(alpha);
        paint3.setAlpha(alpha2);
    }

    public final float ea() {
        float[] fArr = this.dq;
        if (fArr != null) {
            return (((fArr[3] + fArr[2]) - fArr[1]) - fArr[0]) / 2.0f;
        }
        RectF eu = eu();
        cjg cjgVar = this.ds.h;
        ll llVar = this.dj;
        llVar.getClass();
        float b2 = cjgVar.f12975e.b(eu);
        cjg cjgVar2 = this.ds.h;
        llVar.getClass();
        float b3 = cjgVar2.f12971a.b(eu) + b2;
        cjg cjgVar3 = this.ds.h;
        llVar.getClass();
        float b4 = b3 - cjgVar3.l.b(eu);
        cjg cjgVar4 = this.ds.h;
        llVar.getClass();
        return (b4 - cjgVar4.f12977g.b(eu)) / 2.0f;
    }

    public final boolean eb() {
        Paint.Style style = this.ds.o;
        return (style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.STROKE) && this.cw.getStrokeWidth() > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    }

    public final void ec(float f2) {
        dwo dwoVar = this.ds;
        if (dwoVar.f14953d != f2) {
            dwoVar.f14953d = f2;
            ek();
        }
    }

    public final void ed(ceq ceqVar) {
        if (this.f3do == ceqVar) {
            return;
        }
        this.f3do = ceqVar;
        int i = 0;
        while (true) {
            eov[] eovVarArr = this.dv;
            if (i >= eovVarArr.length) {
                ei(getState(), true);
                invalidateSelf();
                return;
            }
            if (eovVarArr[i] == null) {
                eovVarArr[i] = new eov(this, ct[i]);
            }
            eov eovVar = eovVarArr[i];
            ceq ceqVar2 = new ceq();
            ceqVar2.k((float) ceqVar.f12756g);
            double d2 = ceqVar.f12753d;
            ceqVar2.l((float) (d2 * d2));
            eovVar.h = ceqVar2;
            i++;
        }
    }

    public final void ee(Canvas canvas) {
        this.dl.cardinality();
        int i = this.ds.j;
        Path path = this.dr;
        ech echVar = this.dw;
        if (i != 0) {
            canvas.drawPath(path, echVar.h);
        }
        for (int i2 = 0; i2 < 4; i2++) {
            ajj ajjVar = this.df[i2];
            int i3 = this.ds.f14952c;
            Matrix matrix = ajj.f10323a;
            ajjVar.c(matrix, echVar, i3, canvas);
            this.dk[i2].c(matrix, echVar, this.ds.f14952c, canvas);
        }
        if (this.du) {
            double d2 = 0;
            int sin = (int) (Math.sin(Math.toRadians(d2)) * this.ds.j);
            int cos = (int) (Math.cos(Math.toRadians(d2)) * this.ds.j);
            canvas.translate(-sin, -cos);
            canvas.drawPath(path, cu);
            canvas.translate(sin, cos);
        }
    }

    public final void ef(Context context) {
        this.ds.p = new gid(context);
        ek();
    }

    public final void eg(Canvas canvas, Paint paint, Path path, cjg cjgVar, float[] fArr, RectF rectF) {
        float dz = dz(rectF, cjgVar, fArr);
        if (dz < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            canvas.drawPath(path, paint);
        } else {
            float f2 = dz * this.ds.n;
            canvas.drawRoundRect(rectF, f2, f2, paint);
        }
    }

    public final void eh(RectF rectF, Path path) {
        dwo dwoVar = this.ds;
        this.dj.m(dwoVar.h, this.dq, dwoVar.n, rectF, this.dm, path);
        if (this.ds.l != 1.0f) {
            Matrix matrix = this.cv;
            matrix.reset();
            float f2 = this.ds.l;
            matrix.setScale(f2, f2, rectF.width() / 2.0f, rectF.height() / 2.0f);
            path.transform(matrix);
        }
        path.computeBounds(this.da, true);
    }

    public final void ei(int[] iArr, boolean z) {
        cjg n;
        int i;
        RectF eu = eu();
        if (this.ds.m == null || eu.isEmpty()) {
            return;
        }
        boolean z2 = z | (this.f3do == null);
        if (this.dq == null) {
            this.dq = new float[4];
        }
        dsx dsxVar = this.ds.m;
        cjg[] cjgVarArr = dsxVar.f14743b;
        int i2 = dsxVar.f14745d;
        int[][] iArr2 = dsxVar.f14748g;
        bt btVar = dsxVar.f14742a;
        bt btVar2 = dsxVar.h;
        bt btVar3 = dsxVar.f14746e;
        bt btVar4 = dsxVar.f14744c;
        int i3 = 0;
        while (true) {
            if (i3 >= i2) {
                i3 = -1;
                break;
            } else if (StateSet.stateSetMatches(iArr2[i3], iArr)) {
                break;
            } else {
                i3++;
            }
        }
        if (i3 < 0) {
            int[] iArr3 = StateSet.WILD_CARD;
            int i4 = 0;
            while (true) {
                if (i4 >= i2) {
                    i = -1;
                    break;
                } else {
                    if (StateSet.stateSetMatches(iArr2[i4], iArr3)) {
                        i = i4;
                        break;
                    }
                    i4++;
                }
            }
            i3 = i;
        }
        if (btVar4 == null && btVar3 == null && btVar2 == null && btVar == null) {
            n = cjgVarArr[i3];
        } else {
            bem r = cjgVarArr[i3].r();
            if (btVar4 != null) {
                r.f11390e = btVar4.h(iArr);
            }
            if (btVar3 != null) {
                r.f11392g = btVar3.h(iArr);
            }
            if (btVar2 != null) {
                r.f11386a = btVar2.h(iArr);
            }
            if (btVar != null) {
                r.l = btVar.h(iArr);
            }
            n = r.n();
        }
        int i5 = 0;
        while (i5 < 4) {
            this.dj.getClass();
            float b2 = (i5 != 1 ? i5 != 2 ? i5 != 3 ? n.f12977g : n.f12975e : n.f12971a : n.l).b(eu);
            if (z2) {
                this.dq[i5] = b2;
            }
            eov[] eovVarArr = this.dv;
            eov eovVar = eovVarArr[i5];
            if (eovVar != null) {
                eovVar.v(b2);
                if (z2) {
                    eovVarArr[i5].u();
                }
            }
            i5++;
        }
        if (z2) {
            invalidateSelf();
        }
    }

    public final boolean ej() {
        PorterDuffColorFilter porterDuffColorFilter;
        PorterDuffColorFilter porterDuffColorFilter2 = this.cx;
        PorterDuffColorFilter porterDuffColorFilter3 = this.di;
        dwo dwoVar = this.ds;
        ColorStateList colorStateList = dwoVar.i;
        PorterDuff.Mode mode = dwoVar.q;
        if (colorStateList == null || mode == null) {
            int color = this.db.getColor();
            int et = et(color);
            porterDuffColorFilter = et != color ? new PorterDuffColorFilter(et, PorterDuff.Mode.SRC_IN) : null;
        } else {
            porterDuffColorFilter = new PorterDuffColorFilter(et(colorStateList.getColorForState(getState(), 0)), mode);
        }
        this.cx = porterDuffColorFilter;
        this.ds.getClass();
        this.di = null;
        this.ds.getClass();
        return (Objects.equals(porterDuffColorFilter2, this.cx) && Objects.equals(porterDuffColorFilter3, this.di)) ? false : true;
    }

    public final void ek() {
        dwo dwoVar = this.ds;
        float f2 = dwoVar.f14953d + TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        dwoVar.f14952c = (int) Math.ceil(0.75f * f2);
        this.ds.j = (int) Math.ceil(f2 * 0.25f);
        ej();
        super.invalidateSelf();
    }

    public void el(Canvas canvas) {
        cjg cjgVar = this.cz;
        float[] fArr = this.de;
        RectF eu = eu();
        RectF rectF = this.dg;
        rectF.set(eu);
        float ep = ep();
        rectF.inset(ep, ep);
        eg(canvas, this.cw, this.dd, cjgVar, fArr, rectF);
    }

    public final void em(dsx dsxVar) {
        dwo dwoVar = this.ds;
        if (dwoVar.m != dsxVar) {
            dwoVar.m = dsxVar;
            ei(getState(), true);
            invalidateSelf();
        }
    }

    public final void en(ColorStateList colorStateList) {
        dwo dwoVar = this.ds;
        if (dwoVar.f14954e != colorStateList) {
            dwoVar.f14954e = colorStateList;
            onStateChange(getState());
        }
    }

    public final boolean eo() {
        if (!this.ds.h.q(eu())) {
            float[] fArr = this.dq;
            if (fArr != null) {
                if (fArr.length > 1) {
                    float f2 = fArr[0];
                    for (int i = 1; i < fArr.length; i++) {
                        if (fArr[i] != f2) {
                            break;
                        }
                    }
                }
                if (this.ds.h.p()) {
                }
            }
            return false;
        }
        return true;
    }

    public final float ep() {
        return eb() ? this.cw.getStrokeWidth() / 2.0f : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    }

    public final float eq() {
        float[] fArr = this.dq;
        return fArr != null ? fArr[3] : this.ds.h.f12975e.b(eu());
    }

    public final void er(float f2) {
        dwo dwoVar = this.ds;
        if (dwoVar.n != f2) {
            dwoVar.n = f2;
            this.dy = true;
            this.cy = true;
            invalidateSelf();
        }
    }

    public final boolean es(int[] iArr) {
        boolean z;
        Paint paint;
        int color;
        int colorForState;
        Paint paint2;
        int color2;
        int colorForState2;
        if (this.ds.f14954e == null || color2 == (colorForState2 = this.ds.f14954e.getColorForState(iArr, (color2 = (paint2 = this.db).getColor())))) {
            z = false;
        } else {
            paint2.setColor(colorForState2);
            z = true;
        }
        if (this.ds.f14956g == null || color == (colorForState = this.ds.f14956g.getColorForState(iArr, (color = (paint = this.cw).getColor())))) {
            return z;
        }
        paint.setColor(colorForState);
        return true;
    }

    public final int et(int i) {
        int i2;
        dwo dwoVar = this.ds;
        float f2 = dwoVar.f14953d + TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT + dwoVar.k;
        gid gidVar = dwoVar.p;
        if (gidVar == null || !gidVar.f18192d || afr.c(i, MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE) != gidVar.f18190b) {
            return i;
        }
        float min = (gidVar.f18191c <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT || f2 <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) ? TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT : Math.min(((((float) Math.log1p(f2 / r4)) * 4.5f) + 2.0f) / 100.0f, 1.0f);
        int alpha = Color.alpha(i);
        int ac = eyt.ac(afr.c(i, MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE), min, gidVar.f18193e);
        if (min > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT && (i2 = gidVar.f18194f) != 0) {
            ac = afr.f(afr.c(i2, gid.f18189a), ac);
        }
        return afr.c(ac, alpha);
    }

    public final RectF eu() {
        Rect bounds = getBounds();
        RectF rectF = this.dh;
        rectF.set(bounds);
        return rectF;
    }

    public final void ev() {
        this.dw.m(-12303292);
        this.ds.getClass();
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.ds.f14955f;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        return this.ds;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        this.ds.getClass();
        RectF eu = eu();
        if (eu.isEmpty()) {
            return;
        }
        float dz = dz(eu, this.ds.h, this.dq);
        if (dz >= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            outline.setRoundRect(getBounds(), dz * this.ds.n);
            return;
        }
        boolean z = this.dy;
        Path path = this.dr;
        if (z) {
            eh(eu, path);
            this.dy = false;
        }
        int i = Build.VERSION.SDK_INT;
        if (i >= 30) {
            il.a(outline, path);
            return;
        }
        if (i >= 29) {
            try {
                dnc.a(outline, path);
            } catch (IllegalArgumentException unused) {
            }
        } else if (path.isConvex()) {
            dnc.a(outline, path);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean getPadding(Rect rect) {
        Rect rect2 = this.ds.f14950a;
        if (rect2 == null) {
            return super.getPadding(rect);
        }
        rect.set(rect2);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final Region getTransparentRegion() {
        Rect bounds = getBounds();
        Region region = this.dx;
        region.set(bounds);
        RectF eu = eu();
        Path path = this.dr;
        eh(eu, path);
        Region region2 = this.dt;
        region2.setPath(path, region);
        region.op(region2, Region.Op.DIFFERENCE);
        return region;
    }

    @Override // android.graphics.drawable.Drawable
    public final void invalidateSelf() {
        this.dy = true;
        this.cy = true;
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        if (super.isStateful()) {
            return true;
        }
        ColorStateList colorStateList = this.ds.i;
        if (colorStateList != null && colorStateList.isStateful()) {
            return true;
        }
        this.ds.getClass();
        ColorStateList colorStateList2 = this.ds.f14956g;
        if (colorStateList2 != null && colorStateList2.isStateful()) {
            return true;
        }
        ColorStateList colorStateList3 = this.ds.f14954e;
        if (colorStateList3 != null && colorStateList3.isStateful()) {
            return true;
        }
        dsx dsxVar = this.ds.m;
        return dsxVar != null && dsxVar.k();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        this.ds = new dwo(this.ds);
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        this.dy = true;
        this.cy = true;
        super.onBoundsChange(rect);
        if (this.ds.m != null && !rect.isEmpty()) {
            ei(getState(), this.dp);
        }
        this.dp = rect.isEmpty();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        if (this.ds.m != null) {
            ei(iArr, false);
        }
        boolean z = es(iArr) || ej();
        if (z) {
            invalidateSelf();
        }
        return z;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        dwo dwoVar = this.ds;
        if (dwoVar.f14955f != i) {
            dwoVar.f14955f = i;
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.ds.getClass();
        super.invalidateSelf();
    }

    @Override // g.cbe
    public final void setShapeAppearanceModel(cjg cjgVar) {
        dwo dwoVar = this.ds;
        dwoVar.h = cjgVar;
        dwoVar.m = null;
        this.dq = null;
        this.de = null;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTint(int i) {
        setTintList(ColorStateList.valueOf(i));
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        this.ds.i = colorStateList;
        ej();
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        dwo dwoVar = this.ds;
        if (dwoVar.q != mode) {
            dwoVar.q = mode;
            ej();
            super.invalidateSelf();
        }
    }
}

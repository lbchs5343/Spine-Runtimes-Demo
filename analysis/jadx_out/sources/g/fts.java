package g;

import android.animation.Animator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.Choreographer;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class fts extends Drawable implements Animatable, Drawable.Callback {

    /* renamed from: a, reason: collision with root package name */
    public dpa f17402a;
    public xt aa;

    /* renamed from: ab, reason: collision with root package name */
    public Canvas f17403ab;
    public String ac;
    public final bzg ad;
    public fav ae;
    public boolean af;
    public boolean ag;
    public Bitmap ah;
    public RectF ai;
    public boolean aj;
    public String ak;
    public final ArrayList al;
    public Rect am;

    /* renamed from: b, reason: collision with root package name */
    public boolean f17404b;

    /* renamed from: c, reason: collision with root package name */
    public int f17405c;

    /* renamed from: d, reason: collision with root package name */
    public View f17406d;

    /* renamed from: e, reason: collision with root package name */
    public final zl f17407e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f17408f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f17409g;
    public dpc h;
    public Matrix i;
    public RectF j;
    public fsj k;
    public Rect l;
    public boolean m;
    public Map n;
    public Matrix o;
    public daw p;
    public boolean q;
    public Rect r;
    public aio s;
    public boolean t;
    public gee u;
    public ewj v;
    public boolean w;
    public cgf x;
    public RectF y;
    public final Matrix z;

    public fts() {
        bzg bzgVar = new bzg();
        this.ad = bzgVar;
        this.m = true;
        this.t = false;
        this.v = ewj.dq;
        this.al = new ArrayList();
        zl zlVar = new zl(5, this);
        this.f17407e = zlVar;
        this.aj = false;
        this.w = true;
        this.f17405c = MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE;
        this.aa = xt.dq;
        this.f17408f = false;
        this.z = new Matrix();
        this.ag = false;
        bzgVar.addUpdateListener(zlVar);
    }

    public static void an(Rect rect, RectF rectF) {
        rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
    }

    private Context getContext() {
        Drawable.Callback callback = getCallback();
        if (callback != null && (callback instanceof View)) {
            return ((View) callback).getContext();
        }
        return null;
    }

    public final void ao() {
        if (this.s == null) {
            this.al.add(new jd(this, 1));
            return;
        }
        aq();
        boolean az = az();
        bzg bzgVar = this.ad;
        if (az || bzgVar.getRepeatCount() == 0) {
            if (isVisible()) {
                bzgVar.m = true;
                bzgVar.p(false);
                Choreographer.getInstance().postFrameCallback(bzgVar);
                bzgVar.n = 0L;
                if (bzgVar.t() && bzgVar.f12494a == bzgVar.u()) {
                    bzgVar.o(bzgVar.s());
                } else if (!bzgVar.t() && bzgVar.f12494a == bzgVar.s()) {
                    bzgVar.o(bzgVar.u());
                }
                Iterator it = bzgVar.f12497d.iterator();
                while (it.hasNext()) {
                    ((Animator.AnimatorPauseListener) it.next()).onAnimationResume(bzgVar);
                }
                this.v = ewj.dq;
            } else {
                this.v = ewj.ox;
            }
        }
        if (az()) {
            return;
        }
        ap((int) (bzgVar.f12500g < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT ? bzgVar.u() : bzgVar.s()));
        bzgVar.p(true);
        bzgVar.r(bzgVar.t());
        if (isVisible()) {
            return;
        }
        this.v = ewj.dq;
    }

    public final void ap(int i) {
        if (this.x != null) {
            this.ad.o(i);
        } else {
            this.al.add(new hea(this, i, 1));
        }
    }

    public final void aq() {
        cgf cgfVar = this.x;
        if (cgfVar == null) {
            return;
        }
        xt xtVar = this.aa;
        int i = Build.VERSION.SDK_INT;
        boolean z = cgfVar.f12826d;
        int i2 = cgfVar.f12825c;
        xtVar.getClass();
        int i3 = fpw.f17215a[xtVar.ordinal()];
        boolean z2 = false;
        if (i3 != 1 && (i3 == 2 || ((z && i < 28) || i2 > 4 || i <= 25))) {
            z2 = true;
        }
        this.f17408f = z2;
    }

    public final void ar(int i) {
        if (this.x == null) {
            this.al.add(new hea(this, i, 2));
        } else {
            this.ad.q(i, (int) r0.f12499f);
        }
    }

    public final void as() {
        if (this.s == null) {
            this.al.add(new jd(this, 0));
            return;
        }
        aq();
        boolean az = az();
        bzg bzgVar = this.ad;
        if (az || bzgVar.getRepeatCount() == 0) {
            if (isVisible()) {
                bzgVar.m = true;
                boolean t = bzgVar.t();
                Iterator it = bzgVar.k.iterator();
                while (it.hasNext()) {
                    Animator.AnimatorListener animatorListener = (Animator.AnimatorListener) it.next();
                    if (Build.VERSION.SDK_INT >= 26) {
                        animatorListener.onAnimationStart(bzgVar, t);
                    } else {
                        animatorListener.onAnimationStart(bzgVar);
                    }
                }
                bzgVar.o((int) (bzgVar.t() ? bzgVar.s() : bzgVar.u()));
                bzgVar.n = 0L;
                bzgVar.j = 0;
                if (bzgVar.m) {
                    bzgVar.p(false);
                    Choreographer.getInstance().postFrameCallback(bzgVar);
                }
                this.v = ewj.dq;
            } else {
                this.v = ewj.f16277d;
            }
        }
        if (az()) {
            return;
        }
        ap((int) (bzgVar.f12500g < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT ? bzgVar.u() : bzgVar.s()));
        bzgVar.p(true);
        bzgVar.r(bzgVar.t());
        if (isVisible()) {
            return;
        }
        this.v = ewj.dq;
    }

    public final void at(Context context) {
        cgf cgfVar = this.x;
        if (cgfVar == null) {
            return;
        }
        Rect rect = cgfVar.o;
        List list = Collections.EMPTY_LIST;
        aio aioVar = new aio(this, new cbc(list, cgfVar, "__container", -1L, ayj.dq, -1L, null, list, new eld(null, null, null, null, null, null, null, null, null), 0, 0, 0, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, rect.width(), rect.height(), null, null, list, bwd.dq, null, false, null, null), cgfVar.m, cgfVar, context);
        this.s = aioVar;
        if (this.f17409g) {
            aioVar.k(true);
        }
        this.s.f10273f = this.w;
    }

    public final daw au() {
        if (getCallback() == null) {
            return null;
        }
        if (this.p == null) {
            daw dawVar = new daw(getCallback(), this.ae);
            this.p = dawVar;
            String str = this.ak;
            if (str != null) {
                dawVar.f13888g = str;
            }
        }
        return this.p;
    }

    public final void av(Canvas canvas) {
        aio aioVar = this.s;
        cgf cgfVar = this.x;
        if (aioVar == null || cgfVar == null) {
            return;
        }
        Matrix matrix = this.z;
        matrix.reset();
        if (!getBounds().isEmpty()) {
            matrix.preScale(r3.width() / cgfVar.o.width(), r3.height() / cgfVar.o.height());
            matrix.preTranslate(r3.left, r3.top);
        }
        aioVar.l(canvas, matrix, this.f17405c);
    }

    public final dpa aw() {
        dpa dpaVar = this.f17402a;
        if (dpaVar != null) {
            Context context = getContext();
            Context context2 = (Context) dpaVar.f14569g;
            if ((context != null || context2 != null) && !context2.equals(context)) {
                this.f17402a = null;
            }
        }
        if (this.f17402a == null) {
            this.f17402a = new dpa(getCallback(), this.ac, this.k, this.x.f12827e);
        }
        return this.f17402a;
    }

    public final void ax(String str) {
        cgf cgfVar = this.x;
        if (cgfVar == null) {
            this.al.add(new gzv(this, str, 1));
        } else {
            ewh u = cgfVar.u(str);
            if (u == null) {
                throw new IllegalArgumentException(tn.ad("Cannot find marker with name ", str, "."));
            }
            ba((int) (u.f16270b + u.f16271c));
        }
    }

    public final void ay() {
        bzg bzgVar = this.ad;
        if (bzgVar.m) {
            bzgVar.cancel();
            if (!isVisible()) {
                this.v = ewj.dq;
            }
        }
        this.x = null;
        this.s = null;
        this.f17402a = null;
        bzgVar.f12498e = null;
        bzgVar.f12496c = -2.1474836E9f;
        bzgVar.f12499f = 2.1474836E9f;
        invalidateSelf();
    }

    public final boolean az() {
        return this.m || this.t;
    }

    public final void ba(int i) {
        if (this.x == null) {
            this.al.add(new hea(this, i, 0));
        } else {
            bzg bzgVar = this.ad;
            bzgVar.q(bzgVar.f12496c, i + 0.99f);
        }
    }

    public final void bb() {
        this.al.clear();
        bzg bzgVar = this.ad;
        bzgVar.p(true);
        Iterator it = bzgVar.f12497d.iterator();
        while (it.hasNext()) {
            ((Animator.AnimatorPauseListener) it.next()).onAnimationPause(bzgVar);
        }
        if (isVisible()) {
            return;
        }
        this.v = ewj.dq;
    }

    public final void bc(float f2) {
        cgf cgfVar = this.x;
        if (cgfVar == null) {
            this.al.add(new gds(this, f2, 1));
        } else {
            this.ad.o(din.d(cgfVar.f12824b, cgfVar.f12828f, f2));
            buj.bd();
        }
    }

    public final void bd(String str) {
        cgf cgfVar = this.x;
        if (cgfVar == null) {
            this.al.add(new gzv(this, str, 0));
        } else {
            ewh u = cgfVar.u(str);
            if (u == null) {
                throw new IllegalArgumentException(tn.ad("Cannot find marker with name ", str, "."));
            }
            ar((int) u.f16270b);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x00e9, code lost:
    
        if (((android.view.ViewGroup) r3).getClipChildren() == false) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void be(Canvas canvas, aio aioVar) {
        if (this.x == null || aioVar == null) {
            return;
        }
        if (this.f17403ab == null) {
            this.f17403ab = new Canvas();
            this.y = new RectF();
            this.o = new Matrix();
            this.i = new Matrix();
            this.l = new Rect();
            this.j = new RectF();
            this.u = new gee();
            this.r = new Rect();
            this.am = new Rect();
            this.ai = new RectF();
        }
        canvas.getMatrix(this.o);
        canvas.getClipBounds(this.l);
        Rect rect = this.l;
        this.j.set(rect.left, rect.top, rect.right, rect.bottom);
        this.o.mapRect(this.j);
        an(this.l, this.j);
        if (this.w) {
            this.y.set(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, getIntrinsicWidth(), getIntrinsicHeight());
        } else {
            aioVar.m(this.y, null, false);
        }
        this.o.mapRect(this.y);
        Rect bounds = getBounds();
        float width = bounds.width() / getIntrinsicWidth();
        float height = bounds.height() / getIntrinsicHeight();
        RectF rectF = this.y;
        rectF.set(rectF.left * width, rectF.top * height, rectF.right * width, rectF.bottom * height);
        Drawable.Callback callback = getCallback();
        if (callback instanceof View) {
            ViewParent parent = ((View) callback).getParent();
            if (parent instanceof ViewGroup) {
            }
        }
        RectF rectF2 = this.y;
        Rect rect2 = this.l;
        rectF2.intersect(rect2.left, rect2.top, rect2.right, rect2.bottom);
        int ceil = (int) Math.ceil(this.y.width());
        int ceil2 = (int) Math.ceil(this.y.height());
        if (ceil == 0 || ceil2 == 0) {
            return;
        }
        Bitmap bitmap = this.ah;
        if (bitmap == null || bitmap.getWidth() < ceil || this.ah.getHeight() < ceil2) {
            Bitmap createBitmap = Bitmap.createBitmap(ceil, ceil2, Bitmap.Config.ARGB_8888);
            this.ah = createBitmap;
            this.f17403ab.setBitmap(createBitmap);
            this.ag = true;
        } else if (this.ah.getWidth() > ceil || this.ah.getHeight() > ceil2) {
            Bitmap createBitmap2 = Bitmap.createBitmap(this.ah, 0, 0, ceil, ceil2);
            this.ah = createBitmap2;
            this.f17403ab.setBitmap(createBitmap2);
            this.ag = true;
        }
        if (this.ag) {
            Matrix matrix = this.o;
            Matrix matrix2 = this.z;
            matrix2.set(matrix);
            matrix2.preScale(width, height);
            RectF rectF3 = this.y;
            matrix2.postTranslate(-rectF3.left, -rectF3.top);
            this.ah.eraseColor(0);
            aioVar.l(this.f17403ab, matrix2, this.f17405c);
            this.o.invert(this.i);
            this.i.mapRect(this.ai, this.y);
            an(this.am, this.ai);
        }
        this.r.set(0, 0, ceil, ceil2);
        canvas.drawBitmap(this.ah, this.r, this.am, this.u);
    }

    public final void bf(String str) {
        cgf cgfVar = this.x;
        ArrayList arrayList = this.al;
        if (cgfVar == null) {
            arrayList.add(new gzv(this, str, 2));
            return;
        }
        ewh u = cgfVar.u(str);
        if (u == null) {
            throw new IllegalArgumentException(tn.ad("Cannot find marker with name ", str, "."));
        }
        int i = (int) u.f16270b;
        int i2 = ((int) u.f16271c) + i;
        if (this.x == null) {
            arrayList.add(new gqt(this, i, i2));
        } else {
            this.ad.q(i, i2 + 0.99f);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        try {
            if (this.f17408f) {
                be(canvas, this.s);
            } else {
                av(canvas);
            }
        } catch (Throwable unused) {
            hbp.f19183a.getClass();
        }
        this.ag = false;
        buj.bd();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.f17405c;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        cgf cgfVar = this.x;
        if (cgfVar == null) {
            return -1;
        }
        return cgfVar.o.height();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        cgf cgfVar = this.x;
        if (cgfVar == null) {
            return -1;
        }
        return cgfVar.o.width();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.invalidateDrawable(this);
    }

    @Override // android.graphics.drawable.Drawable
    public final void invalidateSelf() {
        if (this.ag) {
            return;
        }
        this.ag = true;
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // android.graphics.drawable.Animatable
    public final boolean isRunning() {
        bzg bzgVar = this.ad;
        if (bzgVar == null) {
            return false;
        }
        return bzgVar.m;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.scheduleDrawable(this, runnable, j);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        this.f17405c = i;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        hbp.b("Use addColorFilter instead.");
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z, boolean z2) {
        boolean isVisible = isVisible();
        boolean visible = super.setVisible(z, z2);
        if (z) {
            ewj ewjVar = this.v;
            if (ewjVar == ewj.f16277d) {
                as();
                return visible;
            }
            if (ewjVar == ewj.ox) {
                ao();
                return visible;
            }
        } else {
            if (this.ad.m) {
                bb();
                this.v = ewj.ox;
                return visible;
            }
            if (isVisible) {
                this.v = ewj.dq;
            }
        }
        return visible;
    }

    @Override // android.graphics.drawable.Animatable
    public final void start() {
        Drawable.Callback callback = getCallback();
        if ((callback instanceof View) && ((View) callback).isInEditMode()) {
            return;
        }
        as();
    }

    @Override // android.graphics.drawable.Animatable
    public final void stop() {
        this.al.clear();
        bzg bzgVar = this.ad;
        bzgVar.p(true);
        bzgVar.r(bzgVar.t());
        if (isVisible()) {
            return;
        }
        this.v = ewj.dq;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.unscheduleDrawable(this, runnable);
    }
}

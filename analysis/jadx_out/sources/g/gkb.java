package g;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.os.SystemClock;
import android.provider.Settings;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import com.bytedance.component.sdk.annotation.FloatRange;
import com.bytedance.component.sdk.annotation.MainThread;
import com.bytedance.component.sdk.annotation.RawRes;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;

/* loaded from: classes.dex */
public class gkb extends ImageView {

    /* renamed from: d, reason: collision with root package name */
    private static final gao f18301d = new fmf();
    private static final String dq = "ooOOo0O000";
    private final Runnable bl;
    private final Handler cd;

    /* renamed from: e, reason: collision with root package name */
    private int f18302e;

    /* renamed from: f, reason: collision with root package name */
    private cyh f18303f;
    private cgf fw;
    private int gh;
    private String h;
    private long i;
    private String ia;
    private boolean ig;
    private int iw;
    private JSONArray ji;
    private final Set<Object> jy;
    private int k;

    @RawRes
    private int kk;
    private int kx;
    private fis le;
    private final fts mn;
    private boolean mp;
    private bdg n;
    private boolean no;
    private eun o;
    private cra op;
    private final gao ox;
    private final gao p;
    private final Set<gcm> q;
    private Handler r;
    private gao s;
    private int wp;

    public gkb(Context context) {
        super(context);
        int i = 0;
        this.ox = new cgb(this, i);
        int i2 = 1;
        this.p = new cgb(this, i2);
        this.iw = 0;
        fts ftsVar = new fts();
        this.mn = ftsVar;
        this.no = false;
        this.ig = false;
        this.mp = true;
        this.q = new HashSet();
        this.jy = new HashSet();
        this.cd = new Handler(Looper.getMainLooper());
        this.gh = 0;
        this.i = 0L;
        this.bl = new byd(20, this);
        setSaveEnabled(false);
        this.mp = true;
        setFallbackResource(0);
        setImageAssetsFolder("");
        ftsVar.bc(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        dq(false, getContext().getApplicationContext());
        setIgnoreDisabledSystemAnimations(false);
        Context context2 = getContext();
        cqw cqwVar = ebx.f15269c;
        ftsVar.m = Settings.Global.getFloat(context2.getContentResolver(), "animator_duration_scale", 1.0f) != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        dq(new yz(this, i2));
        dq(new zl(3, this));
        dq(new yz(this, i));
    }

    public static void a(Matrix matrix, float f2, float f3, float f4, float f5) {
        if (f4 / f5 >= f2 / f3) {
            float f6 = f3 / f5;
            matrix.preScale(f6, f6);
            matrix.postTranslate(-(((f4 * f6) - f2) / 2.0f), TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        } else {
            float f7 = f2 / f4;
            matrix.preScale(f7, f7);
            matrix.postTranslate(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, -(((f5 * f7) - f3) / 2.0f));
        }
    }

    public static void b(Matrix matrix, float f2, float f3, float f4, float f5) {
        if (f4 < f2 && f5 < f3) {
            matrix.postTranslate((f2 - f4) / 2.0f, (f3 - f5) / 2.0f);
            return;
        }
        if (f4 / f5 >= f2 / f3) {
            float f6 = f2 / f4;
            matrix.preScale(f6, f6);
            matrix.postTranslate(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, (f3 - (f5 * f6)) / 2.0f);
        } else {
            float f7 = f3 / f5;
            matrix.preScale(f7, f7);
            matrix.postTranslate((f2 - (f4 * f7)) / 2.0f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        }
    }

    public static void c(Matrix matrix, float f2, float f3, float f4, float f5) {
        if (f4 >= f2 || f5 >= f3) {
            if (f4 / f5 >= f2 / f3) {
                float f6 = f2 / f4;
                matrix.preScale(f6, f6);
                matrix.postTranslate(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, (f3 - (f5 * f6)) / 2.0f);
                return;
            } else {
                float f7 = f3 / f5;
                matrix.preScale(f7, f7);
                matrix.postTranslate((f2 - (f4 * f7)) / 2.0f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                return;
            }
        }
        if (f4 / f5 >= f2 / f3) {
            float f8 = f2 / f4;
            matrix.preScale(f8, f8);
            matrix.postTranslate(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, (f3 - (f5 * f8)) / 2.0f);
        } else {
            float f9 = f3 / f5;
            matrix.preScale(f9, f9);
            matrix.postTranslate((f2 - (f4 * f9)) / 2.0f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        }
    }

    public static /* synthetic */ int cd(gkb gkbVar) {
        int i = gkbVar.k;
        gkbVar.k = i - 1;
        return i;
    }

    public static void dq(gkb gkbVar, long j) {
        HashMap hashMap;
        dac globalConfig = gkbVar.getGlobalConfig();
        if (gkbVar.op != null) {
            HashMap hashMap2 = new HashMap();
            hashMap2.put(MediationConstant.EXTRA_DURATION, Long.valueOf(j));
            if (globalConfig != null && (hashMap = globalConfig.f13843e) != null && !hashMap.isEmpty()) {
                hashMap2.putAll(globalConfig.f13843e);
            }
            akg.a((akg) ((emr) gkbVar.op).n, hashMap2, 19);
        }
    }

    public static fis g(aio aioVar, String str) {
        Iterator it = aioVar.f10274g.iterator();
        while (it.hasNext()) {
            grq grqVar = (grq) it.next();
            if (grqVar instanceof aio) {
                fis g2 = g((aio) grqVar, str);
                if (g2 != null) {
                    return g2;
                }
            } else if (TextUtils.equals(str, grqVar.au.u) && (grqVar instanceof fis)) {
                return (fis) grqVar;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public dac getGlobalConfig() {
        cgf cgfVar;
        fts ftsVar = this.mn;
        if (ftsVar == null || (cgfVar = ftsVar.x) == null) {
            return null;
        }
        return cgfVar.s;
    }

    private bul getGlobalEvent() {
        cgf cgfVar;
        fts ftsVar = this.mn;
        if (ftsVar == null || (cgfVar = ftsVar.x) == null) {
            return null;
        }
        return cgfVar.j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getPlayDelayedELExpressTimeS() {
        cgf cgfVar;
        fts ftsVar = this.mn;
        if (ftsVar == null || (cgfVar = ftsVar.x) == null) {
            return null;
        }
        return cgfVar.p;
    }

    public static void jy(gkb gkbVar) {
        gkbVar.cd.postDelayed(gkbVar.bl, 1000L);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:35:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void ox(gkb gkbVar) {
        fts ftsVar;
        int i;
        int i2;
        int i3;
        aio aioVar;
        cgf cgfVar = gkbVar.fw;
        if (cgfVar == null || (ftsVar = gkbVar.mn) == null) {
            return;
        }
        dpc dpcVar = ftsVar.h;
        gnb gnbVar = cgfVar.k;
        if (gnbVar == null || dpcVar == null) {
            return;
        }
        int i4 = gnbVar.k;
        if (i4 < 0) {
            "--==--- timer fail, ke is invalid: ".concat(String.valueOf(i4));
            return;
        }
        int[] iArr = (int[]) gnbVar.j;
        int i5 = -1;
        if (iArr == null || iArr.length < 2) {
            i = -1;
            i2 = -1;
        } else {
            i2 = iArr[0];
            i = iArr[1];
        }
        String b2 = dpcVar.b((String) gnbVar.n);
        String b3 = dpcVar.b((String) gnbVar.i);
        try {
            i3 = Integer.parseInt(b2);
        } catch (NumberFormatException e2) {
            e = e2;
            i3 = -1;
        }
        try {
            i5 = Integer.parseInt(b3);
        } catch (NumberFormatException e3) {
            e = e3;
            e.printStackTrace();
            if (TextUtils.isEmpty((String) gnbVar.m)) {
            }
        }
        if (TextUtils.isEmpty((String) gnbVar.m)) {
            String str = (String) gnbVar.m;
            fts ftsVar2 = gkbVar.mn;
            fis fisVar = null;
            if (ftsVar2 != null && (aioVar = ftsVar2.s) != null) {
                fisVar = g(aioVar, str);
            }
            if (fisVar != null) {
                gkbVar.h = (String) gnbVar.l;
                gkbVar.ji = (JSONArray) gnbVar.o;
                gkbVar.le = fisVar;
                gkbVar.k = i3;
                gkbVar.wp = i3 - i5;
                gkbVar.f18302e = i2;
                gkbVar.kx = i;
                StringBuilder sb = new StringBuilder();
                sb.append(gkbVar.k);
                fisVar.f16856b = sb.toString();
                gkbVar.dq(new cxx(gkbVar, i4, i3, i5));
            }
        }
    }

    public static void p(gkb gkbVar) {
        dac globalConfig = gkbVar.getGlobalConfig();
        if (globalConfig == null || globalConfig.f13840b <= 0) {
            return;
        }
        if (TextUtils.isEmpty(globalConfig.f13842d) && globalConfig.f13845g == null) {
            return;
        }
        int i = globalConfig.f13840b;
        if (i > gkbVar.getMaxFrame()) {
            i = (int) gkbVar.getMaxFrame();
        }
        gkbVar.dq(new bpc(gkbVar, i / gkbVar.getMaxFrame(), globalConfig));
    }

    public static /* synthetic */ int s(gkb gkbVar) {
        int i = gkbVar.gh;
        gkbVar.gh = i + 1;
        return i;
    }

    private void setCompositionTask(cyh cyhVar) {
        this.q.add(gcm.dq);
        this.fw = null;
        this.mn.ay();
        m();
        cyhVar.j(this.ox);
        cyhVar.h(this.p);
        this.f18303f = cyhVar;
    }

    @MainThread
    public void d() {
        this.q.add(gcm.iw);
        this.mn.ao();
    }

    public void d(Animator.AnimatorListener animatorListener) {
        this.mn.ad.removeListener(animatorListener);
    }

    public void d(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.mn.ad.removeUpdateListener(animatorUpdateListener);
    }

    public Bitmap dq(String str, Bitmap bitmap) {
        Bitmap bitmap2;
        fts ftsVar = this.mn;
        dpa aw = ftsVar.aw();
        if (aw == null) {
            hbp.b("Cannot update bitmap. Most likely the drawable is not added to a View which prevents Lottie from getting a Context.");
            return null;
        }
        Map map = (Map) aw.f14565c;
        if (bitmap == null) {
            hcl hclVar = (hcl) map.get(str);
            bitmap2 = hclVar.f19221b;
            hclVar.f19221b = null;
        } else {
            bitmap2 = ((hcl) map.get(str)).f19221b;
        }
        ftsVar.invalidateSelf();
        return bitmap2;
    }

    @MainThread
    public void dq() {
        if (this.i == 0) {
            this.i = SystemClock.elapsedRealtime();
        }
        this.q.add(gcm.iw);
        this.mn.as();
    }

    public void dq(Animator.AnimatorListener animatorListener) {
        this.mn.ad.addListener(animatorListener);
    }

    public void dq(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.mn.ad.addUpdateListener(animatorUpdateListener);
    }

    public void dq(eun eunVar) {
        this.o = eunVar;
    }

    public void dq(InputStream inputStream, String str) {
        setCompositionTask(ahz.g(str, new kg(inputStream, str)));
    }

    public void dq(String str, String str2) {
        dq(new ByteArrayInputStream(str.getBytes()), str2);
    }

    @Deprecated
    public void dq(boolean z) {
        this.mn.ad.setRepeatCount(z ? -1 : 0);
    }

    public void dq(boolean z, Context context) {
        fts ftsVar = this.mn;
        if (ftsVar.f17404b == z) {
            return;
        }
        ftsVar.f17404b = z;
        if (ftsVar.x != null) {
            ftsVar.at(context);
        }
    }

    public boolean getClipToCompositionBounds() {
        return this.mn.w;
    }

    public cgf getComposition() {
        return this.fw;
    }

    public long getDuration() {
        cgf cgfVar = this.fw;
        if (cgfVar != null) {
            return (long) cgfVar.v();
        }
        return 0L;
    }

    public int getFrame() {
        return (int) this.mn.ad.f12494a;
    }

    public String getImageAssetsFolder() {
        return this.mn.ac;
    }

    public boolean getMaintainOriginalImageBounds() {
        return this.mn.aj;
    }

    public float getMaxFrame() {
        return this.mn.ad.s();
    }

    public float getMinFrame() {
        return this.mn.ad.u();
    }

    public ejl getPerformanceTracker() {
        cgf cgfVar = this.mn.x;
        if (cgfVar != null) {
            return cgfVar.h;
        }
        return null;
    }

    @FloatRange(from = 0.0d, to = 1.0d)
    public float getProgress() {
        return this.mn.ad.w();
    }

    public xt getRenderMode() {
        return this.mn.f17408f ? xt.ox : xt.f20320d;
    }

    public int getRepeatCount() {
        return this.mn.ad.getRepeatCount();
    }

    public int getRepeatMode() {
        return this.mn.ad.getRepeatMode();
    }

    public float getSpeed() {
        return this.mn.ad.f12500g;
    }

    @Override // android.view.View
    public void invalidate() {
        super.invalidate();
        Drawable drawable = getDrawable();
        if (drawable instanceof fts) {
            if ((((fts) drawable).f17408f ? xt.ox : xt.f20320d) == xt.ox) {
                this.mn.invalidateSelf();
            }
        }
    }

    @Override // android.widget.ImageView, android.view.View, android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        Drawable drawable2 = getDrawable();
        fts ftsVar = this.mn;
        if (drawable2 == ftsVar) {
            super.invalidateDrawable(ftsVar);
        } else {
            super.invalidateDrawable(drawable);
        }
    }

    @MainThread
    public void iw() {
        this.q.add(gcm.iw);
        fts ftsVar = this.mn;
        ftsVar.al.clear();
        ftsVar.ad.cancel();
        if (ftsVar.isVisible()) {
            return;
        }
        ftsVar.v = ewj.dq;
    }

    public final void j(int[][] iArr) {
        if (iArr == null || iArr.length == 0) {
            return;
        }
        try {
            int[] iArr2 = iArr[0];
            int i = iArr2[0];
            int i2 = iArr2[1];
            if (i < 0 || i2 < 0) {
                return;
            }
            "--==--- inel enter, play anim, startframe: ".concat(String.valueOf(i));
            this.cd.removeCallbacksAndMessages(null);
            dq();
            setFrame(i);
            dq(new gwr(this, i2));
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final grq l(aio aioVar, MotionEvent motionEvent) {
        grq l;
        Iterator it = aioVar.f10274g.iterator();
        while (it.hasNext()) {
            grq grqVar = (grq) it.next();
            if (!(grqVar instanceof aio)) {
                boolean z = grqVar.bd;
                Matrix matrix = grqVar.ap;
                if (z && grqVar.ao > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                    RectF rectF = new RectF();
                    fts ftsVar = this.mn;
                    if (ftsVar == null || !ftsVar.f17408f) {
                        RectF rectF2 = new RectF();
                        grqVar.m(rectF2, matrix, true);
                        float width = getWidth();
                        float height = getHeight();
                        float width2 = this.mn.getBounds().width();
                        float height2 = this.mn.getBounds().height();
                        if (width != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT && height != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT && width2 != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT && height2 != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                            Matrix matrix2 = new Matrix();
                            int i = frj.f17291a[getScaleType().ordinal()];
                            if (i == 1) {
                                a(matrix2, width, height, width2, height2);
                            } else if (i == 2) {
                                b(matrix2, width, height, width2, height2);
                            } else if (i == 3) {
                                matrix2.postTranslate((width - width2) / 2.0f, (height - height2) / 2.0f);
                            } else if (i == 4) {
                                c(matrix2, width, height, width2, height2);
                            }
                            matrix2.mapRect(rectF, rectF2);
                        }
                    } else {
                        grqVar.m(rectF, matrix, true);
                        RectF rectF3 = this.mn.y;
                        if (rectF3 != null) {
                            float width3 = getWidth();
                            float height3 = getHeight();
                            float width4 = rectF3.width();
                            float height4 = rectF3.height();
                            if (width3 != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT && height3 != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT && width4 != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT && height4 != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                                Matrix matrix3 = new Matrix();
                                int i2 = frj.f17291a[getScaleType().ordinal()];
                                if (i2 == 1) {
                                    a(matrix3, width3, height3, width4, height4);
                                } else if (i2 == 2) {
                                    b(matrix3, width3, height3, width4, height4);
                                } else if (i2 == 3) {
                                    matrix3.postTranslate((width3 - width4) / 2.0f, (height3 - height4) / 2.0f);
                                } else if (i2 == 4) {
                                    c(matrix3, width3, height3, width4, height4);
                                }
                                matrix3.mapRect(rectF);
                            }
                        }
                    }
                    if (motionEvent != null) {
                        float x = motionEvent.getX();
                        float y = motionEvent.getY();
                        if (x >= rectF.left && x <= rectF.right && y >= rectF.top && y <= rectF.bottom) {
                            return grqVar;
                        }
                    } else {
                        continue;
                    }
                }
            } else if (grqVar.bd && grqVar.ao > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                RectF rectF4 = new RectF();
                grqVar.m(rectF4, grqVar.ap, true);
                if (rectF4.width() >= 3.0f && rectF4.height() >= 3.0f && (l = l((aio) grqVar, motionEvent)) != null) {
                    return l;
                }
            }
        }
        return null;
    }

    public final void m() {
        cyh cyhVar = this.f18303f;
        if (cyhVar != null) {
            gao gaoVar = this.ox;
            synchronized (cyhVar) {
                cyhVar.f13752c.remove(gaoVar);
            }
            this.f18303f.i(this.p);
        }
    }

    @MainThread
    public void mn() {
        this.ig = false;
        this.mn.bb();
    }

    @Override // android.widget.ImageView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!isInEditMode() && this.ig) {
            this.mn.as();
        }
        eun eunVar = this.o;
        if (eunVar != null) {
            eunVar.mn();
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.cd.removeCallbacksAndMessages(null);
        Handler handler = this.r;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        p();
        ox();
        eun eunVar = this.o;
        if (eunVar != null) {
            eunVar.ia();
        }
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        int i;
        if (!(parcelable instanceof bhj)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        bhj bhjVar = (bhj) parcelable;
        super.onRestoreInstanceState(bhjVar.getSuperState());
        this.ia = bhjVar.dq;
        Set<gcm> set = this.q;
        gcm gcmVar = gcm.dq;
        if (!set.contains(gcmVar) && !TextUtils.isEmpty(this.ia)) {
            setAnimation(this.ia);
        }
        this.kk = bhjVar.f11588d;
        if (!this.q.contains(gcmVar) && (i = this.kk) != 0) {
            setAnimation(i);
        }
        if (!this.q.contains(gcm.f17891d)) {
            this.mn.bc(bhjVar.ox);
        }
        if (!this.q.contains(gcm.iw) && bhjVar.p) {
            dq();
        }
        if (!this.q.contains(gcm.s)) {
            setImageAssetsFolder(bhjVar.s);
        }
        if (!this.q.contains(gcm.ox)) {
            setRepeatMode(bhjVar.iw);
        }
        if (this.q.contains(gcm.p)) {
            return;
        }
        setRepeatCount(bhjVar.mn);
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        boolean z;
        bhj bhjVar = new bhj(super.onSaveInstanceState());
        bhjVar.dq = this.ia;
        bhjVar.f11588d = this.kk;
        bhjVar.ox = this.mn.ad.w();
        fts ftsVar = this.mn;
        if (ftsVar.isVisible()) {
            z = ftsVar.ad.m;
        } else {
            ewj ewjVar = ftsVar.v;
            z = ewjVar == ewj.f16277d || ewjVar == ewj.ox;
        }
        bhjVar.p = z;
        fts ftsVar2 = this.mn;
        bhjVar.s = ftsVar2.ac;
        bhjVar.iw = ftsVar2.ad.getRepeatMode();
        bhjVar.mn = this.mn.ad.getRepeatCount();
        return bhjVar;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        aio aioVar;
        bdg bdgVar;
        int[][] iArr;
        fts ftsVar;
        cgf cgfVar;
        HashMap hashMap;
        fts ftsVar2 = this.mn;
        hcl hclVar = null;
        grq l = (ftsVar2 == null || (aioVar = ftsVar2.s) == null) ? null : l(aioVar, motionEvent);
        if (l == null) {
            if (getGlobalConfig() == null || getGlobalConfig().f13841c != 1) {
                return super.onTouchEvent(motionEvent);
            }
            return false;
        }
        cbc cbcVar = l.au;
        String str = cbcVar.u;
        if (l instanceof aio) {
            if (getGlobalConfig() == null || getGlobalConfig().f13841c != 1) {
                return super.onTouchEvent(motionEvent);
            }
            return false;
        }
        if (str.startsWith("CSJCLOSE")) {
            this.cd.removeCallbacksAndMessages(null);
        }
        String str2 = cbcVar.w;
        if (!TextUtils.isEmpty(str2) && (ftsVar = this.mn) != null && (cgfVar = ftsVar.x) != null && (hashMap = cgfVar.f12827e) != null) {
            hclVar = (hcl) hashMap.get(str2);
        }
        if (hclVar != null && motionEvent.getAction() == 1) {
            String str3 = hclVar.f19220a;
            JSONArray jSONArray = hclVar.i;
            bul globalEvent = getGlobalEvent();
            if (globalEvent != null) {
                if (TextUtils.isEmpty(str3) && !str.contains("CSJNO")) {
                    str3 = globalEvent.f12228a;
                }
                if ((jSONArray == null || jSONArray.length() <= 0) && !str.contains("CSJLELNO")) {
                    jSONArray = globalEvent.f12230c;
                }
            }
            if ((!TextUtils.isEmpty(str3) || (jSONArray != null && jSONArray.length() > 0)) && (bdgVar = this.n) != null) {
                ((eie) bdgVar).n(str3, jSONArray);
            }
            int[][] iArr2 = hclVar.f19226g;
            if (iArr2 != null) {
                j(iArr2);
            } else if (getGlobalEvent() != null && (iArr = getGlobalEvent().f12229b) != null) {
                j(iArr);
            }
        }
        if (str.startsWith("CSJNTP")) {
            return false;
        }
        return super.onTouchEvent(motionEvent);
    }

    public void ox() {
        fts ftsVar = this.mn;
        bzg bzgVar = ftsVar.ad;
        bzgVar.removeAllUpdateListeners();
        bzgVar.addUpdateListener(ftsVar.f17407e);
    }

    public void p() {
        this.mn.ad.removeAllListeners();
    }

    public boolean s() {
        bzg bzgVar = this.mn.ad;
        if (bzgVar == null) {
            return false;
        }
        return bzgVar.m;
    }

    public void setAnimation(@RawRes int i) {
        cyh g2;
        this.kk = i;
        this.ia = null;
        if (isInEditMode()) {
            g2 = new cyh(new dww(this, i), true);
        } else if (this.mp) {
            Context context = getContext();
            String j = ahz.j(context, i);
            g2 = ahz.g(j, new dp(new WeakReference(context), context.getApplicationContext(), i, j));
        } else {
            Context context2 = getContext();
            HashMap hashMap = ahz.f10249a;
            g2 = ahz.g(null, new dp(new WeakReference(context2), context2.getApplicationContext(), i, null));
        }
        setCompositionTask(g2);
    }

    public void setAnimation(String str) {
        cyh g2;
        this.ia = str;
        this.kk = 0;
        if (isInEditMode()) {
            g2 = new cyh(new buk(this, str), true);
        } else if (this.mp) {
            Context context = getContext();
            HashMap hashMap = ahz.f10249a;
            String x = tn.x("asset_", str);
            g2 = ahz.g(x, new dh(context.getApplicationContext(), str, x));
        } else {
            Context context2 = getContext();
            HashMap hashMap2 = ahz.f10249a;
            g2 = ahz.g(null, new dh(context2.getApplicationContext(), str, null));
        }
        setCompositionTask(g2);
    }

    @Deprecated
    public void setAnimationFromJson(String str) {
        dq(str, (String) null);
    }

    public void setAnimationFromUrl(String str) {
        cyh g2;
        if (this.mp) {
            Context context = getContext();
            HashMap hashMap = ahz.f10249a;
            String x = tn.x("url_", str);
            g2 = ahz.g(x, new bxu(context, str, x));
        } else {
            g2 = ahz.g(null, new bxu(getContext(), str, null));
        }
        setCompositionTask(g2);
    }

    public void setApplyingOpacityToLayersEnabled(boolean z) {
        this.mn.af = z;
    }

    public void setCacheComposition(boolean z) {
        this.mp = z;
    }

    public void setClipToCompositionBounds(boolean z) {
        fts ftsVar = this.mn;
        if (z != ftsVar.w) {
            ftsVar.w = z;
            aio aioVar = ftsVar.s;
            if (aioVar != null) {
                aioVar.f10273f = z;
            }
            ftsVar.invalidateSelf();
        }
    }

    public void setComposition(cgf cgfVar) {
        this.mn.setCallback(this);
        this.fw = cgfVar;
        boolean z = true;
        this.no = true;
        fts ftsVar = this.mn;
        Context applicationContext = getContext().getApplicationContext();
        ArrayList arrayList = ftsVar.al;
        bzg bzgVar = ftsVar.ad;
        if (ftsVar.x == cgfVar) {
            z = false;
        } else {
            ftsVar.ag = true;
            ftsVar.ay();
            ftsVar.x = cgfVar;
            ftsVar.at(applicationContext);
            boolean z2 = bzgVar.f12498e == null;
            bzgVar.f12498e = cgfVar;
            if (z2) {
                bzgVar.q(Math.max(bzgVar.f12496c, cgfVar.f12824b), Math.min(bzgVar.f12499f, cgfVar.f12828f));
            } else {
                bzgVar.q((int) cgfVar.f12824b, (int) cgfVar.f12828f);
            }
            float f2 = bzgVar.f12494a;
            bzgVar.f12494a = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            bzgVar.f12495b = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            bzgVar.o((int) f2);
            bzgVar.v();
            ftsVar.bc(bzgVar.getAnimatedFraction());
            Iterator it = new ArrayList(arrayList).iterator();
            while (it.hasNext()) {
                bdu bduVar = (bdu) it.next();
                if (bduVar != null) {
                    bduVar.dq();
                }
                it.remove();
            }
            arrayList.clear();
            cgfVar.h.f15664a = ftsVar.q;
            ftsVar.aq();
            Drawable.Callback callback = ftsVar.getCallback();
            if (callback instanceof ImageView) {
                ImageView imageView = (ImageView) callback;
                imageView.setImageDrawable(null);
                imageView.setImageDrawable(ftsVar);
            }
        }
        this.no = false;
        if (getDrawable() != this.mn || z) {
            if (!z) {
                boolean s = s();
                setImageDrawable(null);
                setImageDrawable(this.mn);
                if (s) {
                    this.mn.ao();
                }
            }
            onVisibilityChanged(this, getVisibility());
            requestLayout();
            Iterator<Object> it2 = this.jy.iterator();
            while (it2.hasNext()) {
                it2.next();
            }
        }
    }

    public void setDefaultFontFileExtension(String str) {
        fts ftsVar = this.mn;
        ftsVar.ak = str;
        daw au = ftsVar.au();
        if (au != null) {
            au.f13888g = str;
        }
    }

    public void setFailureListener(gao gaoVar) {
        this.s = gaoVar;
    }

    public void setFallbackResource(int i) {
        this.iw = i;
    }

    public void setFontAssetDelegate(fav favVar) {
        fts ftsVar = this.mn;
        ftsVar.ae = favVar;
        daw dawVar = ftsVar.p;
        if (dawVar != null) {
            dawVar.f13885d = favVar;
        }
    }

    public void setFontMap(Map<String, Typeface> map) {
        fts ftsVar = this.mn;
        if (map == ftsVar.n) {
            return;
        }
        ftsVar.n = map;
        ftsVar.invalidateSelf();
    }

    public void setFrame(int i) {
        this.mn.ap(i);
    }

    public void setIgnoreDisabledSystemAnimations(boolean z) {
        this.mn.t = z;
    }

    public void setImageAssetDelegate(fsj fsjVar) {
        fts ftsVar = this.mn;
        ftsVar.k = fsjVar;
        dpa dpaVar = ftsVar.f17402a;
        if (dpaVar != null) {
            dpaVar.f14567e = fsjVar;
        }
    }

    public void setImageAssetsFolder(String str) {
        this.mn.ac = str;
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        m();
        super.setImageBitmap(bitmap);
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        m();
        super.setImageDrawable(drawable);
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        m();
        super.setImageResource(i);
    }

    public void setLottieAnimListener(cra craVar) {
        this.op = craVar;
    }

    public void setLottieClicklistener(bdg bdgVar) {
        this.n = bdgVar;
    }

    public void setMaintainOriginalImageBounds(boolean z) {
        this.mn.aj = z;
    }

    public void setMaxFrame(int i) {
        this.mn.ba(i);
    }

    public void setMaxFrame(String str) {
        this.mn.ax(str);
    }

    public void setMaxProgress(@FloatRange(from = 0.0d, to = 1.0d) float f2) {
        fts ftsVar = this.mn;
        cgf cgfVar = ftsVar.x;
        if (cgfVar == null) {
            ftsVar.al.add(new gds(ftsVar, f2, 0));
            return;
        }
        bzg bzgVar = ftsVar.ad;
        bzgVar.q(bzgVar.f12496c, din.d(cgfVar.f12824b, cgfVar.f12828f, f2));
    }

    public void setMinAndMaxFrame(String str) {
        this.mn.bf(str);
    }

    public void setMinFrame(int i) {
        this.mn.ar(i);
    }

    public void setMinFrame(String str) {
        this.mn.bd(str);
    }

    public void setMinProgress(float f2) {
        fts ftsVar = this.mn;
        cgf cgfVar = ftsVar.x;
        if (cgfVar == null) {
            ftsVar.al.add(new gds(ftsVar, f2, 2));
        } else {
            ftsVar.ar((int) din.d(cgfVar.f12824b, cgfVar.f12828f, f2));
        }
    }

    public void setOutlineMasksAndMattes(boolean z) {
        fts ftsVar = this.mn;
        if (ftsVar.f17409g == z) {
            return;
        }
        ftsVar.f17409g = z;
        aio aioVar = ftsVar.s;
        if (aioVar != null) {
            aioVar.k(z);
        }
    }

    public void setPerformanceTrackingEnabled(boolean z) {
        fts ftsVar = this.mn;
        ftsVar.q = z;
        cgf cgfVar = ftsVar.x;
        if (cgfVar != null) {
            cgfVar.h.f15664a = z;
        }
    }

    public void setProgress(@FloatRange(from = 0.0d, to = 1.0d) float f2) {
        this.q.add(gcm.f17891d);
        this.mn.bc(f2);
    }

    public void setRenderMode(xt xtVar) {
        fts ftsVar = this.mn;
        ftsVar.aa = xtVar;
        ftsVar.aq();
    }

    public void setRepeatCount(int i) {
        this.q.add(gcm.p);
        this.mn.ad.setRepeatCount(i);
    }

    public void setRepeatMode(int i) {
        this.q.add(gcm.ox);
        this.mn.ad.setRepeatMode(i);
    }

    public void setSafeMode(boolean z) {
        this.mn.getClass();
    }

    public void setSpeed(float f2) {
        this.mn.ad.f12500g = f2;
    }

    public void setTextDelegate(dpc dpcVar) {
        this.mn.h = dpcVar;
    }

    public void setUseCompositionFrameRate(boolean z) {
        this.mn.ad.l = z;
    }

    public void setView(View view) {
        this.mn.f17406d = view;
    }

    @Override // android.view.View
    public void unscheduleDrawable(Drawable drawable) {
        fts ftsVar;
        boolean z = this.no;
        if (!z && drawable == (ftsVar = this.mn)) {
            bzg bzgVar = ftsVar.ad;
            if (bzgVar == null ? false : bzgVar.m) {
                mn();
                super.unscheduleDrawable(drawable);
            }
        }
        if (!z && (drawable instanceof fts)) {
            fts ftsVar2 = (fts) drawable;
            bzg bzgVar2 = ftsVar2.ad;
            if (bzgVar2 != null ? bzgVar2.m : false) {
                ftsVar2.bb();
            }
        }
        super.unscheduleDrawable(drawable);
    }
}

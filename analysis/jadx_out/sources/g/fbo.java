package g;

import android.content.res.Resources;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class fbo implements View.OnTouchListener {

    /* renamed from: a, reason: collision with root package name */
    public static final int f16522a = ViewConfiguration.getTapTimeout();

    /* renamed from: b, reason: collision with root package name */
    public final int f16523b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f16524c;

    /* renamed from: d, reason: collision with root package name */
    public final int f16525d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f16526e;

    /* renamed from: f, reason: collision with root package name */
    public final float[] f16527f;

    /* renamed from: g, reason: collision with root package name */
    public final bgv f16528g;
    public boolean h;
    public final float[] i;
    public byd j;
    public final float[] k;
    public final ftj l;
    public final float[] m;
    public final AccelerateInterpolator n;
    public boolean o;
    public final bgv p;
    public boolean q;
    public final float[] r;

    public fbo(bgv bgvVar) {
        ftj ftjVar = new ftj();
        ftjVar.f17380c = Long.MIN_VALUE;
        ftjVar.i = -1L;
        ftjVar.f17382e = 0L;
        this.l = ftjVar;
        this.n = new AccelerateInterpolator();
        float[] fArr = {TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT};
        this.k = fArr;
        float[] fArr2 = {Float.MAX_VALUE, Float.MAX_VALUE};
        this.r = fArr2;
        float[] fArr3 = {TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT};
        this.m = fArr3;
        float[] fArr4 = {TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT};
        this.f16527f = fArr4;
        float[] fArr5 = {Float.MAX_VALUE, Float.MAX_VALUE};
        this.i = fArr5;
        this.f16528g = bgvVar;
        float f2 = Resources.getSystem().getDisplayMetrics().density;
        float f3 = ((int) ((1575.0f * f2) + 0.5f)) / 1000.0f;
        fArr5[0] = f3;
        fArr5[1] = f3;
        float f4 = ((int) ((f2 * 315.0f) + 0.5f)) / 1000.0f;
        fArr4[0] = f4;
        fArr4[1] = f4;
        this.f16525d = 1;
        fArr2[0] = Float.MAX_VALUE;
        fArr2[1] = Float.MAX_VALUE;
        fArr[0] = 0.2f;
        fArr[1] = 0.2f;
        fArr3[0] = 0.001f;
        fArr3[1] = 0.001f;
        this.f16523b = f16522a;
        ftjVar.f17381d = 500;
        ftjVar.f17384g = 500;
        this.p = bgvVar;
    }

    public static float s(float f2, float f3, float f4) {
        return f2 > f4 ? f4 : f2 < f3 ? f3 : f2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0014, code lost:
    
        if (r0 != 3) goto L30;
     */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        int i;
        int i2 = 0;
        if (this.f16524c) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked != 0) {
                if (actionMasked != 1) {
                    if (actionMasked != 2) {
                    }
                }
                t();
                return false;
            }
            this.o = true;
            this.h = false;
            float x = motionEvent.getX();
            float width = view.getWidth();
            bgv bgvVar = this.f16528g;
            float v = v(x, width, bgvVar.getWidth(), 0);
            float v2 = v(motionEvent.getY(), view.getHeight(), bgvVar.getHeight(), 1);
            ftj ftjVar = this.l;
            ftjVar.h = v;
            ftjVar.f17379b = v2;
            if (!this.f16526e && u()) {
                if (this.j == null) {
                    this.j = new byd(i2, this);
                }
                this.f16526e = true;
                this.q = true;
                if (this.h || (i = this.f16523b) <= 0) {
                    this.j.run();
                } else {
                    byd bydVar = this.j;
                    long j = i;
                    WeakHashMap weakHashMap = goi.f18490c;
                    bgvVar.postOnAnimationDelayed(bydVar, j);
                }
                this.h = true;
            }
        }
        return false;
    }

    public final void t() {
        int i = 0;
        if (this.q) {
            this.f16526e = false;
            return;
        }
        long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        ftj ftjVar = this.l;
        int i2 = (int) (currentAnimationTimeMillis - ftjVar.f17380c);
        int i3 = ftjVar.f17384g;
        if (i2 > i3) {
            i = i3;
        } else if (i2 >= 0) {
            i = i2;
        }
        ftjVar.f17383f = i;
        ftjVar.f17378a = ftjVar.j(currentAnimationTimeMillis);
        ftjVar.i = currentAnimationTimeMillis;
    }

    public final boolean u() {
        bgv bgvVar;
        int count;
        ftj ftjVar = this.l;
        float f2 = ftjVar.f17379b;
        int abs = (int) (f2 / Math.abs(f2));
        Math.abs(ftjVar.h);
        if (abs != 0 && (count = (bgvVar = this.p).getCount()) != 0) {
            int childCount = bgvVar.getChildCount();
            int firstVisiblePosition = bgvVar.getFirstVisiblePosition();
            int i = firstVisiblePosition + childCount;
            if (abs <= 0 ? !(abs >= 0 || (firstVisiblePosition <= 0 && bgvVar.getChildAt(0).getTop() >= 0)) : !(i >= count && bgvVar.getChildAt(childCount - 1).getBottom() <= bgvVar.getHeight())) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x003c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x003d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final float v(float f2, float f3, float f4, int i) {
        float f5;
        float interpolation;
        float s = s(this.k[i] * f3, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, this.r[i]);
        float w = w(f3 - f2, s) - w(f2, s);
        AccelerateInterpolator accelerateInterpolator = this.n;
        if (w < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            interpolation = -accelerateInterpolator.getInterpolation(-w);
        } else {
            if (w <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                f5 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                if (f5 != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                    return TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                }
                float f6 = this.m[i];
                float f7 = this.f16527f[i];
                float f8 = this.i[i];
                float f9 = f6 * f4;
                return f5 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT ? s(f5 * f9, f7, f8) : -s((-f5) * f9, f7, f8);
            }
            interpolation = accelerateInterpolator.getInterpolation(w);
        }
        f5 = s(interpolation, -1.0f, 1.0f);
        if (f5 != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
        }
    }

    public final float w(float f2, float f3) {
        if (f3 != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            int i = this.f16525d;
            if (i == 0 || i == 1) {
                if (f2 < f3) {
                    if (f2 >= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                        return 1.0f - (f2 / f3);
                    }
                    if (this.f16526e && i == 1) {
                        return 1.0f;
                    }
                }
            } else if (i == 2 && f2 < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                return f2 / (-f3);
            }
        }
        return TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    }
}

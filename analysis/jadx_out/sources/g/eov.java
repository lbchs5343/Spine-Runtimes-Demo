package g;

import android.animation.ValueAnimator;
import android.os.Build;
import android.os.Looper;
import android.util.AndroidRuntimeException;
import android.view.Choreographer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class eov {

    /* renamed from: g, reason: collision with root package name */
    public final float f15921g;
    public ceq h;
    public final Object i;
    public float j;
    public final awt k;
    public boolean n;

    /* renamed from: b, reason: collision with root package name */
    public static final fcx f15916b = new fcx(1);

    /* renamed from: a, reason: collision with root package name */
    public static final fcx f15915a = new fcx(2);

    /* renamed from: d, reason: collision with root package name */
    public static final fcx f15918d = new fcx(3);

    /* renamed from: e, reason: collision with root package name */
    public static final fcx f15919e = new fcx(4);

    /* renamed from: f, reason: collision with root package name */
    public static final fcx f15920f = new fcx(5);

    /* renamed from: c, reason: collision with root package name */
    public static final fcx f15917c = new fcx(0);
    public float l = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    public float p = Float.MAX_VALUE;
    public boolean r = false;
    public boolean m = false;
    public long s = 0;
    public final ArrayList o = new ArrayList();
    public final ArrayList q = new ArrayList();

    public eov(Object obj, awt awtVar) {
        this.i = obj;
        this.k = awtVar;
        if (awtVar == f15918d || awtVar == f15919e || awtVar == f15920f) {
            this.f15921g = 0.1f;
        } else if (awtVar == f15917c) {
            this.f15921g = 0.00390625f;
        } else if (awtVar == f15916b || awtVar == f15915a) {
            this.f15921g = 0.002f;
        } else {
            this.f15921g = 1.0f;
        }
        this.h = null;
        this.j = Float.MAX_VALUE;
        this.n = false;
    }

    public static cpp t() {
        ThreadLocal threadLocal = cpp.f13276a;
        if (threadLocal.get() == null) {
            threadLocal.set(new cpp(new fdy(3)));
        }
        return (cpp) threadLocal.get();
    }

    public final void u() {
        if (this.h.f12756g <= 0.0d) {
            throw new UnsupportedOperationException("Spring animations can only come to an end when there is damping");
        }
        fdy fdyVar = t().f13279d;
        fdyVar.getClass();
        if (Thread.currentThread() != ((Looper) fdyVar.f16632a).getThread()) {
            throw new AndroidRuntimeException("Animations may only be started on the same thread as the animation handler");
        }
        if (this.m) {
            this.n = true;
        }
    }

    /* JADX WARN: Type inference failed for: r1v17, types: [g.cji, java.lang.Object] */
    public final void v(float f2) {
        float durationScale;
        if (this.m) {
            this.j = f2;
            return;
        }
        if (this.h == null) {
            this.h = new ceq(f2);
        }
        ceq ceqVar = this.h;
        double d2 = f2;
        ceqVar.f12755f = d2;
        double d3 = (float) d2;
        if (d3 > Float.MAX_VALUE) {
            throw new UnsupportedOperationException("Final position of the spring cannot be greater than the max value.");
        }
        if (d3 < -3.4028235E38f) {
            throw new UnsupportedOperationException("Final position of the spring cannot be less than the min value.");
        }
        double abs = Math.abs(this.f15921g * 0.75f);
        ceqVar.f12751b = abs;
        ceqVar.f12752c = abs * 62.5d;
        fdy fdyVar = t().f13279d;
        fdyVar.getClass();
        if (Thread.currentThread() != ((Looper) fdyVar.f16632a).getThread()) {
            throw new AndroidRuntimeException("Animations may only be started on the same thread as the animation handler");
        }
        boolean z = this.m;
        if (z || z) {
            return;
        }
        this.m = true;
        if (!this.r) {
            this.p = this.k.as(this.i);
        }
        float f3 = this.p;
        if (f3 > Float.MAX_VALUE || f3 < -3.4028235E38f) {
            throw new IllegalArgumentException("Starting value need to be in between min value and max value");
        }
        cpp t = t();
        ArrayList arrayList = t.f13282g;
        if (arrayList.size() == 0) {
            ((Choreographer) t.f13279d.f16634c).postFrameCallback(new fie(t.f13278c));
            if (Build.VERSION.SDK_INT >= 33) {
                durationScale = ValueAnimator.getDurationScale();
                t.i = durationScale;
                if (t.f13277b == null) {
                    t.f13277b = new gtb(2, t);
                }
                final gtb gtbVar = t.f13277b;
                if (((cji) gtbVar.f18714d) == null) {
                    ?? r1 = new ValueAnimator.DurationScaleChangeListener() { // from class: g.cji
                        @Override // android.animation.ValueAnimator.DurationScaleChangeListener
                        public final void onChanged(float f4) {
                            ((cpp) gtb.this.f18712b).i = f4;
                        }
                    };
                    gtbVar.f18714d = r1;
                    ValueAnimator.registerDurationScaleChangeListener(r1);
                }
            }
        }
        if (arrayList.contains(this)) {
            return;
        }
        arrayList.add(this);
    }

    public final void w(float f2) {
        this.k.aq(this.i, f2);
        int i = 0;
        while (true) {
            ArrayList arrayList = this.q;
            if (i >= arrayList.size()) {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    if (arrayList.get(size) == null) {
                        arrayList.remove(size);
                    }
                }
                return;
            }
            if (arrayList.get(i) != null) {
                throw tn.w(i, arrayList);
            }
            i++;
        }
    }
}

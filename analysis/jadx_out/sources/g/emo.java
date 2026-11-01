package g;

import android.os.Handler;

/* loaded from: classes3.dex */
public abstract class emo {

    /* renamed from: d, reason: collision with root package name */
    public static volatile dae f15804d;

    /* renamed from: e, reason: collision with root package name */
    public final gan f15805e;

    /* renamed from: f, reason: collision with root package name */
    public final efr f15806f;

    /* renamed from: g, reason: collision with root package name */
    public volatile long f15807g;

    public emo(gan ganVar) {
        ckd.k(ganVar);
        this.f15805e = ganVar;
        this.f15806f = new efr(this, 16, ganVar);
    }

    public abstract void c();

    public final Handler h() {
        dae daeVar;
        if (f15804d != null) {
            return f15804d;
        }
        synchronized (emo.class) {
            try {
                if (f15804d == null) {
                    f15804d = new dae(this.f15805e.zzau().getMainLooper(), 5, false);
                }
                daeVar = f15804d;
            } catch (Throwable th) {
                throw th;
            }
        }
        return daeVar;
    }

    public final void i() {
        this.f15807g = 0L;
        h().removeCallbacks(this.f15806f);
    }

    public final void j(long j) {
        i();
        if (j >= 0) {
            ((czz) this.f15805e.zzav()).getClass();
            this.f15807g = System.currentTimeMillis();
            if (h().postDelayed(this.f15806f, j)) {
                return;
            }
            this.f15805e.zzay().f11518b.i(Long.valueOf(j), "Failed to schedule delayed post. time");
        }
    }
}

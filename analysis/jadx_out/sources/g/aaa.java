package g;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class aaa implements ServiceConnection {

    /* renamed from: a, reason: collision with root package name */
    public final gyt f9832a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ tq f9833b;

    /* renamed from: c, reason: collision with root package name */
    public final eie f9834c;

    /* renamed from: d, reason: collision with root package name */
    public final gyt f9835d;

    public aaa(tq tqVar, eie eieVar) {
        this.f9833b = tqVar;
        dyd dydVar = tqVar.h;
        this.f9835d = new gyt(dydVar);
        this.f9832a = new gyt(dydVar);
        this.f9834c = eieVar;
    }

    public final Long e(boolean z) {
        if (z) {
            gyt gytVar = this.f9835d;
            if (!gytVar.f19023c) {
                return null;
            }
            long bt = gytVar.f19022b.bt();
            if (!gytVar.f19023c) {
                throw new IllegalStateException("This stopwatch is already stopped.");
            }
            gytVar.f19023c = false;
            long j = (bt - gytVar.f19021a) + gytVar.f19024d;
            gytVar.f19024d = j;
            return Long.valueOf(TimeUnit.MILLISECONDS.convert(j, TimeUnit.NANOSECONDS));
        }
        gyt gytVar2 = this.f9832a;
        if (!gytVar2.f19023c) {
            return null;
        }
        long bt2 = gytVar2.f19022b.bt();
        if (!gytVar2.f19023c) {
            throw new IllegalStateException("This stopwatch is already stopped.");
        }
        gytVar2.f19023c = false;
        long j2 = (bt2 - gytVar2.f19021a) + gytVar2.f19024d;
        gytVar2.f19024d = j2;
        return Long.valueOf(TimeUnit.MILLISECONDS.convert(j2, TimeUnit.NANOSECONDS));
    }

    public final void f(ejd ejdVar, hm hmVar, String str, boolean z) {
        try {
            gwg c2 = aho.c();
            int i = ejdVar.f15636a;
            c2.f();
            aho.f((aho) c2.f14803d, i);
            String str2 = ejdVar.f15638c;
            c2.f();
            aho.a((aho) c2.f14803d, str2);
            c2.f();
            aho.e((aho) c2.f14803d, hmVar);
            if (str != null) {
                c2.f();
                aho.b((aho) c2.f14803d, str);
            }
            Long e2 = e(z);
            tq tqVar = this.f9833b;
            if (!z) {
                bnn c3 = efn.c();
                c3.f();
                efn.b((efn) c3.f14803d, (aho) c2.g());
                if (e2 != null) {
                    long longValue = e2.longValue();
                    c3.f();
                    efn.a((efn) c3.f14803d, longValue);
                }
                tqVar.f20056b.aa((efn) c3.g());
                return;
            }
            eip e3 = dmh.e();
            e3.a(false);
            e3.b();
            if (e2 != null) {
                long longValue2 = e2.longValue();
                e3.f();
                dmh.c((dmh) e3.f14803d, longValue2);
            }
            ari b2 = hd.b();
            b2.a(c2);
            b2.f();
            hd.f((hd) b2.f14803d, 6);
            b2.b(e3);
            tqVar.ah((hd) b2.g());
        } catch (Throwable unused) {
            int i2 = gbs.f17875a;
        }
    }

    public final void g(ejd ejdVar) {
        tq tqVar = this.f9833b;
        synchronized (tqVar.k) {
            try {
                if (tqVar.t == 3) {
                    return;
                }
                try {
                    this.f9834c.t(ejdVar);
                } catch (Throwable unused) {
                    int i = gbs.f17875a;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0086 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // android.content.ServiceConnection
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onBindingDied(ComponentName componentName) {
        tq tqVar;
        tq tqVar2;
        int i = gbs.f17875a;
        try {
            tqVar2 = this.f9833b;
        } catch (Throwable unused) {
            int i2 = gbs.f17875a;
        }
        if (tq.af(tqVar2)) {
            ffr ffrVar = tqVar2.f20056b;
            ari b2 = hd.b();
            b2.f();
            hd.f((hd) b2.f14803d, 6);
            gwg c2 = aho.c();
            hm hmVar = hm.BINDING_DIED;
            c2.f();
            aho.e((aho) c2.f14803d, hmVar);
            b2.a(c2);
            eip e2 = dmh.e();
            e2.a(false);
            e2.b();
            b2.b(e2);
            hd hdVar = (hd) b2.g();
            ffrVar.getClass();
            try {
                ffrVar.z(hdVar, (djs) ffrVar.f16721f);
            } catch (Throwable unused2) {
                int i3 = gbs.f17875a;
            }
            tqVar = this.f9833b;
            synchronized (tqVar.k) {
                if (tqVar.t != 3 && tqVar.t != 0) {
                    tqVar.ai(0);
                    tqVar.al();
                    try {
                        this.f9834c.v();
                        return;
                    } catch (Throwable unused3) {
                        int i4 = gbs.f17875a;
                        return;
                    }
                }
                return;
            }
        }
        ffr ffrVar2 = tqVar2.f20056b;
        afw a2 = afw.a();
        ffrVar2.getClass();
        try {
            aqa f2 = fjq.f();
            f2.a((djs) ffrVar2.f16721f);
            f2.f();
            fjq.d((fjq) f2.f14803d, a2);
            ((gez) ffrVar2.f16719c).h((fjq) f2.g());
        } catch (Throwable unused4) {
            int i5 = gbs.f17875a;
        }
        tqVar = this.f9833b;
        synchronized (tqVar.k) {
        }
        int i22 = gbs.f17875a;
        tqVar = this.f9833b;
        synchronized (tqVar.k) {
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        agh eawVar;
        gbs.i("BillingClient", "Billing service connected.");
        tq tqVar = this.f9833b;
        synchronized (tqVar.k) {
            try {
                if (tqVar.t == 3) {
                    return;
                }
                int i = euv.f16204a;
                if (iBinder == null) {
                    eawVar = null;
                } else {
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.android.vending.billing.IInAppBillingService");
                    eawVar = queryLocalInterface instanceof agh ? (agh) queryLocalInterface : new eaw(iBinder, "com.android.vending.billing.IInAppBillingService", 2);
                }
                tqVar.s = eawVar;
                if (tq.ae(new gzm(2, this), 30000L, new dyn(29, this), tqVar.ax(), tqVar.aw()) == null) {
                    ejd au = tqVar.au();
                    tqVar.bc(au, hm.MISSING_RESULT_FROM_EXECUTE_ASYNC);
                    g(au);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0094 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // android.content.ServiceConnection
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onServiceDisconnected(ComponentName componentName) {
        tq tqVar;
        tq tqVar2;
        int i = gbs.f17875a;
        try {
            tqVar2 = this.f9833b;
        } catch (Throwable unused) {
            int i2 = gbs.f17875a;
        }
        if (tq.af(tqVar2)) {
            ffr ffrVar = tqVar2.f20056b;
            ari b2 = hd.b();
            b2.f();
            hd.f((hd) b2.f14803d, 6);
            gwg c2 = aho.c();
            hm hmVar = hm.SERVICE_DISCONNECTED;
            c2.f();
            aho.e((aho) c2.f14803d, hmVar);
            b2.a(c2);
            eip e2 = dmh.e();
            e2.a(false);
            e2.b();
            b2.b(e2);
            hd hdVar = (hd) b2.g();
            ffrVar.getClass();
            try {
                ffrVar.z(hdVar, (djs) ffrVar.f16721f);
            } catch (Throwable unused2) {
                int i3 = gbs.f17875a;
            }
            gyt gytVar = this.f9832a;
            gytVar.f19024d = 0L;
            gytVar.f19023c = false;
            gytVar.e();
            tqVar = this.f9833b;
            synchronized (tqVar.k) {
                try {
                    if (tqVar.t == 3) {
                        return;
                    }
                    tqVar.ai(0);
                    try {
                        this.f9834c.v();
                        return;
                    } catch (Throwable unused3) {
                        int i4 = gbs.f17875a;
                        return;
                    }
                } finally {
                }
            }
        }
        ffr ffrVar2 = tqVar2.f20056b;
        djl a2 = djl.a();
        ffrVar2.getClass();
        if (a2 != null) {
            try {
                aqa f2 = fjq.f();
                f2.a((djs) ffrVar2.f16721f);
                f2.f();
                fjq.c((fjq) f2.f14803d, a2);
                ((gez) ffrVar2.f16719c).h((fjq) f2.g());
            } catch (Throwable unused4) {
                int i5 = gbs.f17875a;
            }
        }
        gyt gytVar2 = this.f9832a;
        gytVar2.f19024d = 0L;
        gytVar2.f19023c = false;
        gytVar2.e();
        tqVar = this.f9833b;
        synchronized (tqVar.k) {
        }
        int i22 = gbs.f17875a;
        gyt gytVar22 = this.f9832a;
        gytVar22.f19024d = 0L;
        gytVar22.f19023c = false;
        gytVar22.e();
        tqVar = this.f9833b;
        synchronized (tqVar.k) {
        }
    }
}

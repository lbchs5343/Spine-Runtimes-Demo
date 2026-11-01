package g;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* loaded from: classes.dex */
public final class dbk extends cpk implements fjt {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f13919a = AtomicIntegerFieldUpdater.newUpdater(dbk.class, "runningWorkers$volatile");

    /* renamed from: b, reason: collision with root package name */
    public final Object f13920b;
    public final cpk h;
    public final int j;
    public final /* synthetic */ fjt k;
    public final ckn l;
    private volatile /* synthetic */ int runningWorkers$volatile;

    /* JADX WARN: Multi-variable type inference failed */
    public dbk(cpk cpkVar, int i) {
        this.h = cpkVar;
        this.j = i;
        fjt fjtVar = cpkVar instanceof fjt ? (fjt) cpkVar : null;
        this.k = fjtVar == null ? grp.f18652a : fjtVar;
        this.l = new ckn();
        this.f13920b = new Object();
    }

    @Override // g.fjt
    public final void d(long j, gsn gsnVar) {
        this.k.d(j, gsnVar);
    }

    @Override // g.cpk
    public final void g(boj bojVar, Runnable runnable) {
        Runnable m;
        this.l.c(runnable);
        if (f13919a.get(this) >= this.j || !n() || (m = m()) == null) {
            return;
        }
        this.h.g(this, new gfh(20, this, m, false));
    }

    @Override // g.cpk
    public final void i(boj bojVar, Runnable runnable) {
        Runnable m;
        this.l.c(runnable);
        if (f13919a.get(this) >= this.j || !n() || (m = m()) == null) {
            return;
        }
        this.h.i(this, new gfh(20, this, m, false));
    }

    public final Runnable m() {
        while (true) {
            Runnable runnable = (Runnable) this.l.b();
            if (runnable != null) {
                return runnable;
            }
            synchronized (this.f13920b) {
                AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f13919a;
                atomicIntegerFieldUpdater.decrementAndGet(this);
                if (this.l.e() == 0) {
                    return null;
                }
                atomicIntegerFieldUpdater.incrementAndGet(this);
            }
        }
    }

    public final boolean n() {
        synchronized (this.f13920b) {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f13919a;
            if (atomicIntegerFieldUpdater.get(this) >= this.j) {
                return false;
            }
            atomicIntegerFieldUpdater.incrementAndGet(this);
            return true;
        }
    }
}

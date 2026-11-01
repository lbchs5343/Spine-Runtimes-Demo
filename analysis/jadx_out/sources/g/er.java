package g;

import com.bykv.vk.component.ttvideo.player.C;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;

/* loaded from: classes.dex */
public abstract class er extends bkg implements fjt {
    private volatile /* synthetic */ Object _delayed$volatile;
    private volatile /* synthetic */ int _isCompleted$volatile = 0;
    private volatile /* synthetic */ Object _queue$volatile;
    public static final /* synthetic */ AtomicReferenceFieldUpdater _u = AtomicReferenceFieldUpdater.newUpdater(er.class, Object.class, "_queue$volatile");

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f16020b = AtomicReferenceFieldUpdater.newUpdater(er.class, Object.class, "_delayed$volatile");

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f16019a = AtomicIntegerFieldUpdater.newUpdater(er.class, "_isCompleted$volatile");

    /* JADX WARN: Code restructure failed: missing block: B:67:0x00cf, code lost:
    
        if ((((int) (1073741823 & r6)) == ((int) ((r6 & 1152921503533105152L) >> 30))) == false) goto L89;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final long _v() {
        ghe h;
        ghe d2;
        if (!r()) {
            bpa bpaVar = (bpa) f16020b.get(this);
            Runnable runnable = null;
            if (bpaVar != null && fql.f17245b.get(bpaVar) != 0) {
                long nanoTime = System.nanoTime();
                do {
                    synchronized (bpaVar) {
                        try {
                            ghe[] gheVarArr = bpaVar.f17246c;
                            ghe gheVar = gheVarArr != null ? gheVarArr[0] : null;
                            if (gheVar == null) {
                                d2 = null;
                            } else {
                                d2 = ((nanoTime - gheVar.f18151a) > 0L ? 1 : ((nanoTime - gheVar.f18151a) == 0L ? 0 : -1)) >= 0 ? h(gheVar) : false ? bpaVar.d(0) : null;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                } while (d2 != null);
            }
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _u;
            loop1: while (true) {
                Object obj = atomicReferenceFieldUpdater.get(this);
                if (obj == null) {
                    break;
                }
                if (!(obj instanceof xr)) {
                    if (obj != bfc.f11437b) {
                        while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, null)) {
                            if (atomicReferenceFieldUpdater.get(this) != obj) {
                                break;
                            }
                        }
                        runnable = (Runnable) obj;
                        break loop1;
                    }
                    break;
                }
                xr xrVar = (xr) obj;
                Object h2 = xrVar.h();
                if (h2 != xr.f20312c) {
                    runnable = (Runnable) h2;
                    break;
                }
                xr k = xrVar.k();
                while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, k) && atomicReferenceFieldUpdater.get(this) == obj) {
                }
            }
            if (runnable != null) {
                runnable.run();
                return 0L;
            }
            fbz fbzVar = this.n;
            if (((fbzVar == null || fbzVar.isEmpty()) ? Long.MAX_VALUE : 0L) != 0) {
                Object obj2 = _u.get(this);
                if (obj2 != null) {
                    if (obj2 instanceof xr) {
                        long j = xr.f20311b.get((xr) obj2);
                    } else if (obj2 == bfc.f11437b) {
                        return Long.MAX_VALUE;
                    }
                }
                bpa bpaVar2 = (bpa) f16020b.get(this);
                if (bpaVar2 != null && (h = bpaVar2.h()) != null) {
                    long nanoTime2 = h.f18151a - System.nanoTime();
                    if (nanoTime2 >= 0) {
                        return nanoTime2;
                    }
                }
                return Long.MAX_VALUE;
            }
        }
        return 0L;
    }

    @Override // g.fjt
    public final void d(long j, gsn gsnVar) {
        long j2 = j > 0 ? j >= 9223372036854L ? Long.MAX_VALUE : C.MICROS_PER_SECOND * j : 0L;
        if (j2 < 4611686018427387903L) {
            long nanoTime = System.nanoTime();
            ghk ghkVar = new ghk(this, j2 + nanoTime, gsnVar);
            e(nanoTime, ghkVar);
            gsnVar.ad(new cby(2, ghkVar));
        }
    }

    public final void e(long j, ghe gheVar) {
        int e2;
        Thread k;
        int i = f16019a.get(this);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f16020b;
        if (i != 0) {
            e2 = 1;
        } else {
            bpa bpaVar = (bpa) atomicReferenceFieldUpdater.get(this);
            if (bpaVar == null) {
                bpa bpaVar2 = new bpa();
                bpaVar2.f11937a = j;
                while (!atomicReferenceFieldUpdater.compareAndSet(this, null, bpaVar2) && atomicReferenceFieldUpdater.get(this) == null) {
                }
                Object obj = atomicReferenceFieldUpdater.get(this);
                bff.d(obj);
                bpaVar = (bpa) obj;
            }
            e2 = gheVar.e(j, bpaVar, this);
        }
        if (e2 != 0) {
            if (e2 == 1) {
                p(j, gheVar);
                return;
            } else {
                if (e2 != 2) {
                    throw new IllegalStateException("unexpected result");
                }
                return;
            }
        }
        bpa bpaVar3 = (bpa) atomicReferenceFieldUpdater.get(this);
        if ((bpaVar3 != null ? bpaVar3.h() : null) != gheVar || Thread.currentThread() == (k = k())) {
            return;
        }
        LockSupport.unpark(k);
    }

    public void f(Runnable runnable) {
        if (!h(runnable)) {
            bzr.t.f(runnable);
            return;
        }
        Thread k = k();
        if (Thread.currentThread() != k) {
            LockSupport.unpark(k);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0062, code lost:
    
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean h(Runnable runnable) {
        loop0: while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _u;
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (f16019a.get(this) == 0) {
                if (obj != null) {
                    if (!(obj instanceof xr)) {
                        if (obj != bfc.f11437b) {
                            xr xrVar = new xr(8, true);
                            xrVar.i((Runnable) obj);
                            xrVar.i(runnable);
                            while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, xrVar)) {
                                if (atomicReferenceFieldUpdater.get(this) != obj) {
                                    break;
                                }
                            }
                            break loop0;
                        }
                        break;
                    }
                    xr xrVar2 = (xr) obj;
                    int i = xrVar2.i(runnable);
                    if (i == 0) {
                        break;
                    }
                    if (i == 1) {
                        xr k = xrVar2.k();
                        while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, k) && atomicReferenceFieldUpdater.get(this) == obj) {
                        }
                    } else if (i == 2) {
                        break;
                    }
                } else {
                    while (!atomicReferenceFieldUpdater.compareAndSet(this, null, runnable)) {
                        if (atomicReferenceFieldUpdater.get(this) != null) {
                            break;
                        }
                    }
                    break loop0;
                }
            } else {
                return false;
            }
        }
        return false;
    }

    @Override // g.cpk
    public final void i(boj bojVar, Runnable runnable) {
        f(runnable);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0024, code lost:
    
        if ((g.fql.f17245b.get(r0) == 0) == false) goto L29;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean isEmpty() {
        fbz fbzVar = this.n;
        if (fbzVar != null ? fbzVar.isEmpty() : true) {
            bpa bpaVar = (bpa) f16020b.get(this);
            if (bpaVar != null) {
            }
            Object obj = _u.get(this);
            if (obj != null) {
                if (obj instanceof xr) {
                    long j = xr.f20311b.get((xr) obj);
                    return ((int) (1073741823 & j)) == ((int) ((j & 1152921503533105152L) >> 30));
                }
                if (obj == bfc.f11437b) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // g.bkg
    public void shutdown() {
        ghe d2;
        fla.f16956a.set(null);
        f16019a.set(this, 1);
        hy hyVar = bfc.f11437b;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _u;
        loop0: while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj != null) {
                if (!(obj instanceof xr)) {
                    if (obj != hyVar) {
                        xr xrVar = new xr(8, true);
                        xrVar.i((Runnable) obj);
                        while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, xrVar)) {
                            if (atomicReferenceFieldUpdater.get(this) != obj) {
                                break;
                            }
                        }
                        break loop0;
                    }
                    break;
                }
                ((xr) obj).j();
                break;
            }
            while (!atomicReferenceFieldUpdater.compareAndSet(this, null, hyVar)) {
                if (atomicReferenceFieldUpdater.get(this) != null) {
                    break;
                }
            }
            break loop0;
        }
        while (_v() <= 0) {
        }
        long nanoTime = System.nanoTime();
        while (true) {
            bpa bpaVar = (bpa) f16020b.get(this);
            if (bpaVar == null) {
                return;
            }
            synchronized (bpaVar) {
                d2 = fql.f17245b.get(bpaVar) > 0 ? bpaVar.d(0) : null;
            }
            if (d2 == null) {
                return;
            } else {
                p(nanoTime, d2);
            }
        }
    }
}

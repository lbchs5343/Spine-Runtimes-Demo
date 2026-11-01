package g;

import com.bykv.vk.component.ttvideo.ILivePlayer;
import java.io.Closeable;
import java.lang.Thread;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.locks.LockSupport;

/* loaded from: classes.dex */
public final class gwu implements Executor, Closeable {
    private volatile /* synthetic */ int _isTerminated$volatile;
    private volatile /* synthetic */ long controlState$volatile;

    /* renamed from: e, reason: collision with root package name */
    public final es f18900e;

    /* renamed from: f, reason: collision with root package name */
    public final long f18901f;

    /* renamed from: g, reason: collision with root package name */
    public final String f18902g;
    public final akc h;
    public final int i;
    public final int j;
    public final akc k;
    private volatile /* synthetic */ long parkedWorkersStack$volatile;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ AtomicLongFieldUpdater f18896a = AtomicLongFieldUpdater.newUpdater(gwu.class, "parkedWorkersStack$volatile");

    /* renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ AtomicLongFieldUpdater f18899d = AtomicLongFieldUpdater.newUpdater(gwu.class, "controlState$volatile");

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f18897b = AtomicIntegerFieldUpdater.newUpdater(gwu.class, "_isTerminated$volatile");

    /* renamed from: c, reason: collision with root package name */
    public static final hy f18898c = new hy("NOT_IN_STACK", 1);

    public gwu(int i, int i2, String str, long j) {
        this.i = i;
        this.j = i2;
        this.f18901f = j;
        this.f18902g = str;
        if (i < 1) {
            throw new IllegalArgumentException(awf.b(i, "Core pool size ", " should be at least 1").toString());
        }
        if (i2 < i) {
            throw new IllegalArgumentException(tn.t(i2, i, "Max pool size ", " should be greater than or equals to core pool size ").toString());
        }
        if (i2 > 2097150) {
            throw new IllegalArgumentException(awf.b(i2, "Max pool size ", " should not exceed maximal supported number of threads 2097150").toString());
        }
        if (j <= 0) {
            throw new IllegalArgumentException(("Idle worker keep alive time " + j + " must be positive").toString());
        }
        this.h = new akc();
        this.k = new akc();
        this.f18900e = new es((i + 1) * 2);
        this.controlState$volatile = i << 42;
        this._isTerminated$volatile = 0;
    }

    public static /* synthetic */ void l(gwu gwuVar, Runnable runnable, int i) {
        gwuVar.q(runnable, fga.h, (i & 4) == 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x0088, code lost:
    
        if (r1 == null) goto L39;
     */
    @Override // java.io.Closeable, java.lang.AutoCloseable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void close() {
        int i;
        hbm hbmVar;
        if (f18897b.compareAndSet(this, 0, 1)) {
            Thread currentThread = Thread.currentThread();
            sv svVar = currentThread instanceof sv ? (sv) currentThread : null;
            if (svVar == null || !bff.n(svVar.f20016b, this)) {
                svVar = null;
            }
            synchronized (this.f18900e) {
                i = (int) (f18899d.get(this) & 2097151);
            }
            if (1 <= i) {
                int i2 = 1;
                while (true) {
                    Object b2 = this.f18900e.b(i2);
                    bff.d(b2);
                    sv svVar2 = (sv) b2;
                    if (svVar2 != svVar) {
                        while (svVar2.getState() != Thread.State.TERMINATED) {
                            LockSupport.unpark(svVar2);
                            svVar2.join(ILivePlayer.RETRY_TIME_INTERVAL_DEFAULT);
                        }
                        fub fubVar = svVar2.f20021g;
                        akc akcVar = this.k;
                        fubVar.getClass();
                        hbm hbmVar2 = (hbm) fub.f17423c.getAndSet(fubVar, null);
                        if (hbmVar2 != null) {
                            akcVar.c(hbmVar2);
                        }
                        while (true) {
                            hbm g2 = fubVar.g();
                            if (g2 == null) {
                                break;
                            } else {
                                akcVar.c(g2);
                            }
                        }
                    }
                    if (i2 == i) {
                        break;
                    } else {
                        i2++;
                    }
                }
            }
            this.k.d();
            this.h.d();
            while (true) {
                if (svVar != null) {
                    hbmVar = svVar.m(true);
                }
                hbmVar = (hbm) this.h.b();
                if (hbmVar == null && (hbmVar = (hbm) this.k.b()) == null) {
                    break;
                }
                try {
                    hbmVar.run();
                } catch (Throwable th) {
                    Thread currentThread2 = Thread.currentThread();
                    currentThread2.getUncaughtExceptionHandler().uncaughtException(currentThread2, th);
                }
            }
            if (svVar != null) {
                svVar.j(frq.TERMINATED);
            }
            f18896a.set(this, 0L);
            f18899d.set(this, 0L);
        }
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        l(this, runnable, 6);
    }

    public final boolean m() {
        hy hyVar;
        int i;
        while (true) {
            long j = f18896a.get(this);
            sv svVar = (sv) this.f18900e.b((int) (2097151 & j));
            if (svVar == null) {
                svVar = null;
            } else {
                long j2 = (2097152 + j) & (-2097152);
                Object q = svVar.q();
                while (true) {
                    hyVar = f18898c;
                    if (q == hyVar) {
                        i = -1;
                        break;
                    }
                    if (q == null) {
                        i = 0;
                        break;
                    }
                    sv svVar2 = (sv) q;
                    i = svVar2.p();
                    if (i != 0) {
                        break;
                    }
                    q = svVar2.q();
                }
                if (i >= 0) {
                    if (f18896a.compareAndSet(this, j, i | j2)) {
                        svVar.r(hyVar);
                    } else {
                        continue;
                    }
                } else {
                    continue;
                }
            }
            if (svVar == null) {
                return false;
            }
            if (sv.f20015a.compareAndSet(svVar, -1, 0)) {
                LockSupport.unpark(svVar);
                return true;
            }
        }
    }

    public final void n(sv svVar, int i, int i2) {
        while (true) {
            long j = f18896a.get(this);
            int i3 = (int) (2097151 & j);
            long j2 = (2097152 + j) & (-2097152);
            if (i3 == i) {
                if (i2 == 0) {
                    Object q = svVar.q();
                    while (true) {
                        if (q == f18898c) {
                            i3 = -1;
                            break;
                        }
                        if (q == null) {
                            i3 = 0;
                            break;
                        }
                        sv svVar2 = (sv) q;
                        i3 = svVar2.p();
                        if (i3 != 0) {
                            break;
                        } else {
                            q = svVar2.q();
                        }
                    }
                } else {
                    i3 = i2;
                }
            }
            if (i3 >= 0) {
                if (f18896a.compareAndSet(this, j, j2 | i3)) {
                    return;
                }
            }
        }
    }

    public final boolean o(long j) {
        int i = ((int) (2097151 & j)) - ((int) ((j & 4398044413952L) >> 21));
        if (i < 0) {
            i = 0;
        }
        int i2 = this.i;
        if (i < i2) {
            int p = p();
            if (p == 1 && i2 > 1) {
                p();
            }
            if (p > 0) {
                return true;
            }
        }
        return false;
    }

    public final int p() {
        synchronized (this.f18900e) {
            try {
                if (f18897b.get(this) != 0) {
                    return -1;
                }
                AtomicLongFieldUpdater atomicLongFieldUpdater = f18899d;
                long j = atomicLongFieldUpdater.get(this);
                int i = (int) (j & 2097151);
                int i2 = i - ((int) ((j & 4398044413952L) >> 21));
                if (i2 < 0) {
                    i2 = 0;
                }
                if (i2 >= this.i) {
                    return 0;
                }
                if (i >= this.j) {
                    return 0;
                }
                int i3 = ((int) (atomicLongFieldUpdater.get(this) & 2097151)) + 1;
                if (i3 <= 0 || this.f18900e.b(i3) != null) {
                    throw new IllegalArgumentException("Failed requirement.");
                }
                sv svVar = new sv(this, i3);
                this.f18900e.c(i3, svVar);
                if (i3 != ((int) (2097151 & atomicLongFieldUpdater.incrementAndGet(this)))) {
                    throw new IllegalArgumentException("Failed requirement.");
                }
                int i4 = i2 + 1;
                svVar.start();
                return i4;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void q(Runnable runnable, cyl cylVar, boolean z) {
        hbm atzVar;
        frq frqVar;
        fga.f16734e.getClass();
        long nanoTime = System.nanoTime();
        if (runnable instanceof hbm) {
            atzVar = (hbm) runnable;
            atzVar.ag = nanoTime;
            atzVar.ah = cylVar;
        } else {
            atzVar = new atz(runnable, nanoTime, cylVar);
        }
        boolean z2 = false;
        boolean z3 = atzVar.ah.f13765e == 1;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f18899d;
        long addAndGet = z3 ? atomicLongFieldUpdater.addAndGet(this, 2097152L) : 0L;
        Thread currentThread = Thread.currentThread();
        sv svVar = currentThread instanceof sv ? (sv) currentThread : null;
        if (svVar == null || !bff.n(svVar.f20016b, this)) {
            svVar = null;
        }
        if (svVar != null && (frqVar = svVar.f20018d) != frq.TERMINATED && (atzVar.ah.f13765e != 0 || frqVar != frq.BLOCKING)) {
            svVar.f20017c = true;
            fub fubVar = svVar.f20021g;
            if (z) {
                atzVar = fubVar.f(atzVar);
            } else {
                fubVar.getClass();
                hbm hbmVar = (hbm) fub.f17423c.getAndSet(fubVar, atzVar);
                atzVar = hbmVar == null ? null : fubVar.f(hbmVar);
            }
        }
        if (atzVar != null) {
            if (!(atzVar.ah.f13765e == 1 ? this.k.c(atzVar) : this.h.c(atzVar))) {
                throw new RejectedExecutionException(awf.ad(new StringBuilder(), this.f18902g, " was terminated"));
            }
        }
        if (z && svVar != null) {
            z2 = true;
        }
        if (z3) {
            if (z2 || m() || o(addAndGet)) {
                return;
            }
            m();
            return;
        }
        if (z2 || m() || o(atomicLongFieldUpdater.get(this))) {
            return;
        }
        m();
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        es esVar = this.f18900e;
        int a2 = esVar.a();
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 1; i6 < a2; i6++) {
            sv svVar = (sv) esVar.b(i6);
            if (svVar != null) {
                fub fubVar = svVar.f20021g;
                fubVar.getClass();
                int i7 = fub.f17423c.get(fubVar) != null ? (fub.f17424d.get(fubVar) - fub.f17421a.get(fubVar)) + 1 : fub.f17424d.get(fubVar) - fub.f17421a.get(fubVar);
                int i8 = ww.f20250a[svVar.f20018d.ordinal()];
                if (i8 == 1) {
                    i3++;
                } else if (i8 == 2) {
                    i2++;
                    StringBuilder sb = new StringBuilder();
                    sb.append(i7);
                    sb.append('b');
                    arrayList.add(sb.toString());
                } else if (i8 == 3) {
                    i++;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(i7);
                    sb2.append('c');
                    arrayList.add(sb2.toString());
                } else if (i8 == 4) {
                    i4++;
                    if (i7 > 0) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append(i7);
                        sb3.append('d');
                        arrayList.add(sb3.toString());
                    }
                } else if (i8 == 5) {
                    i5++;
                }
            }
        }
        long j = f18899d.get(this);
        StringBuilder sb4 = new StringBuilder();
        sb4.append(this.f18902g);
        sb4.append('@');
        sb4.append(fso.o(this));
        sb4.append("[Pool Size {core = ");
        int i9 = this.i;
        sb4.append(i9);
        sb4.append(", max = ");
        sb4.append(this.j);
        sb4.append("}, Worker States {CPU = ");
        sb4.append(i);
        sb4.append(", blocking = ");
        sb4.append(i2);
        sb4.append(", parked = ");
        sb4.append(i3);
        sb4.append(", dormant = ");
        sb4.append(i4);
        sb4.append(", terminated = ");
        sb4.append(i5);
        sb4.append("}, running workers queues = ");
        sb4.append(arrayList);
        sb4.append(", global CPU queue size = ");
        sb4.append(this.h.e());
        sb4.append(", global blocking queue size = ");
        sb4.append(this.k.e());
        sb4.append(", Control State {created workers= ");
        sb4.append((int) (2097151 & j));
        sb4.append(", blocking tasks = ");
        sb4.append((int) ((4398044413952L & j) >> 21));
        sb4.append(", CPUs acquired = ");
        sb4.append(i9 - ((int) ((j & 9223367638808264704L) >> 42)));
        sb4.append("}]");
        return sb4.toString();
    }
}

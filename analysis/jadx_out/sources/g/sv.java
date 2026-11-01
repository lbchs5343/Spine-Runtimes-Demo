package g;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;

/* loaded from: classes.dex */
public final class sv extends Thread {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f20015a = AtomicIntegerFieldUpdater.newUpdater(sv.class, "workerCtl$volatile");

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ gwu f20016b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f20017c;

    /* renamed from: d, reason: collision with root package name */
    public frq f20018d;

    /* renamed from: e, reason: collision with root package name */
    public long f20019e;

    /* renamed from: f, reason: collision with root package name */
    public long f20020f;

    /* renamed from: g, reason: collision with root package name */
    public final fub f20021g;
    public final aye h;
    public int i;
    private volatile int indexInArray;
    private volatile Object nextParkedWorker;
    private volatile /* synthetic */ int workerCtl$volatile;

    public sv(gwu gwuVar, int i) {
        this.f20016b = gwuVar;
        setDaemon(true);
        setContextClassLoader(gwu.class.getClassLoader());
        this.f20021g = new fub();
        this.h = new aye();
        this.f20018d = frq.DORMANT;
        this.nextParkedWorker = gwu.f18898c;
        int nanoTime = (int) System.nanoTime();
        this.i = nanoTime == 0 ? 42 : nanoTime;
        n(i);
    }

    public final boolean j(frq frqVar) {
        frq frqVar2 = this.f20018d;
        boolean z = frqVar2 == frq.CPU_ACQUIRED;
        if (z) {
            gwu.f18899d.addAndGet(this.f20016b, 4398046511104L);
        }
        if (frqVar2 != frqVar) {
            this.f20018d = frqVar;
        }
        return z;
    }

    public final int k(int i) {
        int i2 = this.i;
        int i3 = i2 ^ (i2 << 13);
        int i4 = i3 ^ (i3 >> 17);
        int i5 = i4 ^ (i4 << 5);
        this.i = i5;
        int i6 = i - 1;
        return (i6 & i) == 0 ? i5 & i6 : (i5 & he.UNDEFINED_ITEM_ID) % i;
    }

    public final hbm l() {
        int k = k(2);
        gwu gwuVar = this.f20016b;
        if (k == 0) {
            hbm hbmVar = (hbm) gwuVar.h.b();
            return hbmVar != null ? hbmVar : (hbm) gwuVar.k.b();
        }
        hbm hbmVar2 = (hbm) gwuVar.k.b();
        return hbmVar2 != null ? hbmVar2 : (hbm) gwuVar.h.b();
    }

    public final hbm m(boolean z) {
        hbm l;
        hbm l2;
        long j;
        frq frqVar = this.f20018d;
        frq frqVar2 = frq.CPU_ACQUIRED;
        gwu gwuVar = this.f20016b;
        hbm hbmVar = null;
        fub fubVar = this.f20021g;
        if (frqVar != frqVar2) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = gwu.f18899d;
            do {
                j = atomicLongFieldUpdater.get(gwuVar);
                if (((int) ((9223367638808264704L & j) >> 42)) == 0) {
                    fubVar.getClass();
                    loop1: while (true) {
                        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = fub.f17423c;
                        hbm hbmVar2 = (hbm) atomicReferenceFieldUpdater.get(fubVar);
                        if (hbmVar2 != null && hbmVar2.ah.f13765e == 1) {
                            while (!atomicReferenceFieldUpdater.compareAndSet(fubVar, hbmVar2, null)) {
                                if (atomicReferenceFieldUpdater.get(fubVar) != hbmVar2) {
                                    break;
                                }
                            }
                            hbmVar = hbmVar2;
                            break loop1;
                        }
                    }
                    int i = fub.f17421a.get(fubVar);
                    int i2 = fub.f17424d.get(fubVar);
                    while (true) {
                        if (i == i2 || fub.f17422b.get(fubVar) == 0) {
                            break;
                        }
                        i2--;
                        hbm h = fubVar.h(i2, true);
                        if (h != null) {
                            hbmVar = h;
                            break;
                        }
                    }
                    if (hbmVar != null) {
                        return hbmVar;
                    }
                    hbm hbmVar3 = (hbm) gwuVar.k.b();
                    return hbmVar3 == null ? o(1) : hbmVar3;
                }
            } while (!gwu.f18899d.compareAndSet(gwuVar, j, j - 4398046511104L));
            this.f20018d = frq.CPU_ACQUIRED;
        }
        if (z) {
            boolean z2 = k(gwuVar.i * 2) == 0;
            if (z2 && (l2 = l()) != null) {
                return l2;
            }
            fubVar.getClass();
            hbm hbmVar4 = (hbm) fub.f17423c.getAndSet(fubVar, null);
            if (hbmVar4 == null) {
                hbmVar4 = fubVar.g();
            }
            if (hbmVar4 != null) {
                return hbmVar4;
            }
            if (!z2 && (l = l()) != null) {
                return l;
            }
        } else {
            hbm l3 = l();
            if (l3 != null) {
                return l3;
            }
        }
        return o(3);
    }

    public final void n(int i) {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f20016b.f18902g);
        sb.append("-worker-");
        sb.append(i == 0 ? "TERMINATED" : String.valueOf(i));
        setName(sb.toString());
        this.indexInArray = i;
    }

    public final hbm o(int i) {
        long j;
        hbm hbmVar;
        long j2;
        long j3;
        hbm hbmVar2;
        AtomicLongFieldUpdater atomicLongFieldUpdater = gwu.f18899d;
        gwu gwuVar = this.f20016b;
        int i2 = (int) (atomicLongFieldUpdater.get(gwuVar) & 2097151);
        hbm hbmVar3 = null;
        if (i2 < 2) {
            return null;
        }
        int k = k(i2);
        int i3 = 0;
        long j4 = Long.MAX_VALUE;
        while (i3 < i2) {
            k++;
            if (k > i2) {
                k = 1;
            }
            sv svVar = (sv) gwuVar.f18900e.b(k);
            if (svVar != null && svVar != this) {
                fub fubVar = svVar.f20021g;
                if (i == 3) {
                    hbmVar = fubVar.g();
                    j = 0;
                } else {
                    fubVar.getClass();
                    int i4 = fub.f17421a.get(fubVar);
                    int i5 = fub.f17424d.get(fubVar);
                    boolean z = i == 1;
                    while (true) {
                        if (i4 == i5) {
                            j = 0;
                            break;
                        }
                        j = 0;
                        if (!z || fub.f17422b.get(fubVar) != 0) {
                            int i6 = i4 + 1;
                            hbmVar = fubVar.h(i4, z);
                            if (hbmVar != null) {
                                break;
                            }
                            i4 = i6;
                        } else {
                            break;
                        }
                    }
                    hbmVar = hbmVar3;
                }
                aye ayeVar = this.h;
                if (hbmVar != null) {
                    ayeVar.element = hbmVar;
                    hbmVar2 = hbmVar3;
                    j3 = -1;
                    j2 = -1;
                } else {
                    while (true) {
                        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = fub.f17423c;
                        hbm hbmVar4 = (hbm) atomicReferenceFieldUpdater.get(fubVar);
                        if (hbmVar4 == null) {
                            j2 = -1;
                            break;
                        }
                        j2 = -1;
                        if (((hbmVar4.ah.f13765e == 1 ? 1 : 2) & i) == 0) {
                            break;
                        }
                        fga.f16734e.getClass();
                        fub fubVar2 = fubVar;
                        long nanoTime = System.nanoTime() - hbmVar4.ag;
                        long j5 = fga.f16735f;
                        if (nanoTime < j5) {
                            j3 = j5 - nanoTime;
                            hbmVar2 = null;
                            break;
                        }
                        do {
                            hbmVar2 = null;
                            if (atomicReferenceFieldUpdater.compareAndSet(fubVar2, hbmVar4, null)) {
                                ayeVar.element = hbmVar4;
                                j3 = -1;
                                break;
                            }
                        } while (atomicReferenceFieldUpdater.get(fubVar2) == hbmVar4);
                        fubVar = fubVar2;
                        hbmVar3 = null;
                    }
                    j3 = -2;
                    hbmVar2 = hbmVar3;
                }
                if (j3 == j2) {
                    hbm hbmVar5 = (hbm) ayeVar.element;
                    ayeVar.element = hbmVar2;
                    return hbmVar5;
                }
                if (j3 > j) {
                    j4 = Math.min(j4, j3);
                }
            }
            i3++;
            hbmVar3 = null;
        }
        if (j4 == Long.MAX_VALUE) {
            j4 = 0;
        }
        this.f20020f = j4;
        return null;
    }

    public final int p() {
        return this.indexInArray;
    }

    public final Object q() {
        return this.nextParkedWorker;
    }

    public final void r(Object obj) {
        this.nextParkedWorker = obj;
    }

    /* JADX WARN: Code restructure failed: missing block: B:80:0x0004, code lost:
    
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0004, code lost:
    
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0004, code lost:
    
        continue;
     */
    @Override // java.lang.Thread, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() {
        long j;
        loop0: while (true) {
            boolean z = false;
            while (gwu.f18897b.get(this.f20016b) == 0) {
                frq frqVar = this.f20018d;
                frq frqVar2 = frq.TERMINATED;
                if (frqVar == frqVar2) {
                    break loop0;
                }
                hbm m = m(this.f20017c);
                if (m != null) {
                    this.f20020f = 0L;
                    gwu gwuVar = this.f20016b;
                    int i = m.ah.f13765e;
                    this.f20019e = 0L;
                    if (this.f20018d == frq.PARKING) {
                        this.f20018d = frq.BLOCKING;
                    }
                    if (i != 0 && j(frq.BLOCKING) && !gwuVar.m() && !gwuVar.o(gwu.f18899d.get(gwuVar))) {
                        gwuVar.m();
                    }
                    try {
                        m.run();
                    } catch (Throwable th) {
                        Thread currentThread = Thread.currentThread();
                        currentThread.getUncaughtExceptionHandler().uncaughtException(currentThread, th);
                    }
                    if (i != 0) {
                        gwu.f18899d.addAndGet(gwuVar, -2097152L);
                        if (this.f20018d != frqVar2) {
                            this.f20018d = frq.DORMANT;
                        }
                    }
                } else {
                    this.f20017c = false;
                    if (this.f20020f == 0) {
                        Object obj = this.nextParkedWorker;
                        hy hyVar = gwu.f18898c;
                        if (obj != hyVar) {
                            f20015a.set(this, -1);
                            while (this.nextParkedWorker != gwu.f18898c) {
                                AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f20015a;
                                if (atomicIntegerFieldUpdater.get(this) == -1) {
                                    gwu gwuVar2 = this.f20016b;
                                    AtomicIntegerFieldUpdater atomicIntegerFieldUpdater2 = gwu.f18897b;
                                    if (atomicIntegerFieldUpdater2.get(gwuVar2) != 0) {
                                        break;
                                    }
                                    frq frqVar3 = this.f20018d;
                                    frq frqVar4 = frq.TERMINATED;
                                    if (frqVar3 == frqVar4) {
                                        break;
                                    }
                                    j(frq.PARKING);
                                    Thread.interrupted();
                                    if (this.f20019e == 0) {
                                        j = 2097151;
                                        this.f20019e = System.nanoTime() + this.f20016b.f18901f;
                                    } else {
                                        j = 2097151;
                                    }
                                    LockSupport.parkNanos(this.f20016b.f18901f);
                                    if (System.nanoTime() - this.f20019e >= 0) {
                                        this.f20019e = 0L;
                                        gwu gwuVar3 = this.f20016b;
                                        synchronized (gwuVar3.f18900e) {
                                            try {
                                                if (!(atomicIntegerFieldUpdater2.get(gwuVar3) != 0)) {
                                                    AtomicLongFieldUpdater atomicLongFieldUpdater = gwu.f18899d;
                                                    if (((int) (atomicLongFieldUpdater.get(gwuVar3) & j)) > gwuVar3.i) {
                                                        if (atomicIntegerFieldUpdater.compareAndSet(this, -1, 1)) {
                                                            int i2 = this.indexInArray;
                                                            n(0);
                                                            gwuVar3.n(this, i2, 0);
                                                            int andDecrement = (int) (atomicLongFieldUpdater.getAndDecrement(gwuVar3) & j);
                                                            if (andDecrement != i2) {
                                                                Object b2 = gwuVar3.f18900e.b(andDecrement);
                                                                bff.d(b2);
                                                                sv svVar = (sv) b2;
                                                                gwuVar3.f18900e.c(i2, svVar);
                                                                svVar.n(i2);
                                                                gwuVar3.n(svVar, andDecrement, i2);
                                                            }
                                                            gwuVar3.f18900e.c(andDecrement, null);
                                                            this.f20018d = frqVar4;
                                                        }
                                                    }
                                                }
                                            } catch (Throwable th2) {
                                                throw th2;
                                            }
                                        }
                                    }
                                }
                            }
                        } else {
                            gwu gwuVar4 = this.f20016b;
                            if (this.nextParkedWorker == hyVar) {
                                AtomicLongFieldUpdater atomicLongFieldUpdater2 = gwu.f18896a;
                                while (true) {
                                    long j2 = atomicLongFieldUpdater2.get(gwuVar4);
                                    int i3 = this.indexInArray;
                                    this.nextParkedWorker = gwuVar4.f18900e.b((int) (j2 & 2097151));
                                    gwu gwuVar5 = gwuVar4;
                                    if (gwu.f18896a.compareAndSet(gwuVar5, j2, ((j2 + 2097152) & (-2097152)) | i3)) {
                                        break;
                                    } else {
                                        gwuVar4 = gwuVar5;
                                    }
                                }
                            }
                        }
                    } else if (z) {
                        j(frq.PARKING);
                        Thread.interrupted();
                        LockSupport.parkNanos(this.f20020f);
                        this.f20020f = 0L;
                    } else {
                        z = true;
                    }
                }
            }
            break loop0;
        }
        j(frq.TERMINATED);
    }
}

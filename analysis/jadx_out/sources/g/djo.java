package g;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes.dex */
public class djo implements bfl {
    private volatile /* synthetic */ Object _closeCause$volatile;
    private volatile /* synthetic */ long bufferEnd$volatile;
    private volatile /* synthetic */ Object bufferEndSegment$volatile;
    private volatile /* synthetic */ Object closeHandler$volatile;
    private volatile /* synthetic */ long completedExpandBuffersAndPauseFlag$volatile;
    private volatile /* synthetic */ Object receiveSegment$volatile;
    private volatile /* synthetic */ long receivers$volatile;
    private volatile /* synthetic */ Object sendSegment$volatile;
    private volatile /* synthetic */ long sendersAndCloseStatus$volatile;
    public final int t;
    public static final /* synthetic */ AtomicLongFieldUpdater r = AtomicLongFieldUpdater.newUpdater(djo.class, "sendersAndCloseStatus$volatile");
    public static final /* synthetic */ AtomicLongFieldUpdater n = AtomicLongFieldUpdater.newUpdater(djo.class, "receivers$volatile");
    public static final /* synthetic */ AtomicLongFieldUpdater o = AtomicLongFieldUpdater.newUpdater(djo.class, "bufferEnd$volatile");
    public static final /* synthetic */ AtomicLongFieldUpdater p = AtomicLongFieldUpdater.newUpdater(djo.class, "completedExpandBuffersAndPauseFlag$volatile");
    public static final /* synthetic */ AtomicReferenceFieldUpdater s = AtomicReferenceFieldUpdater.newUpdater(djo.class, Object.class, "sendSegment$volatile");
    public static final /* synthetic */ AtomicReferenceFieldUpdater l = AtomicReferenceFieldUpdater.newUpdater(djo.class, Object.class, "receiveSegment$volatile");
    public static final /* synthetic */ AtomicReferenceFieldUpdater k = AtomicReferenceFieldUpdater.newUpdater(djo.class, Object.class, "bufferEndSegment$volatile");
    public static final /* synthetic */ AtomicReferenceFieldUpdater q = AtomicReferenceFieldUpdater.newUpdater(djo.class, Object.class, "_closeCause$volatile");
    public static final /* synthetic */ AtomicReferenceFieldUpdater m = AtomicReferenceFieldUpdater.newUpdater(djo.class, Object.class, "closeHandler$volatile");

    public djo(int i) {
        this.t = i;
        if (i < 0) {
            throw new IllegalArgumentException(awf.b(i, "Invalid channel capacity: ", ", should be >=0").toString());
        }
        ggb ggbVar = drx.h;
        this.bufferEnd$volatile = i != 0 ? i != Integer.MAX_VALUE ? i : Long.MAX_VALUE : 0L;
        this.completedExpandBuffersAndPauseFlag$volatile = o.get(this);
        ggb ggbVar2 = new ggb(0L, null, this, 3);
        this.sendSegment$volatile = ggbVar2;
        this.receiveSegment$volatile = ggbVar2;
        if (aj()) {
            ggbVar2 = drx.h;
            bff.ag(ggbVar2, "null cannot be cast to non-null type kotlinx.coroutines.channels.ChannelSegment<E of kotlinx.coroutines.channels.BufferedChannel>");
        }
        this.bufferEndSegment$volatile = ggbVar2;
        this._closeCause$volatile = drx.j;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Object u(djo djoVar, w wVar) {
        fcp fcpVar;
        int i;
        ggb ggbVar;
        if (wVar instanceof fcp) {
            fcpVar = (fcp) wVar;
            int i2 = fcpVar.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                fcpVar.label = i2 - Integer.MIN_VALUE;
                fcp fcpVar2 = fcpVar;
                Object obj = fcpVar2.result;
                cxr cxrVar = cxr.COROUTINE_SUSPENDED;
                i = fcpVar2.label;
                if (i == 0) {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    eg.k(obj);
                    return ((clw) obj).f13098b;
                }
                eg.k(obj);
                ggb ggbVar2 = (ggb) l.get(djoVar);
                while (true) {
                    djoVar.getClass();
                    if (djoVar.ao(r.get(djoVar), true)) {
                        return new buf(djoVar.ak());
                    }
                    long andIncrement = n.getAndIncrement(djoVar);
                    long j = drx.n;
                    long j2 = andIncrement / j;
                    int i3 = (int) (andIncrement % j);
                    if (ggbVar2.f17418b != j2) {
                        ggb ab2 = djoVar.ab(j2, ggbVar2);
                        if (ab2 == null) {
                            continue;
                        } else {
                            ggbVar = ab2;
                        }
                    } else {
                        ggbVar = ggbVar2;
                    }
                    djo djoVar2 = djoVar;
                    Object aq = djoVar2.aq(ggbVar, i3, andIncrement, null);
                    if (aq == drx.l) {
                        throw new IllegalStateException("unexpected");
                    }
                    if (aq != drx.f14685c) {
                        if (aq != drx.f14686d) {
                            ggbVar.l();
                            return aq;
                        }
                        fcpVar2.label = 1;
                        Object an = djoVar2.an(ggbVar, i3, andIncrement, fcpVar2);
                        return an == cxrVar ? cxrVar : an;
                    }
                    if (andIncrement < djoVar2.at()) {
                        ggbVar.l();
                    }
                    djoVar = djoVar2;
                    ggbVar2 = ggbVar;
                }
            }
        }
        fcpVar = new fcp(djoVar, wVar);
        fcp fcpVar22 = fcpVar;
        Object obj2 = fcpVar22.result;
        cxr cxrVar2 = cxr.COROUTINE_SUSPENDED;
        i = fcpVar22.label;
        if (i == 0) {
        }
    }

    public static final void v(djo djoVar, Object obj, gsn gsnVar) {
        gsnVar._z(eg.i(djoVar.am()));
    }

    public static final int w(djo djoVar, ggb ggbVar, int i, Object obj, long j, Object obj2, boolean z) {
        ggbVar.s(i, obj);
        if (z) {
            return djoVar.ap(ggbVar, i, obj, j, obj2, z);
        }
        Object p2 = ggbVar.p(i);
        if (p2 == null) {
            if (djoVar.as(j)) {
                if (ggbVar.t(null, i, drx.f14687e)) {
                    return 1;
                }
            } else {
                if (obj2 == null) {
                    return 3;
                }
                if (ggbVar.t(null, i, obj2)) {
                    return 2;
                }
            }
        } else if (p2 instanceof cjq) {
            ggbVar.s(i, null);
            if (djoVar.ai(p2, obj)) {
                ggbVar.q(i, drx.m);
                return 0;
            }
            hy hyVar = drx.f14684b;
            if (ggbVar.o.getAndSet((i * 2) + 1, hyVar) == hyVar) {
                return 5;
            }
            ggbVar.r(i, true);
            return 5;
        }
        return djoVar.ap(ggbVar, i, obj, j, obj2, z);
    }

    public static boolean x(Object obj) {
        if (obj instanceof anq) {
            bff.ag(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>");
            return drx.t((anq) obj, dgi.f14134a, null);
        }
        throw new IllegalStateException(("Unexpected waiter: " + obj).toString());
    }

    public static void y(djo djoVar) {
        AtomicLongFieldUpdater atomicLongFieldUpdater = p;
        if ((atomicLongFieldUpdater.addAndGet(djoVar, 1L) & 4611686018427387904L) != 0) {
            while ((atomicLongFieldUpdater.get(djoVar) & 4611686018427387904L) != 0) {
            }
        }
    }

    public static final ggb z(djo djoVar, long j, ggb ggbVar) {
        Object bc;
        djo djoVar2;
        ggb ggbVar2 = drx.h;
        bwn bwnVar = bwn.f12322a;
        loop0: while (true) {
            bc = cro.bc(j, ggbVar);
            if (!bff.o(bc)) {
                fu i = bff.i(bc);
                while (true) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = s;
                    fu fuVar = (fu) atomicReferenceFieldUpdater.get(djoVar);
                    if (fuVar.f17418b >= i.f17418b) {
                        break loop0;
                    }
                    if (!i.f()) {
                        break;
                    }
                    while (!atomicReferenceFieldUpdater.compareAndSet(djoVar, fuVar, i)) {
                        if (atomicReferenceFieldUpdater.get(djoVar) != fuVar) {
                            if (i.d()) {
                                i.k();
                            }
                        }
                    }
                    if (fuVar.d()) {
                        fuVar.k();
                    }
                }
            } else {
                break;
            }
        }
        boolean o2 = bff.o(bc);
        AtomicLongFieldUpdater atomicLongFieldUpdater = n;
        if (o2) {
            djoVar.ah();
            if (ggbVar.f17418b * drx.n < atomicLongFieldUpdater.get(djoVar)) {
                ggbVar.l();
                return null;
            }
        } else {
            ggb ggbVar3 = (ggb) bff.i(bc);
            long j2 = ggbVar3.f17418b;
            if (j2 <= j) {
                return ggbVar3;
            }
            long j3 = drx.n * j2;
            while (true) {
                long j4 = r.get(djoVar);
                long j5 = 1152921504606846975L & j4;
                if (j5 >= j3) {
                    djoVar2 = djoVar;
                    break;
                }
                djoVar2 = djoVar;
                if (r.compareAndSet(djoVar2, j4, (((int) (j4 >> 60)) << 60) + j5)) {
                    break;
                }
                djoVar = djoVar2;
            }
            if (j2 * drx.n < atomicLongFieldUpdater.get(djoVar2)) {
                ggbVar3.l();
            }
        }
        return null;
    }

    @Override // g.biu
    public final void _bi(CancellationException cancellationException) {
        if (cancellationException == null) {
            cancellationException = new CancellationException("Channel was cancelled");
        }
        aa(cancellationException, true);
    }

    @Override // g.cvu
    public final boolean _cl(Throwable th) {
        return aa(th, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x003c A[LOOP:2: B:17:0x003c->B:39:?, LOOP_START] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x006e A[LOOP:3: B:22:0x006e->B:30:?, LOOP_LABEL: LOOP:3: B:22:0x006e->B:30:?, LOOP_START] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x004c A[LOOP:5: B:40:0x004c->B:48:?, LOOP_START] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x002f A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean aa(Throwable th, boolean z) {
        djo djoVar;
        hy hyVar;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        boolean z2;
        long j;
        long j2;
        long j3;
        Object obj;
        long j4;
        long j5;
        AtomicLongFieldUpdater atomicLongFieldUpdater = r;
        if (z) {
            do {
                j5 = atomicLongFieldUpdater.get(this);
                if (((int) (j5 >> 60)) == 0) {
                    ggb ggbVar = drx.h;
                    djoVar = this;
                }
            } while (!atomicLongFieldUpdater.compareAndSet(djoVar, j5, (j5 & 1152921504606846975L) + (1 << 60)));
            hyVar = drx.j;
            while (true) {
                atomicReferenceFieldUpdater = q;
                if (!atomicReferenceFieldUpdater.compareAndSet(this, hyVar, th)) {
                    z2 = true;
                    break;
                }
                if (atomicReferenceFieldUpdater.get(this) != hyVar) {
                    z2 = false;
                    break;
                }
            }
            if (z) {
                do {
                    j = atomicLongFieldUpdater.get(this);
                    int i = (int) (j >> 60);
                    if (i == 0) {
                        j2 = j & 1152921504606846975L;
                        j3 = 2;
                    } else {
                        if (i != 1) {
                            break;
                        }
                        j2 = j & 1152921504606846975L;
                        j3 = 3;
                    }
                } while (!atomicLongFieldUpdater.compareAndSet(djoVar, j, (j3 << 60) + j2));
            } else {
                do {
                    j4 = atomicLongFieldUpdater.get(this);
                } while (!atomicLongFieldUpdater.compareAndSet(djoVar, j4, (3 << 60) + (j4 & 1152921504606846975L)));
            }
            ah();
            if (z2) {
                loop3: while (true) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = m;
                    obj = atomicReferenceFieldUpdater2.get(this);
                    hy hyVar2 = obj == null ? drx.p : drx.s;
                    while (!atomicReferenceFieldUpdater2.compareAndSet(this, obj, hyVar2)) {
                        if (atomicReferenceFieldUpdater2.get(this) != obj) {
                            break;
                        }
                    }
                }
                if (obj != null) {
                    baf.bc(1, obj);
                    ((and) obj).invoke(ak());
                    return z2;
                }
            }
            return z2;
        }
        djoVar = this;
        hyVar = drx.j;
        while (true) {
            atomicReferenceFieldUpdater = q;
            if (!atomicReferenceFieldUpdater.compareAndSet(this, hyVar, th)) {
            }
        }
        if (z) {
        }
        ah();
        if (z2) {
        }
        return z2;
    }

    public final ggb ab(long j, ggb ggbVar) {
        Object bc;
        long j2;
        ggb ggbVar2 = drx.h;
        bwn bwnVar = bwn.f12322a;
        loop0: while (true) {
            bc = cro.bc(j, ggbVar);
            if (!bff.o(bc)) {
                fu i = bff.i(bc);
                while (true) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = l;
                    fu fuVar = (fu) atomicReferenceFieldUpdater.get(this);
                    if (fuVar.f17418b >= i.f17418b) {
                        break loop0;
                    }
                    if (!i.f()) {
                        break;
                    }
                    while (!atomicReferenceFieldUpdater.compareAndSet(this, fuVar, i)) {
                        if (atomicReferenceFieldUpdater.get(this) != fuVar) {
                            if (i.d()) {
                                i.k();
                            }
                        }
                    }
                    if (fuVar.d()) {
                        fuVar.k();
                    }
                }
            } else {
                break;
            }
        }
        if (bff.o(bc)) {
            ah();
            if (ggbVar.f17418b * drx.n < at()) {
                ggbVar.l();
                return null;
            }
        } else {
            ggb ggbVar3 = (ggb) bff.i(bc);
            long j3 = ggbVar3.f17418b;
            if (!aj() && j <= o.get(this) / drx.n) {
                while (true) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = k;
                    fu fuVar2 = (fu) atomicReferenceFieldUpdater2.get(this);
                    if (fuVar2.f17418b >= j3 || !ggbVar3.f()) {
                        break;
                    }
                    while (!atomicReferenceFieldUpdater2.compareAndSet(this, fuVar2, ggbVar3)) {
                        if (atomicReferenceFieldUpdater2.get(this) != fuVar2) {
                            if (ggbVar3.d()) {
                                ggbVar3.k();
                            }
                        }
                    }
                    if (fuVar2.d()) {
                        fuVar2.k();
                    }
                }
            }
            if (j3 <= j) {
                return ggbVar3;
            }
            long j4 = j3 * drx.n;
            do {
                j2 = n.get(this);
                if (j2 >= j4) {
                    break;
                }
            } while (!n.compareAndSet(this, j2, j4));
            if (j3 * drx.n < at()) {
                ggbVar3.l();
            }
        }
        return null;
    }

    public final Object ac(Object obj, w wVar) {
        gsn gsnVar = new gsn(1, awt.ab(wVar));
        gsnVar.ac();
        gsnVar._z(eg.i(am()));
        Object z = gsnVar.z();
        return z == cxr.COROUTINE_SUSPENDED ? z : dgi.f14134a;
    }

    public final void ad(long j) {
        AtomicLongFieldUpdater atomicLongFieldUpdater;
        djo djoVar = this;
        if (djoVar.aj()) {
            return;
        }
        while (true) {
            atomicLongFieldUpdater = o;
            if (atomicLongFieldUpdater.get(djoVar) > j) {
                break;
            } else {
                djoVar = this;
            }
        }
        int i = drx.q;
        int i2 = 0;
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater2 = p;
            if (i2 < i) {
                long j2 = atomicLongFieldUpdater.get(djoVar);
                if (j2 == (4611686018427387903L & atomicLongFieldUpdater2.get(djoVar)) && j2 == atomicLongFieldUpdater.get(djoVar)) {
                    return;
                } else {
                    i2++;
                }
            } else {
                while (true) {
                    long j3 = atomicLongFieldUpdater2.get(djoVar);
                    if (atomicLongFieldUpdater2.compareAndSet(djoVar, j3, (j3 & 4611686018427387903L) + 4611686018427387904L)) {
                        break;
                    } else {
                        djoVar = this;
                    }
                }
                while (true) {
                    long j4 = atomicLongFieldUpdater.get(djoVar);
                    long j5 = atomicLongFieldUpdater2.get(djoVar);
                    long j6 = j5 & 4611686018427387903L;
                    boolean z = (j5 & 4611686018427387904L) != 0;
                    if (j4 == j6 && j4 == atomicLongFieldUpdater.get(djoVar)) {
                        break;
                    }
                    if (z) {
                        djoVar = this;
                    } else {
                        djoVar = this;
                        atomicLongFieldUpdater2.compareAndSet(djoVar, j5, 4611686018427387904L + j6);
                    }
                }
                while (true) {
                    long j7 = atomicLongFieldUpdater2.get(djoVar);
                    if (atomicLongFieldUpdater2.compareAndSet(djoVar, j7, j7 & 4611686018427387903L)) {
                        return;
                    } else {
                        djoVar = this;
                    }
                }
            }
        }
    }

    public final void ae() {
        Object bc;
        if (aj()) {
            return;
        }
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = k;
        ggb ggbVar = (ggb) atomicReferenceFieldUpdater.get(this);
        loop0: while (true) {
            long andIncrement = o.getAndIncrement(this);
            long j = andIncrement / drx.n;
            if (at() <= andIncrement) {
                if (ggbVar.f17418b < j && ggbVar.m() != null) {
                    ar(j, ggbVar);
                }
                y(this);
                return;
            }
            if (ggbVar.f17418b != j) {
                bwn bwnVar = bwn.f12322a;
                while (true) {
                    bc = cro.bc(j, ggbVar);
                    if (!bff.o(bc)) {
                        fu i = bff.i(bc);
                        while (true) {
                            fu fuVar = (fu) atomicReferenceFieldUpdater.get(this);
                            if (fuVar.f17418b >= i.f17418b) {
                                break;
                            }
                            if (!i.f()) {
                                break;
                            }
                            while (!atomicReferenceFieldUpdater.compareAndSet(this, fuVar, i)) {
                                if (atomicReferenceFieldUpdater.get(this) != fuVar) {
                                    if (i.d()) {
                                        i.k();
                                    }
                                }
                            }
                            if (fuVar.d()) {
                                fuVar.k();
                            }
                        }
                    } else {
                        break;
                    }
                }
                ggb ggbVar2 = null;
                if (bff.o(bc)) {
                    ah();
                    ar(j, ggbVar);
                    y(this);
                } else {
                    ggb ggbVar3 = (ggb) bff.i(bc);
                    long j2 = ggbVar3.f17418b;
                    if (j2 > j) {
                        long j3 = j2 * drx.n;
                        if (o.compareAndSet(this, 1 + andIncrement, j3)) {
                            AtomicLongFieldUpdater atomicLongFieldUpdater = p;
                            if ((atomicLongFieldUpdater.addAndGet(this, j3 - andIncrement) & 4611686018427387904L) != 0) {
                                while ((atomicLongFieldUpdater.get(this) & 4611686018427387904L) != 0) {
                                }
                            }
                        } else {
                            y(this);
                        }
                    } else {
                        ggbVar2 = ggbVar3;
                    }
                }
                if (ggbVar2 == null) {
                    continue;
                } else {
                    ggbVar = ggbVar2;
                }
            }
            int i2 = (int) (andIncrement % drx.n);
            Object p2 = ggbVar.p(i2);
            boolean z = p2 instanceof cjq;
            AtomicLongFieldUpdater atomicLongFieldUpdater2 = n;
            if (!z || andIncrement < atomicLongFieldUpdater2.get(this) || !ggbVar.t(p2, i2, drx.r)) {
                while (true) {
                    Object p3 = ggbVar.p(i2);
                    if (!(p3 instanceof cjq)) {
                        if (p3 != drx.o) {
                            if (p3 != null) {
                                if (p3 == drx.f14687e || p3 == drx.f14683a || p3 == drx.m || p3 == drx.f14684b || p3 == drx.f14688f) {
                                    break loop0;
                                }
                                if (p3 != drx.i) {
                                    throw new IllegalStateException(("Unexpected cell state: " + p3).toString());
                                }
                            } else if (ggbVar.t(p3, i2, drx.f14689g)) {
                                break loop0;
                            }
                        } else {
                            break;
                        }
                    } else if (andIncrement < atomicLongFieldUpdater2.get(this)) {
                        if (ggbVar.t(p3, i2, new axx((cjq) p3))) {
                            break loop0;
                        }
                    } else if (ggbVar.t(p3, i2, drx.r)) {
                        if (x(p3)) {
                            ggbVar.q(i2, drx.f14687e);
                            break;
                        } else {
                            ggbVar.q(i2, drx.o);
                            ggbVar.c();
                        }
                    }
                }
            } else if (x(p2)) {
                ggbVar.q(i2, drx.f14687e);
                break;
            } else {
                ggbVar.q(i2, drx.o);
                ggbVar.c();
                y(this);
            }
        }
        y(this);
    }

    public final void af(cjq cjqVar, boolean z) {
        Throwable am;
        if (cjqVar instanceof anq) {
            bdp bdpVar = (bdp) cjqVar;
            if (z) {
                am = ak();
                if (am == null) {
                    am = new gcb("Channel was closed");
                }
            } else {
                am = am();
            }
            bdpVar._z(eg.i(am));
            return;
        }
        if (cjqVar instanceof bwc) {
            ((bwc) cjqVar).f12303a._z(new clw(new buf(ak())));
            return;
        }
        if (!(cjqVar instanceof blg)) {
            throw new IllegalStateException(("Unexpected waiter: " + cjqVar).toString());
        }
        blg blgVar = (blg) cjqVar;
        gsn gsnVar = blgVar.f11784c;
        bff.d(gsnVar);
        blgVar.f11784c = null;
        blgVar.f11783b = drx.f14688f;
        Throwable ak = blgVar.f11782a.ak();
        if (ak == null) {
            gsnVar._z(Boolean.FALSE);
        } else {
            gsnVar._z(eg.i(ak));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x008e, code lost:
    
        r1 = (g.ggb) ((g.aym) g.aym.j.get(r1));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final ggb ag(long j) {
        Object obj;
        long j2;
        Object obj2 = k.get(this);
        ggb ggbVar = (ggb) s.get(this);
        if (ggbVar.f17418b > ((ggb) obj2).f17418b) {
            obj2 = ggbVar;
        }
        ggb ggbVar2 = (ggb) l.get(this);
        if (ggbVar2.f17418b > ((ggb) obj2).f17418b) {
            obj2 = ggbVar2;
        }
        aym aymVar = (aym) obj2;
        loop0: while (true) {
            aymVar.getClass();
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = aym.i;
            Object obj3 = atomicReferenceFieldUpdater.get(aymVar);
            hy hyVar = cro.o;
            obj = null;
            if (obj3 == hyVar) {
                break;
            }
            aym aymVar2 = (aym) obj3;
            if (aymVar2 == null) {
                while (!atomicReferenceFieldUpdater.compareAndSet(aymVar, null, hyVar)) {
                    if (atomicReferenceFieldUpdater.get(aymVar) != null) {
                        break;
                    }
                }
                break loop0;
            }
            aymVar = aymVar2;
        }
        ggb ggbVar3 = (ggb) aymVar;
        if (c()) {
            ggb ggbVar4 = ggbVar3;
            loop2: do {
                int i = drx.n - 1;
                while (true) {
                    if (-1 >= i) {
                        break;
                    }
                    j2 = (ggbVar4.f17418b * drx.n) + i;
                    if (j2 < n.get(this)) {
                        break loop2;
                    }
                    while (true) {
                        Object p2 = ggbVar4.p(i);
                        if (p2 != null && p2 != drx.f14689g) {
                            if (p2 == drx.f14687e) {
                                break loop2;
                            }
                        } else {
                            if (ggbVar4.t(p2, i, drx.f14688f)) {
                                ggbVar4.c();
                                break;
                            }
                        }
                    }
                    i--;
                }
            } while (ggbVar4 != null);
            j2 = -1;
            if (j2 != -1) {
                al(j2);
            }
        }
        loop5: for (ggb ggbVar5 = ggbVar3; ggbVar5 != null; ggbVar5 = (ggb) ((aym) aym.j.get(ggbVar5))) {
            for (int i2 = drx.n - 1; -1 < i2; i2--) {
                if ((ggbVar5.f17418b * drx.n) + i2 < j) {
                    break loop5;
                }
                while (true) {
                    Object p3 = ggbVar5.p(i2);
                    if (p3 != null && p3 != drx.f14689g) {
                        if (!(p3 instanceof axx)) {
                            if (!(p3 instanceof cjq)) {
                                break;
                            }
                            if (ggbVar5.t(p3, i2, drx.f14688f)) {
                                obj = buj.bc(obj, p3);
                                ggbVar5.r(i2, true);
                                break;
                            }
                        } else {
                            if (ggbVar5.t(p3, i2, drx.f14688f)) {
                                obj = buj.bc(obj, ((axx) p3).f11042a);
                                ggbVar5.r(i2, true);
                                break;
                            }
                        }
                    } else {
                        if (ggbVar5.t(p3, i2, drx.f14688f)) {
                            ggbVar5.c();
                            break;
                        }
                    }
                }
            }
        }
        if (obj != null) {
            if (!(obj instanceof ArrayList)) {
                af((cjq) obj, true);
                return ggbVar3;
            }
            ArrayList arrayList = (ArrayList) obj;
            for (int size = arrayList.size() - 1; -1 < size; size--) {
                af((cjq) arrayList.get(size), true);
            }
        }
        return ggbVar3;
    }

    public final boolean ah() {
        return ao(r.get(this), false);
    }

    public final boolean ai(Object obj, Object obj2) {
        if (obj instanceof bwc) {
            bff.ag(obj, "null cannot be cast to non-null type kotlinx.coroutines.channels.ReceiveCatching<E of kotlinx.coroutines.channels.BufferedChannel>");
            return drx.t(((bwc) obj).f12303a, new clw(obj2), null);
        }
        if (!(obj instanceof blg)) {
            if (obj instanceof anq) {
                bff.ag(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<E of kotlinx.coroutines.channels.BufferedChannel>");
                return drx.t((anq) obj, obj2, null);
            }
            throw new IllegalStateException(("Unexpected receiver type: " + obj).toString());
        }
        bff.ag(obj, "null cannot be cast to non-null type kotlinx.coroutines.channels.BufferedChannel.BufferedChannelIterator<E of kotlinx.coroutines.channels.BufferedChannel>");
        blg blgVar = (blg) obj;
        gsn gsnVar = blgVar.f11784c;
        bff.d(gsnVar);
        blgVar.f11784c = null;
        blgVar.f11783b = obj2;
        return drx.t(gsnVar, Boolean.TRUE, null);
    }

    public final boolean aj() {
        long j = o.get(this);
        return j == 0 || j == Long.MAX_VALUE;
    }

    public final Throwable ak() {
        return (Throwable) q.get(this);
    }

    public final void al(long j) {
        ggb ggbVar = (ggb) l.get(this);
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = n;
            long j2 = atomicLongFieldUpdater.get(this);
            if (j < Math.max(this.t + j2, o.get(this))) {
                return;
            }
            if (atomicLongFieldUpdater.compareAndSet(this, j2, 1 + j2)) {
                long j3 = drx.n;
                long j4 = j2 / j3;
                int i = (int) (j2 % j3);
                if (ggbVar.f17418b != j4) {
                    ggb ab2 = ab(j4, ggbVar);
                    if (ab2 != null) {
                        ggbVar = ab2;
                    }
                }
                ggb ggbVar2 = ggbVar;
                if (aq(ggbVar2, i, j2, null) != drx.f14685c) {
                    ggbVar2.l();
                } else if (j2 < at()) {
                    ggbVar2.l();
                }
                ggbVar = ggbVar2;
            }
        }
    }

    public final Throwable am() {
        Throwable ak = ak();
        return ak == null ? new aqb("Channel was closed") : ak;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0029  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object an(ggb ggbVar, int i, long j, w wVar) {
        it itVar;
        int i2;
        clw clwVar;
        int i3;
        ggb ggbVar2;
        if (wVar instanceof it) {
            itVar = (it) wVar;
            int i4 = itVar.label;
            if ((i4 & Integer.MIN_VALUE) != 0) {
                itVar.label = i4 - Integer.MIN_VALUE;
                Object obj = itVar.result;
                cxr cxrVar = cxr.COROUTINE_SUSPENDED;
                i2 = itVar.label;
                if (i2 != 0) {
                    eg.k(obj);
                    itVar.L$0 = this;
                    itVar.L$1 = ggbVar;
                    itVar.I$0 = i;
                    itVar.J$0 = j;
                    itVar.label = 1;
                    gsn bb = gs.bb(awt.ab(itVar));
                    try {
                        bwc bwcVar = new bwc(bb);
                        Object aq = aq(ggbVar, i, j, bwcVar);
                        if (aq == drx.l) {
                            bwcVar.d(ggbVar, i);
                        } else {
                            if (aq == drx.f14685c) {
                                if (j < at()) {
                                    ggbVar.l();
                                }
                                ggb ggbVar3 = (ggb) l.get(this);
                                while (true) {
                                    if (ao(r.get(this), true)) {
                                        bb._z(new clw(new buf(ak())));
                                        break;
                                    }
                                    long andIncrement = n.getAndIncrement(this);
                                    long j2 = drx.n;
                                    long j3 = andIncrement / j2;
                                    int i5 = (int) (andIncrement % j2);
                                    if (ggbVar3.f17418b != j3) {
                                        ggbVar2 = ab(j3, ggbVar3);
                                        if (ggbVar2 == null) {
                                        }
                                    } else {
                                        ggbVar2 = ggbVar3;
                                    }
                                    Object aq2 = aq(ggbVar2, i5, andIncrement, bwcVar);
                                    if (aq2 == drx.l) {
                                        bwcVar.d(ggbVar2, i5);
                                        break;
                                    }
                                    if (aq2 == drx.f14685c) {
                                        if (andIncrement < at()) {
                                            ggbVar2.l();
                                        }
                                        ggbVar3 = ggbVar2;
                                    } else {
                                        if (aq2 == drx.f14686d) {
                                            throw new IllegalStateException("unexpected");
                                        }
                                        ggbVar2.l();
                                        clwVar = new clw(aq2);
                                        i3 = bb.k;
                                    }
                                }
                            } else {
                                ggbVar.l();
                                clwVar = new clw(aq);
                                i3 = bb.k;
                            }
                            bb.ae(clwVar, i3, null);
                        }
                        obj = bb.z();
                        if (obj == cxrVar) {
                            return cxrVar;
                        }
                    } catch (Throwable th) {
                        bb.x();
                        throw th;
                    }
                } else {
                    if (i2 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    eg.k(obj);
                }
                return ((clw) obj).f13098b;
            }
        }
        itVar = new it(this, wVar);
        Object obj2 = itVar.result;
        cxr cxrVar2 = cxr.COROUTINE_SUSPENDED;
        i2 = itVar.label;
        if (i2 != 0) {
        }
        return ((clw) obj2).f13098b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:84:0x00a4, code lost:
    
        r1 = (g.ggb) ((g.aym) g.aym.j.get(r1));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean ao(long j, boolean z) {
        int i = (int) (j >> 60);
        if (i != 0 && i != 1) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = n;
            if (i == 2) {
                ag(1152921504606846975L & j);
                if (z) {
                    while (true) {
                        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = l;
                        ggb ggbVar = (ggb) atomicReferenceFieldUpdater.get(this);
                        long j2 = atomicLongFieldUpdater.get(this);
                        if (at() <= j2) {
                            break;
                        }
                        long j3 = drx.n;
                        long j4 = j2 / j3;
                        if (ggbVar.f17418b != j4 && (ggbVar = ab(j4, ggbVar)) == null) {
                            if (((ggb) atomicReferenceFieldUpdater.get(this)).f17418b < j4) {
                                break;
                            }
                        } else {
                            ggbVar.l();
                            int i2 = (int) (j2 % j3);
                            while (true) {
                                Object p2 = ggbVar.p(i2);
                                if (p2 == null || p2 == drx.f14689g) {
                                    if (ggbVar.t(p2, i2, drx.f14683a)) {
                                        ae();
                                        break;
                                    }
                                } else {
                                    if (p2 == drx.f14687e) {
                                        break;
                                    }
                                    if (p2 != drx.o) {
                                        if (p2 != drx.f14688f) {
                                            if (p2 != drx.m) {
                                                if (p2 != drx.f14683a) {
                                                    if (p2 == drx.r) {
                                                        break;
                                                    }
                                                    if (p2 != drx.i && j2 == atomicLongFieldUpdater.get(this)) {
                                                        break;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            n.compareAndSet(this, j2, j2 + 1);
                        }
                    }
                }
            } else {
                if (i != 3) {
                    throw new IllegalStateException(awf.ac(i, "unexpected close status: ").toString());
                }
                ggb ag = ag(1152921504606846975L & j);
                Object obj = null;
                loop0: do {
                    int i3 = drx.n - 1;
                    while (true) {
                        if (-1 >= i3) {
                            break;
                        }
                        long j5 = (ag.f17418b * drx.n) + i3;
                        while (true) {
                            Object p3 = ag.p(i3);
                            if (p3 == drx.m) {
                                break loop0;
                            }
                            if (p3 == drx.f14687e) {
                                if (j5 < atomicLongFieldUpdater.get(this)) {
                                    break loop0;
                                }
                                if (ag.t(p3, i3, drx.f14688f)) {
                                    ag.s(i3, null);
                                    ag.c();
                                    break;
                                }
                            } else if (p3 != drx.f14689g && p3 != null) {
                                if (!(p3 instanceof cjq) && !(p3 instanceof axx)) {
                                    hy hyVar = drx.r;
                                    if (p3 == hyVar || p3 == drx.i) {
                                        break loop0;
                                    }
                                    if (p3 != hyVar) {
                                        break;
                                    }
                                } else {
                                    if (j5 < atomicLongFieldUpdater.get(this)) {
                                        break loop0;
                                    }
                                    cjq cjqVar = p3 instanceof axx ? ((axx) p3).f11042a : (cjq) p3;
                                    if (ag.t(p3, i3, drx.f14688f)) {
                                        obj = buj.bc(obj, cjqVar);
                                        ag.s(i3, null);
                                        ag.c();
                                        break;
                                    }
                                }
                            } else if (ag.t(p3, i3, drx.f14688f)) {
                                ag.c();
                                break;
                            }
                        }
                        i3--;
                    }
                } while (ag != null);
                if (obj != null) {
                    if (obj instanceof ArrayList) {
                        ArrayList arrayList = (ArrayList) obj;
                        for (int size = arrayList.size() - 1; -1 < size; size--) {
                            af((cjq) arrayList.get(size), false);
                        }
                    } else {
                        af((cjq) obj, false);
                    }
                }
            }
            return true;
        }
        return false;
    }

    public final int ap(ggb ggbVar, int i, Object obj, long j, Object obj2, boolean z) {
        while (true) {
            Object p2 = ggbVar.p(i);
            if (p2 == null) {
                if (!as(j) || z) {
                    if (z) {
                        if (ggbVar.t(null, i, drx.o)) {
                            ggbVar.c();
                            return 4;
                        }
                    } else {
                        if (obj2 == null) {
                            return 3;
                        }
                        if (ggbVar.t(null, i, obj2)) {
                            return 2;
                        }
                    }
                } else if (ggbVar.t(null, i, drx.f14687e)) {
                    break;
                }
            } else {
                if (p2 != drx.f14689g) {
                    hy hyVar = drx.f14684b;
                    if (p2 == hyVar) {
                        ggbVar.s(i, null);
                        return 5;
                    }
                    if (p2 == drx.f14683a) {
                        ggbVar.s(i, null);
                        return 5;
                    }
                    if (p2 == drx.f14688f) {
                        ggbVar.s(i, null);
                        ah();
                        return 4;
                    }
                    ggbVar.s(i, null);
                    if (p2 instanceof axx) {
                        p2 = ((axx) p2).f11042a;
                    }
                    if (ai(p2, obj)) {
                        ggbVar.q(i, drx.m);
                        return 0;
                    }
                    if (ggbVar.o.getAndSet((i * 2) + 1, hyVar) != hyVar) {
                        ggbVar.r(i, true);
                    }
                    return 5;
                }
                if (ggbVar.t(p2, i, drx.f14687e)) {
                    break;
                }
            }
        }
        return 1;
    }

    public final Object aq(ggb ggbVar, int i, long j, Object obj) {
        Object p2 = ggbVar.p(i);
        AtomicReferenceArray atomicReferenceArray = ggbVar.o;
        AtomicLongFieldUpdater atomicLongFieldUpdater = r;
        if (p2 == null) {
            if (j >= (atomicLongFieldUpdater.get(this) & 1152921504606846975L)) {
                if (obj == null) {
                    return drx.f14686d;
                }
                if (ggbVar.t(p2, i, obj)) {
                    ae();
                    return drx.l;
                }
            }
        } else if (p2 == drx.f14687e && ggbVar.t(p2, i, drx.m)) {
            ae();
            Object obj2 = atomicReferenceArray.get(i * 2);
            ggbVar.s(i, null);
            return obj2;
        }
        while (true) {
            Object p3 = ggbVar.p(i);
            if (p3 == null || p3 == drx.f14689g) {
                if (j < (atomicLongFieldUpdater.get(this) & 1152921504606846975L)) {
                    if (ggbVar.t(p3, i, drx.f14683a)) {
                        ae();
                        return drx.f14685c;
                    }
                } else {
                    if (obj == null) {
                        return drx.f14686d;
                    }
                    if (ggbVar.t(p3, i, obj)) {
                        ae();
                        return drx.l;
                    }
                }
            } else {
                if (p3 != drx.f14687e) {
                    hy hyVar = drx.o;
                    if (p3 != hyVar && p3 != drx.f14683a) {
                        if (p3 == drx.f14688f) {
                            ae();
                            return drx.f14685c;
                        }
                        if (p3 != drx.r && ggbVar.t(p3, i, drx.i)) {
                            boolean z = p3 instanceof axx;
                            if (z) {
                                p3 = ((axx) p3).f11042a;
                            }
                            if (x(p3)) {
                                ggbVar.q(i, drx.m);
                                ae();
                                Object obj3 = atomicReferenceArray.get(i * 2);
                                ggbVar.s(i, null);
                                return obj3;
                            }
                            ggbVar.q(i, hyVar);
                            ggbVar.c();
                            if (z) {
                                ae();
                            }
                            return drx.f14685c;
                        }
                    }
                    return drx.f14685c;
                }
                if (ggbVar.t(p3, i, drx.m)) {
                    ae();
                    Object obj4 = atomicReferenceArray.get(i * 2);
                    ggbVar.s(i, null);
                    return obj4;
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x0011, code lost:
    
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void ar(long j, ggb ggbVar) {
        ggb ggbVar2;
        ggb ggbVar3;
        while (ggbVar.f17418b < j && (ggbVar3 = (ggb) ggbVar.m()) != null) {
            ggbVar = ggbVar3;
        }
        while (true) {
            if (!ggbVar.g() || (ggbVar2 = (ggb) ggbVar.m()) == null) {
                while (true) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = k;
                    fu fuVar = (fu) atomicReferenceFieldUpdater.get(this);
                    if (fuVar.f17418b >= ggbVar.f17418b) {
                        return;
                    }
                    if (!ggbVar.f()) {
                        break;
                    }
                    while (!atomicReferenceFieldUpdater.compareAndSet(this, fuVar, ggbVar)) {
                        if (atomicReferenceFieldUpdater.get(this) != fuVar) {
                            if (ggbVar.d()) {
                                ggbVar.k();
                            }
                        }
                    }
                    if (fuVar.d()) {
                        fuVar.k();
                        return;
                    }
                    return;
                }
            }
            ggbVar = ggbVar2;
        }
    }

    public final boolean as(long j) {
        return j < o.get(this) || j < n.get(this) + ((long) this.t);
    }

    public final long at() {
        return r.get(this) & 1152921504606846975L;
    }

    public boolean c() {
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x014f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:55:? A[RETURN, SYNTHETIC] */
    @Override // g.cvu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object d(Object obj, w wVar) {
        Object z;
        cxr cxrVar;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = s;
        ggb ggbVar = (ggb) atomicReferenceFieldUpdater.get(this);
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = r;
            long andIncrement = atomicLongFieldUpdater.getAndIncrement(this);
            long j = andIncrement & 1152921504606846975L;
            boolean ao = ao(andIncrement, false);
            int i = drx.n;
            long j2 = i;
            long j3 = j / j2;
            int i2 = (int) (j % j2);
            long j4 = ggbVar.f17418b;
            dgi dgiVar = dgi.f14134a;
            if (j4 != j3) {
                ggb z2 = z(this, j3, ggbVar);
                if (z2 != null) {
                    ggbVar = z2;
                } else if (ao) {
                    Object ac = ac(obj, wVar);
                    return ac == cxr.COROUTINE_SUSPENDED ? ac : dgiVar;
                }
            }
            int w = w(this, ggbVar, i2, obj, j, null, ao);
            if (w == 0) {
                ggbVar.l();
                return dgiVar;
            }
            if (w == 1) {
                return dgiVar;
            }
            if (w == 2) {
                if (!ao) {
                    return dgiVar;
                }
                ggbVar.c();
                Object ac2 = ac(obj, wVar);
                return ac2 == cxr.COROUTINE_SUSPENDED ? ac2 : dgiVar;
            }
            AtomicLongFieldUpdater atomicLongFieldUpdater2 = n;
            if (w == 3) {
                gsn bb = gs.bb(awt.ab(wVar));
                try {
                    int w2 = w(this, ggbVar, i2, obj, j, bb, false);
                    if (w2 == 0) {
                        ggbVar.l();
                    } else if (w2 != 1) {
                        if (w2 != 2) {
                            if (w2 != 4) {
                                String str = "unexpected";
                                if (w2 != 5) {
                                    throw new IllegalStateException("unexpected");
                                }
                                ggbVar.l();
                                ggb ggbVar2 = (ggb) atomicReferenceFieldUpdater.get(this);
                                while (true) {
                                    long andIncrement2 = atomicLongFieldUpdater.getAndIncrement(this);
                                    long j5 = andIncrement2 & 1152921504606846975L;
                                    boolean ao2 = ao(andIncrement2, false);
                                    int i3 = drx.n;
                                    AtomicLongFieldUpdater atomicLongFieldUpdater3 = atomicLongFieldUpdater;
                                    long j6 = i3;
                                    String str2 = str;
                                    long j7 = j5 / j6;
                                    int i4 = (int) (j5 % j6);
                                    AtomicLongFieldUpdater atomicLongFieldUpdater4 = atomicLongFieldUpdater2;
                                    if (ggbVar2.f17418b != j7) {
                                        ggb z3 = z(this, j7, ggbVar2);
                                        if (z3 != null) {
                                            ggbVar2 = z3;
                                        } else {
                                            if (ao2) {
                                                break;
                                            }
                                            atomicLongFieldUpdater = atomicLongFieldUpdater3;
                                            str = str2;
                                            atomicLongFieldUpdater2 = atomicLongFieldUpdater4;
                                        }
                                    }
                                    ggb ggbVar3 = ggbVar2;
                                    int w3 = w(this, ggbVar3, i4, obj, j5, bb, ao2);
                                    if (w3 == 0) {
                                        ggbVar3.l();
                                        break;
                                    }
                                    if (w3 == 1) {
                                        break;
                                    }
                                    if (w3 != 2) {
                                        if (w3 == 3) {
                                            throw new IllegalStateException(str2);
                                        }
                                        if (w3 != 4) {
                                            if (w3 == 5) {
                                                ggbVar3.l();
                                            }
                                            ggbVar2 = ggbVar3;
                                            atomicLongFieldUpdater = atomicLongFieldUpdater3;
                                            str = str2;
                                            atomicLongFieldUpdater2 = atomicLongFieldUpdater4;
                                        } else if (j5 < atomicLongFieldUpdater4.get(this)) {
                                            ggbVar3.l();
                                        }
                                    } else if (ao2) {
                                        ggbVar3.c();
                                    } else {
                                        bb.d(ggbVar3, i4 + i3);
                                    }
                                }
                            } else if (j < atomicLongFieldUpdater2.get(this)) {
                                ggbVar.l();
                            }
                            v(this, obj, bb);
                        } else {
                            bb.d(ggbVar, i2 + i);
                        }
                        z = bb.z();
                        cxrVar = cxr.COROUTINE_SUSPENDED;
                        if (z != cxrVar) {
                            z = dgiVar;
                        }
                        return z != cxrVar ? z : dgiVar;
                    }
                    bb._z(dgiVar);
                    z = bb.z();
                    cxrVar = cxr.COROUTINE_SUSPENDED;
                    if (z != cxrVar) {
                    }
                    if (z != cxrVar) {
                    }
                } catch (Throwable th) {
                    bb.x();
                    throw th;
                }
            } else {
                if (w == 4) {
                    if (j < atomicLongFieldUpdater2.get(this)) {
                        ggbVar.l();
                    }
                    Object ac3 = ac(obj, wVar);
                    return ac3 == cxr.COROUTINE_SUSPENDED ? ac3 : dgiVar;
                }
                if (w == 5) {
                    ggbVar.l();
                }
            }
        }
    }

    @Override // g.cvu
    public Object e(Object obj) {
        AtomicLongFieldUpdater atomicLongFieldUpdater = r;
        boolean z = false;
        long j = 1152921504606846975L;
        boolean z2 = ao(atomicLongFieldUpdater.get(this), false) ? false : !as(r1 & 1152921504606846975L);
        dmq dmqVar = clw.f13097a;
        if (z2) {
            return dmqVar;
        }
        gtx gtxVar = drx.o;
        ggb ggbVar = (ggb) s.get(this);
        while (true) {
            long andIncrement = atomicLongFieldUpdater.getAndIncrement(this);
            long j2 = andIncrement & j;
            boolean ao = ao(andIncrement, z);
            int i = drx.n;
            long j3 = i;
            long j4 = j2 / j3;
            int i2 = (int) (j2 % j3);
            if (ggbVar.f17418b != j4) {
                ggb z3 = z(this, j4, ggbVar);
                if (z3 != null) {
                    ggbVar = z3;
                } else {
                    if (ao) {
                        return new buf(am());
                    }
                    z = false;
                    j = 1152921504606846975L;
                }
            }
            int w = w(this, ggbVar, i2, obj, j2, gtxVar, ao);
            dgi dgiVar = dgi.f14134a;
            if (w == 0) {
                ggbVar.l();
                return dgiVar;
            }
            if (w == 1) {
                return dgiVar;
            }
            if (w == 2) {
                if (ao) {
                    ggbVar.c();
                    return new buf(am());
                }
                cjq cjqVar = gtxVar instanceof cjq ? (cjq) gtxVar : null;
                if (cjqVar != null) {
                    cjqVar.d(ggbVar, i2 + i);
                }
                ggbVar.c();
                return dmqVar;
            }
            if (w == 3) {
                throw new IllegalStateException("unexpected");
            }
            if (w == 4) {
                if (j2 < n.get(this)) {
                    ggbVar.l();
                }
                return new buf(am());
            }
            if (w == 5) {
                ggbVar.l();
            }
            z = false;
            j = 1152921504606846975L;
        }
    }

    @Override // g.biu
    public final Object g(ps psVar) {
        return u(this, psVar);
    }

    @Override // g.biu
    public final Object h() {
        ggb ggbVar;
        AtomicLongFieldUpdater atomicLongFieldUpdater = n;
        long j = atomicLongFieldUpdater.get(this);
        AtomicLongFieldUpdater atomicLongFieldUpdater2 = r;
        long j2 = atomicLongFieldUpdater2.get(this);
        if (ao(j2, true)) {
            return new buf(ak());
        }
        long j3 = j2 & 1152921504606846975L;
        dmq dmqVar = clw.f13097a;
        if (j >= j3) {
            return dmqVar;
        }
        Object obj = drx.f14684b;
        ggb ggbVar2 = (ggb) l.get(this);
        while (!ao(atomicLongFieldUpdater2.get(this), true)) {
            long andIncrement = atomicLongFieldUpdater.getAndIncrement(this);
            long j4 = drx.n;
            long j5 = andIncrement / j4;
            int i = (int) (andIncrement % j4);
            if (ggbVar2.f17418b != j5) {
                ggb ab2 = ab(j5, ggbVar2);
                if (ab2 == null) {
                    continue;
                } else {
                    ggbVar = ab2;
                }
            } else {
                ggbVar = ggbVar2;
            }
            Object aq = aq(ggbVar, i, andIncrement, obj);
            ggb ggbVar3 = ggbVar;
            if (aq == drx.l) {
                cjq cjqVar = obj instanceof cjq ? (cjq) obj : null;
                if (cjqVar != null) {
                    cjqVar.d(ggbVar3, i);
                }
                ad(andIncrement);
                ggbVar3.c();
                return dmqVar;
            }
            if (aq != drx.f14685c) {
                if (aq == drx.f14686d) {
                    throw new IllegalStateException("unexpected");
                }
                ggbVar3.l();
                return aq;
            }
            if (andIncrement < at()) {
                ggbVar3.l();
            }
            ggbVar2 = ggbVar3;
        }
        return new buf(ak());
    }

    @Override // g.biu
    public final blg iterator() {
        return new blg(this);
    }

    /* JADX WARN: Code restructure failed: missing block: B:97:0x01aa, code lost:
    
        r3 = (g.ggb) r3.m();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final String toString() {
        String obj;
        StringBuilder sb = new StringBuilder();
        int i = (int) (r.get(this) >> 60);
        if (i == 2) {
            sb.append("closed,");
        } else if (i == 3) {
            sb.append("cancelled,");
        }
        sb.append("capacity=" + this.t + ',');
        sb.append("data=[");
        List e2 = grj.e(l.get(this), s.get(this), k.get(this));
        ArrayList arrayList = new ArrayList();
        for (Object obj2 : e2) {
            if (((ggb) obj2) != drx.h) {
                arrayList.add(obj2);
            }
        }
        Iterator it = arrayList.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        Object next = it.next();
        if (it.hasNext()) {
            long j = ((ggb) next).f17418b;
            do {
                Object next2 = it.next();
                long j2 = ((ggb) next2).f17418b;
                if (j > j2) {
                    next = next2;
                    j = j2;
                }
            } while (it.hasNext());
        }
        ggb ggbVar = (ggb) next;
        long j3 = n.get(this);
        long at = at();
        loop2: do {
            int i2 = drx.n;
            int i3 = 0;
            while (true) {
                if (i3 >= i2) {
                    break;
                }
                long j4 = (ggbVar.f17418b * drx.n) + i3;
                if (j4 >= at && j4 >= j3) {
                    break loop2;
                }
                Object p2 = ggbVar.p(i3);
                Object obj3 = ggbVar.o.get(i3 * 2);
                if (p2 instanceof anq) {
                    obj = (j4 >= j3 || j4 < at) ? (j4 >= at || j4 < j3) ? "cont" : "send" : "receive";
                } else if (p2 instanceof bwc) {
                    obj = "receiveCatching";
                } else if (p2 instanceof axx) {
                    obj = "EB(" + p2 + ')';
                } else if (bff.n(p2, drx.i) ? true : bff.n(p2, drx.r)) {
                    obj = "resuming_sender";
                } else if (p2 == null ? true : p2.equals(drx.f14689g) ? true : bff.n(p2, drx.m) ? true : bff.n(p2, drx.f14683a) ? true : bff.n(p2, drx.f14684b) ? true : bff.n(p2, drx.o) ? true : bff.n(p2, drx.f14688f)) {
                    i3++;
                } else {
                    obj = p2.toString();
                }
                if (obj3 != null) {
                    sb.append("(" + obj + ',' + obj3 + "),");
                } else {
                    sb.append(obj + ',');
                }
                i3++;
            }
        } while (ggbVar != null);
        if (sb.length() == 0) {
            throw new NoSuchElementException("Char sequence is empty.");
        }
        if (sb.charAt(dcv.bl(sb)) == ',') {
            bff.e(sb.deleteCharAt(sb.length() - 1), "deleteCharAt(...)");
        }
        sb.append("]");
        return sb.toString();
    }
}

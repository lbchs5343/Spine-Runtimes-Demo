package g;

import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes.dex */
public class fyw implements dta, blz {
    public static final /* synthetic */ AtomicReferenceFieldUpdater y = AtomicReferenceFieldUpdater.newUpdater(fyw.class, Object.class, "_state$volatile");
    public static final /* synthetic */ AtomicReferenceFieldUpdater z = AtomicReferenceFieldUpdater.newUpdater(fyw.class, Object.class, "_parentHandle$volatile");
    private volatile /* synthetic */ Object _parentHandle$volatile;
    private volatile /* synthetic */ Object _state$volatile;

    public fyw(boolean z2) {
        this._state$volatile = z2 ? dzm.f15130e : dzm.r;
    }

    public static czr aa(bfw bfwVar) {
        while (bfwVar._bk()) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = bfw.i;
            bfw k = bfwVar.k();
            if (k == null) {
                Object obj = atomicReferenceFieldUpdater.get(bfwVar);
                while (true) {
                    bfwVar = (bfw) obj;
                    if (!bfwVar._bk()) {
                        break;
                    }
                    obj = atomicReferenceFieldUpdater.get(bfwVar);
                }
            } else {
                bfwVar = k;
            }
        }
        while (true) {
            bfwVar = bfwVar.l();
            if (!bfwVar._bk()) {
                if (bfwVar instanceof czr) {
                    return (czr) bfwVar;
                }
                if (bfwVar instanceof amv) {
                    return null;
                }
            }
        }
    }

    public static String ab(Object obj) {
        if (!(obj instanceof etn)) {
            return obj instanceof gpe ? ((gpe) obj).a() ? "Active" : "New" : obj instanceof wh ? "Cancelled" : "Completed";
        }
        etn etnVar = (etn) obj;
        return etnVar.h() ? "Cancelling" : etnVar.j() ? "Completing" : "Active";
    }

    public boolean _aa(Throwable th) {
        if (th instanceof CancellationException) {
            return true;
        }
        return ae(th) && _cm();
    }

    @Override // g.dta, g.biu
    public void _bi(CancellationException cancellationException) {
        if (cancellationException == null) {
            cancellationException = new gib(u(), null, this);
        }
        w(cancellationException);
    }

    public boolean _cm() {
        return true;
    }

    @Override // g.boj
    public final boj _w(efi efiVar) {
        return bfc.t(this, efiVar);
    }

    @Override // g.boj
    public final erz _x(efi efiVar) {
        bff.p(efiVar, "key");
        if (bff.n(dwm.o, efiVar)) {
            return this;
        }
        return null;
    }

    @Override // g.boj
    public final boj _y(boj bojVar) {
        bff.p(bojVar, "context");
        return bojVar == cgq.f12850a ? this : (boj) bojVar.c(this, new ctu(1));
    }

    public final boolean ac() {
        Object ah = ah();
        if (ah instanceof wh) {
            return true;
        }
        return (ah instanceof etn) && ((etn) ah).h();
    }

    public final void ad(amv amvVar, Throwable th) {
        Object j = amvVar.j();
        bff.ag(j, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
        dwb dwbVar = null;
        for (bfw bfwVar = (bfw) j; !bfwVar.equals(amvVar); bfwVar = bfwVar.l()) {
            if (bfwVar instanceof ccf) {
                aov aovVar = (aov) bfwVar;
                try {
                    aovVar.b(th);
                } catch (Throwable th2) {
                    if (dwbVar != null) {
                        cux.ag(dwbVar, th2);
                    } else {
                        dwbVar = new dwb("Exception in completion handler " + aovVar + " for " + this, th2);
                    }
                }
            }
        }
        if (dwbVar != null) {
            p(dwbVar);
        }
        am(th);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0034, code lost:
    
        if (r0 == g.dzm.q) goto L75;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean ae(Object obj) {
        hy hyVar;
        Object obj2 = dzm.o;
        if (this instanceof fhq) {
            do {
                Object ah = ah();
                if (!(ah instanceof gpe) || ((ah instanceof etn) && ((etn) ah).j())) {
                    obj2 = dzm.o;
                    break;
                }
                obj2 = af(ah, new wh(aj(obj), false));
            } while (obj2 == dzm.h);
        }
        if (obj2 == dzm.o) {
            Throwable th = null;
            loop1: while (true) {
                Object ah2 = ah();
                if (!(ah2 instanceof etn)) {
                    if (!(ah2 instanceof gpe)) {
                        hyVar = dzm.j;
                        break;
                    }
                    if (th == null) {
                        th = aj(obj);
                    }
                    gpe gpeVar = (gpe) ah2;
                    if (gpeVar.a()) {
                        amv an = an(gpeVar);
                        if (an != null) {
                            etn etnVar = new etn(an, th);
                            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = y;
                            while (!atomicReferenceFieldUpdater.compareAndSet(this, gpeVar, etnVar)) {
                                if (atomicReferenceFieldUpdater.get(this) != gpeVar) {
                                    break;
                                }
                            }
                            ad(an, th);
                            hyVar = dzm.o;
                            break loop1;
                        }
                        continue;
                    } else {
                        Object af = af(ah2, new wh(th, false));
                        if (af == dzm.o) {
                            throw new IllegalStateException(("Cannot happen in " + ah2).toString());
                        }
                        if (af != dzm.h) {
                            obj2 = af;
                            break;
                        }
                    }
                } else {
                    synchronized (ah2) {
                        etn etnVar2 = (etn) ah2;
                        etnVar2.getClass();
                        if (etn.f16149d.get(etnVar2) == dzm.l) {
                            hyVar = dzm.j;
                        } else {
                            boolean h = ((etn) ah2).h();
                            if (th == null) {
                                th = aj(obj);
                            }
                            ((etn) ah2).i(th);
                            Throwable g2 = h ? null : ((etn) ah2).g();
                            if (g2 != null) {
                                ad(((etn) ah2).f16151f, g2);
                            }
                            hyVar = dzm.o;
                        }
                    }
                }
            }
            obj2 = hyVar;
        }
        if (obj2 != dzm.o && obj2 != dzm.q) {
            if (obj2 == dzm.j) {
                return false;
            }
            m(obj2);
            return true;
        }
        return true;
    }

    public final Object af(Object obj, Object obj2) {
        if (!(obj instanceof gpe)) {
            return dzm.o;
        }
        if (((obj instanceof fvn) || (obj instanceof aov)) && !(obj instanceof czr) && !(obj2 instanceof wh)) {
            gpe gpeVar = (gpe) obj;
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = y;
            Object xkVar = obj2 instanceof gpe ? new xk((gpe) obj2) : obj2;
            while (!atomicReferenceFieldUpdater.compareAndSet(this, gpeVar, xkVar)) {
                if (atomicReferenceFieldUpdater.get(this) != gpeVar) {
                    return dzm.h;
                }
            }
            q(obj2);
            ao(gpeVar, obj2);
            return obj2;
        }
        gpe gpeVar2 = (gpe) obj;
        amv an = an(gpeVar2);
        if (an == null) {
            return dzm.h;
        }
        czr czrVar = null;
        etn etnVar = gpeVar2 instanceof etn ? (etn) gpeVar2 : null;
        if (etnVar == null) {
            etnVar = new etn(an, null);
        }
        synchronized (etnVar) {
            if (etnVar.j()) {
                return dzm.o;
            }
            etn.f16150e.set(etnVar, 1);
            if (etnVar != gpeVar2) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = y;
                while (!atomicReferenceFieldUpdater2.compareAndSet(this, gpeVar2, etnVar)) {
                    if (atomicReferenceFieldUpdater2.get(this) != gpeVar2) {
                        return dzm.h;
                    }
                }
            }
            boolean h = etnVar.h();
            wh whVar = obj2 instanceof wh ? (wh) obj2 : null;
            if (whVar != null) {
                etnVar.i(whVar.f20211c);
            }
            Throwable g2 = etnVar.g();
            if (h) {
                g2 = null;
            }
            if (g2 != null) {
                ad(an, g2);
            }
            czr czrVar2 = gpeVar2 instanceof czr ? (czr) gpeVar2 : null;
            if (czrVar2 == null) {
                amv c2 = gpeVar2.c();
                if (c2 != null) {
                    czrVar = aa(c2);
                }
            } else {
                czrVar = czrVar2;
            }
            if (czrVar != null) {
                while (kj.m(czrVar.n, false, new ggy(this, etnVar, czrVar, obj2), 1) == asb.f10739a) {
                    czrVar = aa(czrVar);
                    if (czrVar == null) {
                    }
                }
                return dzm.q;
            }
            return ak(etnVar, obj2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x00c7, code lost:
    
        return r1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final edw ag(boolean z2, boolean z3, era eraVar) {
        aov aovVar;
        Throwable th;
        if (z2) {
            aovVar = eraVar instanceof ccf ? (ccf) eraVar : null;
            if (aovVar == null) {
                aovVar = new dnj(eraVar);
            }
        } else {
            aovVar = eraVar instanceof aov ? (aov) eraVar : null;
            if (aovVar == null) {
                aovVar = new ctq(eraVar);
            }
        }
        aovVar.f10590d = this;
        loop0: while (true) {
            Object ah = ah();
            if (ah instanceof fvn) {
                fvn fvnVar = (fvn) ah;
                if (fvnVar.f17483b) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = y;
                    while (!atomicReferenceFieldUpdater.compareAndSet(this, ah, aovVar)) {
                        if (atomicReferenceFieldUpdater.get(this) != ah) {
                            break;
                        }
                    }
                    break loop0;
                }
                amv amvVar = new amv();
                gpe bmyVar = fvnVar.f17483b ? amvVar : new bmy(amvVar);
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = y;
                while (!atomicReferenceFieldUpdater2.compareAndSet(this, fvnVar, bmyVar) && atomicReferenceFieldUpdater2.get(this) == fvnVar) {
                }
            } else {
                if (!(ah instanceof gpe)) {
                    if (z3) {
                        wh whVar = ah instanceof wh ? (wh) ah : null;
                        eraVar.b(whVar != null ? whVar.f20211c : null);
                    }
                    return asb.f10739a;
                }
                amv c2 = ((gpe) ah).c();
                if (c2 == null) {
                    bff.ag(ah, "null cannot be cast to non-null type kotlinx.coroutines.JobNode");
                    ap((aov) ah);
                } else {
                    edw edwVar = asb.f10739a;
                    if (z2 && (ah instanceof etn)) {
                        synchronized (ah) {
                            try {
                                th = ((etn) ah).g();
                                if (th != null) {
                                    if ((eraVar instanceof czr) && !((etn) ah).j()) {
                                    }
                                }
                                if (ai((gpe) ah, c2, aovVar)) {
                                    if (th == null) {
                                        return aovVar;
                                    }
                                    edwVar = aovVar;
                                }
                            } catch (Throwable th2) {
                                throw th2;
                            }
                        }
                    } else {
                        th = null;
                    }
                    if (th != null) {
                        if (z3) {
                            eraVar.b(th);
                        }
                        return edwVar;
                    }
                    if (ai((gpe) ah, c2, aovVar)) {
                        break;
                    }
                }
            }
        }
    }

    public final Object ah() {
        while (true) {
            Object obj = y.get(this);
            if (!(obj instanceof dpu)) {
                return obj;
            }
            ((dpu) obj).h(this);
        }
    }

    public final boolean ai(gpe gpeVar, amv amvVar, aov aovVar) {
        char c2;
        hh hhVar = new hh(aovVar, this, gpeVar);
        do {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = bfw.i;
            bfw k = amvVar.k();
            if (k == null) {
                Object obj = atomicReferenceFieldUpdater.get(amvVar);
                while (true) {
                    k = (bfw) obj;
                    if (!k._bk()) {
                        break;
                    }
                    obj = atomicReferenceFieldUpdater.get(k);
                }
            }
            bfw.i.set(aovVar, k);
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = bfw.h;
            atomicReferenceFieldUpdater2.set(aovVar, amvVar);
            hhVar.f19369d = amvVar;
            while (true) {
                if (atomicReferenceFieldUpdater2.compareAndSet(k, amvVar, hhVar)) {
                    c2 = hhVar.h(k) == null ? (char) 1 : (char) 2;
                } else if (atomicReferenceFieldUpdater2.get(k) != amvVar) {
                    c2 = 0;
                    break;
                }
            }
            if (c2 == 1) {
                return true;
            }
        } while (c2 != 2);
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v11, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r1v7, types: [java.lang.Throwable] */
    public final Throwable aj(Object obj) {
        CancellationException cancellationException;
        if (obj instanceof Throwable) {
            return (Throwable) obj;
        }
        fyw fywVar = (fyw) ((blz) obj);
        Object ah = fywVar.ah();
        if (ah instanceof etn) {
            cancellationException = ((etn) ah).g();
        } else if (ah instanceof wh) {
            cancellationException = ((wh) ah).f20211c;
        } else {
            if (ah instanceof gpe) {
                throw new IllegalStateException(("Cannot be cancelling child in this state: " + ah).toString());
            }
            cancellationException = null;
        }
        CancellationException cancellationException2 = cancellationException instanceof CancellationException ? cancellationException : null;
        return cancellationException2 == null ? new gib("Parent job is ".concat(ab(ah)), cancellationException, fywVar) : cancellationException2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Object ak(etn etnVar, Object obj) {
        Throwable th = null;
        wh whVar = obj instanceof wh ? (wh) obj : null;
        Throwable th2 = whVar != null ? whVar.f20211c : null;
        synchronized (etnVar) {
            etnVar.h();
            ArrayList<Throwable> k = etnVar.k(th2);
            if (!k.isEmpty()) {
                Iterator it = k.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    Object next = it.next();
                    if (!(((Throwable) next) instanceof CancellationException)) {
                        th = next;
                        break;
                    }
                }
                th = th;
                if (th == null) {
                    th = (Throwable) k.get(0);
                }
            } else if (etnVar.h()) {
                th = new gib(u(), null, this);
            }
            if (th != null && k.size() > 1) {
                Set newSetFromMap = Collections.newSetFromMap(new IdentityHashMap(k.size()));
                for (Throwable th3 : k) {
                    if (th3 != th && th3 != th && !(th3 instanceof CancellationException) && newSetFromMap.add(th3)) {
                        cux.ag(th, th3);
                    }
                }
            }
        }
        if (th != null && th != th2) {
            obj = new wh(th, false);
        }
        if (th != null && (am(th) || b(th))) {
            bff.ag(obj, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally");
            wh.f20210b.compareAndSet((wh) obj, 0, 1);
        }
        q(obj);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = y;
        Object xkVar = obj instanceof gpe ? new xk((gpe) obj) : obj;
        while (!atomicReferenceFieldUpdater.compareAndSet(this, etnVar, xkVar) && atomicReferenceFieldUpdater.get(this) == etnVar) {
        }
        ao(etnVar, obj);
        return obj;
    }

    public final Object al(Object obj) {
        Object af;
        do {
            af = af(ah(), obj);
            if (af == dzm.o) {
                String str = "Job " + this + " is already complete or completing, but is being completed with " + obj;
                wh whVar = obj instanceof wh ? (wh) obj : null;
                throw new IllegalStateException(str, whVar != null ? whVar.f20211c : null);
            }
        } while (af == dzm.h);
        return af;
    }

    public final boolean am(Throwable th) {
        if (n()) {
            return true;
        }
        boolean z2 = th instanceof CancellationException;
        fzw fzwVar = (fzw) z.get(this);
        return (fzwVar == null || fzwVar == asb.f10739a) ? z2 : fzwVar._ch(th) || z2;
    }

    public final amv an(gpe gpeVar) {
        amv c2 = gpeVar.c();
        if (c2 != null) {
            return c2;
        }
        if (gpeVar instanceof fvn) {
            return new amv();
        }
        if (gpeVar instanceof aov) {
            ap((aov) gpeVar);
            return null;
        }
        throw new IllegalStateException(("State should have list: " + gpeVar).toString());
    }

    public final void ao(gpe gpeVar, Object obj) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = z;
        fzw fzwVar = (fzw) atomicReferenceFieldUpdater.get(this);
        if (fzwVar != null) {
            fzwVar.f();
            atomicReferenceFieldUpdater.set(this, asb.f10739a);
        }
        dwb dwbVar = null;
        wh whVar = obj instanceof wh ? (wh) obj : null;
        Throwable th = whVar != null ? whVar.f20211c : null;
        if (gpeVar instanceof aov) {
            try {
                ((aov) gpeVar).b(th);
                return;
            } catch (Throwable th2) {
                p(new dwb("Exception in completion handler " + gpeVar + " for " + this, th2));
                return;
            }
        }
        amv c2 = gpeVar.c();
        if (c2 != null) {
            Object j = c2.j();
            bff.ag(j, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
            for (bfw bfwVar = (bfw) j; !bfwVar.equals(c2); bfwVar = bfwVar.l()) {
                if (bfwVar instanceof aov) {
                    aov aovVar = (aov) bfwVar;
                    try {
                        aovVar.b(th);
                    } catch (Throwable th3) {
                        if (dwbVar != null) {
                            cux.ag(dwbVar, th3);
                        } else {
                            dwbVar = new dwb("Exception in completion handler " + aovVar + " for " + this, th3);
                        }
                    }
                }
            }
            if (dwbVar != null) {
                p(dwbVar);
            }
        }
    }

    public final void ap(aov aovVar) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        amv amvVar = new amv();
        aovVar.getClass();
        bfw.i.set(amvVar, aovVar);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = bfw.h;
        atomicReferenceFieldUpdater2.set(amvVar, aovVar);
        loop0: while (true) {
            if (aovVar.j() == aovVar) {
                while (!atomicReferenceFieldUpdater2.compareAndSet(aovVar, aovVar, amvVar)) {
                    if (atomicReferenceFieldUpdater2.get(aovVar) != aovVar) {
                        break;
                    }
                }
                amvVar.m(aovVar);
                break loop0;
            }
            break;
        }
        bfw l = aovVar.l();
        do {
            atomicReferenceFieldUpdater = y;
            if (atomicReferenceFieldUpdater.compareAndSet(this, aovVar, l)) {
                return;
            }
        } while (atomicReferenceFieldUpdater.get(this) == aovVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0052 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0055 A[EDGE_INSN: B:31:0x0055->B:25:0x0055 BREAK  A[LOOP:0: B:7:0x000c->B:30:?], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void aq(dta dtaVar) {
        char c2;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = z;
        asb asbVar = asb.f10739a;
        if (dtaVar == null) {
            atomicReferenceFieldUpdater.set(this, asbVar);
            return;
        }
        fyw fywVar = (fyw) dtaVar;
        do {
            Object ah = fywVar.ah();
            boolean z2 = ah instanceof fvn;
            c2 = 0;
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = y;
            if (z2) {
                if (!((fvn) ah).f17483b) {
                    fvn fvnVar = dzm.f15130e;
                    while (!atomicReferenceFieldUpdater2.compareAndSet(fywVar, ah, fvnVar)) {
                        if (atomicReferenceFieldUpdater2.get(fywVar) != ah) {
                            c2 = 65535;
                            break;
                        }
                    }
                    fywVar.k();
                    c2 = 1;
                }
                if (c2 != 0) {
                    break;
                }
            } else {
                if (ah instanceof bmy) {
                    amv amvVar = ((bmy) ah).f11848b;
                    while (!atomicReferenceFieldUpdater2.compareAndSet(fywVar, ah, amvVar)) {
                        if (atomicReferenceFieldUpdater2.get(fywVar) != ah) {
                            c2 = 65535;
                            break;
                        }
                    }
                    fywVar.k();
                    c2 = 1;
                }
                if (c2 != 0) {
                }
            }
        } while (c2 != 1);
        fzw fzwVar = (fzw) kj.m(fywVar, true, new czr(this), 2);
        atomicReferenceFieldUpdater.set(this, fzwVar);
        if (ah() instanceof gpe) {
            return;
        }
        fzwVar.f();
        atomicReferenceFieldUpdater.set(this, asbVar);
    }

    public final CancellationException ar() {
        CancellationException cancellationException;
        Object ah = ah();
        if (!(ah instanceof etn)) {
            if (ah instanceof gpe) {
                throw new IllegalStateException(("Job is still new or active: " + this).toString());
            }
            if (!(ah instanceof wh)) {
                return new gib(getClass().getSimpleName().concat(" has completed normally"), null, this);
            }
            Throwable th = ((wh) ah).f20211c;
            cancellationException = th instanceof CancellationException ? (CancellationException) th : null;
            return cancellationException == null ? new gib(u(), th, this) : cancellationException;
        }
        Throwable g2 = ((etn) ah).g();
        if (g2 == null) {
            throw new IllegalStateException(("Job is still new or active: " + this).toString());
        }
        String concat = getClass().getSimpleName().concat(" is cancelling");
        cancellationException = g2 instanceof CancellationException ? (CancellationException) g2 : null;
        if (cancellationException != null) {
            return cancellationException;
        }
        if (concat == null) {
            concat = u();
        }
        return new gib(concat, g2, this);
    }

    public boolean b(Throwable th) {
        return false;
    }

    @Override // g.boj
    public final Object c(Object obj, bto btoVar) {
        return btoVar.d(obj, this);
    }

    @Override // g.erz
    public final efi getKey() {
        return dwm.o;
    }

    public void j(Object obj) {
        m(obj);
    }

    public void k() {
    }

    public void m(Object obj) {
    }

    public boolean n() {
        return false;
    }

    public void p(dwb dwbVar) {
        throw dwbVar;
    }

    public void q(Object obj) {
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName() + '{' + ab(ah()) + '}');
        sb.append('@');
        sb.append(fso.o(this));
        return sb.toString();
    }

    public String u() {
        return "Job was cancelled";
    }

    public void w(CancellationException cancellationException) {
        ae(cancellationException);
    }

    @Override // g.dta
    public boolean x() {
        Object ah = ah();
        return (ah instanceof gpe) && ((gpe) ah).a();
    }
}

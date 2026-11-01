package g;

import com.bykv.vk.component.ttvideo.player.C;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes.dex */
public final class gsn extends fpm implements anq, qz, cjq {
    private volatile /* synthetic */ int _decisionAndIndex$volatile;
    private volatile /* synthetic */ Object _parentHandle$volatile;
    private volatile /* synthetic */ Object _state$volatile;

    /* renamed from: e, reason: collision with root package name */
    public final bdp f18702e;
    public final boj o;

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f18701c = AtomicIntegerFieldUpdater.newUpdater(gsn.class, "_decisionAndIndex$volatile");

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f18700b = AtomicReferenceFieldUpdater.newUpdater(gsn.class, Object.class, "_state$volatile");

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f18699a = AtomicReferenceFieldUpdater.newUpdater(gsn.class, Object.class, "_parentHandle$volatile");

    public gsn(int i, bdp bdpVar) {
        super(i);
        this.f18702e = bdpVar;
        this.o = bdpVar.getContext();
        this._decisionAndIndex$volatile = 536870911;
        this._state$volatile = ghp.f18169a;
    }

    public static Object p(fkq fkqVar, Object obj, int i, and andVar) {
        if (obj instanceof wh) {
            return obj;
        }
        if (i != 1 && i != 2) {
            return obj;
        }
        if (andVar != null || (fkqVar instanceof cby)) {
            return new vj(obj, fkqVar instanceof cby ? (cby) fkqVar : null, andVar, (CancellationException) null, 16);
        }
        return obj;
    }

    public static void q(Object obj, Object obj2) {
        throw new IllegalStateException(("It's prohibited to register multiple handlers, tried to register " + obj + ", already has " + obj2).toString());
    }

    @Override // g.bdp
    public final void _z(Object obj) {
        Throwable a2 = sl.a(obj);
        if (a2 != null) {
            obj = new wh(a2, false);
        }
        ae(obj, this.k, null);
    }

    public final boolean aa(Throwable th) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f18700b;
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (!(obj instanceof fkq)) {
                return false;
            }
            oq oqVar = new oq(this, th, (obj instanceof cby) || (obj instanceof fu));
            while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, oqVar)) {
                if (atomicReferenceFieldUpdater.get(this) != obj) {
                    break;
                }
            }
            fkq fkqVar = (fkq) obj;
            if (fkqVar instanceof cby) {
                ab((cby) obj, th);
            } else if (fkqVar instanceof fu) {
                v((fu) obj, th);
            }
            if (!w()) {
                u();
            }
            s(this.k);
            return true;
        }
    }

    public final void ab(cby cbyVar, Throwable th) {
        try {
            switch (cbyVar.f12618a) {
                case 0:
                    if (th != null) {
                        ((ScheduledFuture) cbyVar.f12619b).cancel(false);
                        break;
                    }
                    break;
                case 1:
                    ((and) cbyVar.f12619b).invoke(th);
                    break;
                default:
                    ((ghk) cbyVar.f12619b).f();
                    break;
            }
        } catch (Throwable th2) {
            kj.i(new dwb("Exception in invokeOnCancellation handler for " + this, th2), this.o);
        }
    }

    public final void ac() {
        edw af = af();
        if (af == null || (f18700b.get(this) instanceof fkq)) {
            return;
        }
        af.f();
        f18699a.set(this, asb.f10739a);
    }

    public final void ad(fkq fkqVar) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f18700b;
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj instanceof ghp) {
                while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, fkqVar)) {
                    if (atomicReferenceFieldUpdater.get(this) != obj) {
                        break;
                    }
                }
                return;
            }
            if (obj instanceof cby ? true : obj instanceof fu) {
                q(fkqVar, obj);
                throw null;
            }
            if (obj instanceof wh) {
                wh whVar = (wh) obj;
                whVar.getClass();
                if (!wh.f20210b.compareAndSet(whVar, 0, 1)) {
                    q(fkqVar, obj);
                    throw null;
                }
                if (obj instanceof oq) {
                    if (!(((wh) obj) != null)) {
                        whVar = null;
                    }
                    Throwable th = whVar != null ? whVar.f20211c : null;
                    if (fkqVar instanceof cby) {
                        ab((cby) fkqVar, th);
                        return;
                    } else {
                        bff.ag(fkqVar, "null cannot be cast to non-null type kotlinx.coroutines.internal.Segment<*>");
                        v((fu) fkqVar, th);
                        return;
                    }
                }
                return;
            }
            if (obj instanceof vj) {
                vj vjVar = (vj) obj;
                if (vjVar.f20165d != null) {
                    q(fkqVar, obj);
                    throw null;
                }
                if (fkqVar instanceof fu) {
                    return;
                }
                bff.ag(fkqVar, "null cannot be cast to non-null type kotlinx.coroutines.CancelHandler");
                cby cbyVar = (cby) fkqVar;
                Throwable th2 = vjVar.f20163b;
                if (th2 != null) {
                    ab(cbyVar, th2);
                    return;
                }
                vj f2 = vj.f(vjVar, cbyVar, null, 29);
                while (true) {
                    if (atomicReferenceFieldUpdater.compareAndSet(this, obj, f2)) {
                        break;
                    } else if (atomicReferenceFieldUpdater.get(this) != obj) {
                        r7 = false;
                        break;
                    }
                }
                if (r7) {
                    return;
                }
            } else {
                if (fkqVar instanceof fu) {
                    return;
                }
                bff.ag(fkqVar, "null cannot be cast to non-null type kotlinx.coroutines.CancelHandler");
                vj vjVar2 = new vj(obj, (cby) fkqVar, (and) null, (CancellationException) null, 28);
                while (true) {
                    if (atomicReferenceFieldUpdater.compareAndSet(this, obj, vjVar2)) {
                        break;
                    } else if (atomicReferenceFieldUpdater.get(this) != obj) {
                        r7 = false;
                        break;
                    }
                }
                if (r7) {
                    return;
                }
            }
        }
    }

    public final void ae(Object obj, int i, and andVar) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f18700b;
            Object obj2 = atomicReferenceFieldUpdater.get(this);
            if (obj2 instanceof fkq) {
                Object p = p((fkq) obj2, obj, i, andVar);
                while (!atomicReferenceFieldUpdater.compareAndSet(this, obj2, p)) {
                    if (atomicReferenceFieldUpdater.get(this) != obj2) {
                        break;
                    }
                }
                if (!w()) {
                    u();
                }
                s(i);
                return;
            }
            if (obj2 instanceof oq) {
                oq oqVar = (oq) obj2;
                oqVar.getClass();
                if (oq.f19771a.compareAndSet(oqVar, 0, 1)) {
                    if (andVar != null) {
                        r(andVar, oqVar.f20211c);
                        return;
                    }
                    return;
                }
            }
            throw new IllegalStateException(("Already resumed, but proposed with update " + obj).toString());
        }
    }

    public final edw af() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        dta dtaVar = (dta) this.o._x(dwm.o);
        if (dtaVar == null) {
            return null;
        }
        edw m = kj.m(dtaVar, true, new chb(this), 2);
        do {
            atomicReferenceFieldUpdater = f18699a;
            if (atomicReferenceFieldUpdater.compareAndSet(this, null, m)) {
                break;
            }
        } while (atomicReferenceFieldUpdater.get(this) == null);
        return m;
    }

    @Override // g.cjq
    public final void d(fu fuVar, int i) {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        int i2;
        do {
            atomicIntegerFieldUpdater = f18701c;
            i2 = atomicIntegerFieldUpdater.get(this);
            if ((i2 & 536870911) != 536870911) {
                throw new IllegalStateException("invokeOnCancellation should be called at most once");
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i2, ((i2 >> 29) << 29) + i));
        ad(fuVar);
    }

    @Override // g.qz
    public final qz f() {
        bdp bdpVar = this.f18702e;
        if (bdpVar instanceof qz) {
            return (qz) bdpVar;
        }
        return null;
    }

    @Override // g.bdp
    public final boj getContext() {
        return this.o;
    }

    @Override // g.fpm
    public final Object h() {
        return f18700b.get(this);
    }

    @Override // g.fpm
    public final void i(Object obj, CancellationException cancellationException) {
        CancellationException cancellationException2;
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f18700b;
            Object obj2 = atomicReferenceFieldUpdater.get(this);
            if (obj2 instanceof fkq) {
                throw new IllegalStateException("Not completed");
            }
            if (obj2 instanceof wh) {
                return;
            }
            if (!(obj2 instanceof vj)) {
                cancellationException2 = cancellationException;
                vj vjVar = new vj(obj2, (cby) null, (and) null, cancellationException2, 14);
                while (!atomicReferenceFieldUpdater.compareAndSet(this, obj2, vjVar)) {
                    if (atomicReferenceFieldUpdater.get(this) != obj2) {
                        break;
                    }
                }
                return;
            }
            vj vjVar2 = (vj) obj2;
            if (vjVar2.f20163b != null) {
                throw new IllegalStateException("Must be called at most once");
            }
            vj f2 = vj.f(vjVar2, null, cancellationException, 15);
            while (!atomicReferenceFieldUpdater.compareAndSet(this, obj2, f2)) {
                if (atomicReferenceFieldUpdater.get(this) != obj2) {
                    cancellationException2 = cancellationException;
                }
            }
            cby cbyVar = vjVar2.f20165d;
            if (cbyVar != null) {
                ab(cbyVar, cancellationException);
            }
            and andVar = vjVar2.f20166e;
            if (andVar != null) {
                r(andVar, cancellationException);
                return;
            }
            return;
            cancellationException = cancellationException2;
        }
    }

    @Override // g.fpm
    public final bdp j() {
        return this.f18702e;
    }

    @Override // g.fpm
    public final Throwable m(Object obj) {
        Throwable m = super.m(obj);
        if (m != null) {
            return m;
        }
        return null;
    }

    @Override // g.fpm
    public final Object n(Object obj) {
        return obj instanceof vj ? ((vj) obj).f20164c : obj;
    }

    public final void r(and andVar, Throwable th) {
        try {
            andVar.invoke(th);
        } catch (Throwable th2) {
            kj.i(new dwb("Exception in resume onCancellation handler for " + this, th2), this.o);
        }
    }

    public final void s(int i) {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        int i2;
        do {
            atomicIntegerFieldUpdater = f18701c;
            i2 = atomicIntegerFieldUpdater.get(this);
            int i3 = i2 >> 29;
            if (i3 != 0) {
                if (i3 != 1) {
                    throw new IllegalStateException("Already resumed");
                }
                boolean z = i == 4;
                bdp bdpVar = this.f18702e;
                if (!z && (bdpVar instanceof sk)) {
                    boolean z2 = i == 1 || i == 2;
                    int i4 = this.k;
                    if (z2 == (i4 == 1 || i4 == 2)) {
                        cpk cpkVar = ((sk) bdpVar).f19979c;
                        boj context = ((sk) bdpVar).f19980d.getContext();
                        if (cpkVar.w(context)) {
                            cpkVar.i(context, this);
                            return;
                        }
                        bkg b2 = fla.b();
                        if (b2.l >= 4294967296L) {
                            b2.q(this);
                            return;
                        }
                        b2.s(true);
                        try {
                            gs.am(this, bdpVar, true);
                            do {
                            } while (b2.r());
                        } finally {
                            try {
                                return;
                            } finally {
                            }
                        }
                        return;
                    }
                }
                gs.am(this, bdpVar, z);
                return;
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i2, C.ENCODING_PCM_32BIT + (536870911 & i2)));
    }

    public final void t(cpk cpkVar) {
        bdp bdpVar = this.f18702e;
        sk skVar = bdpVar instanceof sk ? (sk) bdpVar : null;
        ae(dgi.f14134a, (skVar != null ? skVar.f19979c : null) == cpkVar ? 4 : this.k, null);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CancellableContinuation(");
        sb.append(fso.ax(this.f18702e));
        sb.append("){");
        Object obj = f18700b.get(this);
        sb.append(obj instanceof fkq ? "Active" : obj instanceof oq ? "Cancelled" : "Completed");
        sb.append("}@");
        sb.append(fso.o(this));
        return sb.toString();
    }

    public final void u() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f18699a;
        edw edwVar = (edw) atomicReferenceFieldUpdater.get(this);
        if (edwVar == null) {
            return;
        }
        edwVar.f();
        atomicReferenceFieldUpdater.set(this, asb.f10739a);
    }

    public final void v(fu fuVar, Throwable th) {
        boj bojVar = this.o;
        int i = f18701c.get(this) & 536870911;
        if (i == 536870911) {
            throw new IllegalStateException("The index for Segment.onCancellation(..) is broken");
        }
        try {
            fuVar.h(i, bojVar);
        } catch (Throwable th2) {
            kj.i(new dwb("Exception in invokeOnCancellation handler for " + this, th2), bojVar);
        }
    }

    public final boolean w() {
        if (this.k != 2) {
            return false;
        }
        bdp bdpVar = this.f18702e;
        bff.ag(bdpVar, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>");
        return sk.f19977a.get((sk) bdpVar) != null;
    }

    public final void x() {
        bdp bdpVar = this.f18702e;
        Throwable th = null;
        sk skVar = bdpVar instanceof sk ? (sk) bdpVar : null;
        if (skVar != null) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = sk.f19977a;
            loop0: while (true) {
                Object obj = atomicReferenceFieldUpdater.get(skVar);
                hy hyVar = baf.s;
                if (obj == hyVar) {
                    while (!atomicReferenceFieldUpdater.compareAndSet(skVar, hyVar, this)) {
                        if (atomicReferenceFieldUpdater.get(skVar) != hyVar) {
                            break;
                        }
                    }
                    break loop0;
                } else {
                    if (!(obj instanceof Throwable)) {
                        throw new IllegalStateException(("Inconsistent state " + obj).toString());
                    }
                    while (!atomicReferenceFieldUpdater.compareAndSet(skVar, obj, null)) {
                        if (atomicReferenceFieldUpdater.get(skVar) != obj) {
                            throw new IllegalArgumentException("Failed requirement.");
                        }
                    }
                    th = (Throwable) obj;
                }
            }
            if (th == null) {
                return;
            }
            u();
            aa(th);
        }
    }

    public final void y(and andVar) {
        ad(new cby(1, andVar));
    }

    public final Object z() {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        int i;
        dta dtaVar;
        boolean w = w();
        do {
            atomicIntegerFieldUpdater = f18701c;
            i = atomicIntegerFieldUpdater.get(this);
            int i2 = i >> 29;
            if (i2 != 0) {
                if (i2 != 2) {
                    throw new IllegalStateException("Already suspended");
                }
                if (w) {
                    x();
                }
                Object obj = f18700b.get(this);
                if (obj instanceof wh) {
                    throw ((wh) obj).f20211c;
                }
                int i3 = this.k;
                if ((i3 != 1 && i3 != 2) || (dtaVar = (dta) this.o._x(dwm.o)) == null || dtaVar.x()) {
                    return n(obj);
                }
                CancellationException ar = ((fyw) dtaVar).ar();
                i(obj, ar);
                throw ar;
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i, C.ENCODING_PCM_A_LAW + (536870911 & i)));
        if (((edw) f18699a.get(this)) == null) {
            af();
        }
        if (w) {
            x();
        }
        return cxr.COROUTINE_SUSPENDED;
    }
}

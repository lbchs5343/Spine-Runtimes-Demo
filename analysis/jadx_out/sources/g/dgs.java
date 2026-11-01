package g;

import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes.dex */
public final class dgs extends coh implements ayw, bfl {
    public final djo l;

    public dgs(boj bojVar, djo djoVar) {
        super(bojVar, true);
        this.l = djoVar;
    }

    @Override // g.fyw, g.dta, g.biu
    public final void _bi(CancellationException cancellationException) {
        if (ac()) {
            return;
        }
        if (cancellationException == null) {
            cancellationException = new gib(u(), null, this);
        }
        w(cancellationException);
    }

    @Override // g.cvu
    public final boolean _cl(Throwable th) {
        return this.l.aa(th, false);
    }

    @Override // g.cvu
    public final Object d(Object obj, w wVar) {
        return this.l.d(obj, wVar);
    }

    @Override // g.cvu
    public final Object e(Object obj) {
        return this.l.e(obj);
    }

    @Override // g.biu
    public final Object g(ps psVar) {
        djo djoVar = this.l;
        djoVar.getClass();
        return djo.u(djoVar, psVar);
    }

    @Override // g.biu
    public final Object h() {
        return this.l.h();
    }

    @Override // g.biu
    public final blg iterator() {
        djo djoVar = this.l;
        djoVar.getClass();
        return new blg(djoVar);
    }

    @Override // g.coh
    public final void r(Throwable th, boolean z) {
        if (this.l.aa(th, false) || z) {
            return;
        }
        kj.i(th, this.o);
    }

    @Override // g.coh
    public final void t(Object obj) {
        this.l._cl(null);
    }

    public final void v(bie bieVar) {
        djo djoVar = this.l;
        djoVar.getClass();
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = djo.m;
        while (!atomicReferenceFieldUpdater.compareAndSet(djoVar, null, bieVar)) {
            if (atomicReferenceFieldUpdater.get(djoVar) != null) {
                while (true) {
                    Object obj = atomicReferenceFieldUpdater.get(djoVar);
                    hy hyVar = drx.p;
                    if (obj != hyVar) {
                        if (obj == drx.s) {
                            throw new IllegalStateException("Another handler was already registered and successfully invoked");
                        }
                        throw new IllegalStateException(("Another handler is already registered: " + obj).toString());
                    }
                    hy hyVar2 = drx.s;
                    while (!atomicReferenceFieldUpdater.compareAndSet(djoVar, hyVar, hyVar2)) {
                        if (atomicReferenceFieldUpdater.get(djoVar) != hyVar) {
                            break;
                        }
                    }
                    bieVar.invoke(djoVar.ak());
                    return;
                }
            }
        }
    }

    @Override // g.fyw
    public final void w(CancellationException cancellationException) {
        this.l.aa(cancellationException, true);
        ae(cancellationException);
    }
}

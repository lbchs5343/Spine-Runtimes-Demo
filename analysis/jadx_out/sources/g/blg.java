package g;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes.dex */
public final class blg implements cjq {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ djo f11782a;

    /* renamed from: b, reason: collision with root package name */
    public Object f11783b = drx.k;

    /* renamed from: c, reason: collision with root package name */
    public gsn f11784c;

    public blg(djo djoVar) {
        this.f11782a = djoVar;
    }

    @Override // g.cjq
    public final void d(fu fuVar, int i) {
        gsn gsnVar = this.f11784c;
        if (gsnVar != null) {
            gsnVar.d(fuVar, i);
        }
    }

    public final Object e(w wVar) {
        ggb ggbVar;
        Boolean bool;
        int i;
        ggb ggbVar2;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = djo.l;
        djo djoVar = this.f11782a;
        ggb ggbVar3 = (ggb) atomicReferenceFieldUpdater.get(djoVar);
        while (!djoVar.ao(djo.r.get(djoVar), true)) {
            long andIncrement = djo.n.getAndIncrement(djoVar);
            long j = drx.n;
            long j2 = andIncrement / j;
            int i2 = (int) (andIncrement % j);
            if (ggbVar3.f17418b != j2) {
                ggbVar = djoVar.ab(j2, ggbVar3);
                if (ggbVar == null) {
                    continue;
                }
            } else {
                ggbVar = ggbVar3;
            }
            Object aq = djoVar.aq(ggbVar, i2, andIncrement, null);
            hy hyVar = drx.l;
            if (aq == hyVar) {
                throw new IllegalStateException("unreachable");
            }
            hy hyVar2 = drx.f14685c;
            if (aq != hyVar2) {
                if (aq != drx.f14686d) {
                    ggbVar.l();
                    this.f11783b = aq;
                    return Boolean.TRUE;
                }
                gsn bb = gs.bb(awt.ab(wVar));
                try {
                    this.f11784c = bb;
                } catch (Throwable th) {
                    th = th;
                }
                try {
                    Object aq2 = djoVar.aq(ggbVar, i2, andIncrement, this);
                    if (aq2 == hyVar) {
                        d(ggbVar, i2);
                    } else {
                        if (aq2 == hyVar2) {
                            if (andIncrement < djoVar.at()) {
                                ggbVar.l();
                            }
                            ggb ggbVar4 = (ggb) djo.l.get(djoVar);
                            while (true) {
                                if (djoVar.ao(djo.r.get(djoVar), true)) {
                                    gsn gsnVar = this.f11784c;
                                    bff.d(gsnVar);
                                    this.f11784c = null;
                                    this.f11783b = drx.f14688f;
                                    Throwable ak = djoVar.ak();
                                    if (ak == null) {
                                        gsnVar._z(Boolean.FALSE);
                                    } else {
                                        gsnVar._z(eg.i(ak));
                                    }
                                } else {
                                    long andIncrement2 = djo.n.getAndIncrement(djoVar);
                                    long j3 = drx.n;
                                    long j4 = andIncrement2 / j3;
                                    int i3 = (int) (andIncrement2 % j3);
                                    if (ggbVar4.f17418b != j4) {
                                        ggbVar2 = djoVar.ab(j4, ggbVar4);
                                        if (ggbVar2 == null) {
                                        }
                                    } else {
                                        ggbVar2 = ggbVar4;
                                    }
                                    Object aq3 = djoVar.aq(ggbVar2, i3, andIncrement2, this);
                                    if (aq3 == drx.l) {
                                        d(ggbVar2, i3);
                                        break;
                                    }
                                    if (aq3 == drx.f14685c) {
                                        if (andIncrement2 < djoVar.at()) {
                                            ggbVar2.l();
                                        }
                                        ggbVar4 = ggbVar2;
                                    } else {
                                        if (aq3 == drx.f14686d) {
                                            throw new IllegalStateException("unexpected");
                                        }
                                        ggbVar2.l();
                                        this.f11783b = aq3;
                                        this.f11784c = null;
                                        bool = Boolean.TRUE;
                                        i = bb.k;
                                    }
                                }
                            }
                        } else {
                            ggbVar.l();
                            this.f11783b = aq2;
                            this.f11784c = null;
                            bool = Boolean.TRUE;
                            i = bb.k;
                        }
                        bb.ae(bool, i, null);
                    }
                    return bb.z();
                } catch (Throwable th2) {
                    th = th2;
                    bb.x();
                    throw th;
                }
            }
            if (andIncrement < djoVar.at()) {
                ggbVar.l();
            }
            ggbVar3 = ggbVar;
        }
        this.f11783b = drx.f14688f;
        Throwable ak2 = djoVar.ak();
        if (ak2 == null) {
            return Boolean.FALSE;
        }
        int i4 = asn.f10748a;
        throw ak2;
    }

    public final Object f() {
        Object obj = this.f11783b;
        hy hyVar = drx.k;
        if (obj == hyVar) {
            throw new IllegalStateException("`hasNext()` has not been invoked");
        }
        this.f11783b = hyVar;
        if (obj != drx.f14688f) {
            return obj;
        }
        Throwable ak = this.f11782a.ak();
        if (ak == null) {
            ak = new gcb("Channel was closed");
        }
        int i = asn.f10748a;
        throw ak;
    }
}

package g;

import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes.dex */
public final class chb extends ccf {
    public final gsn n;

    public chb(gsn gsnVar) {
        this.n = gsnVar;
    }

    @Override // g.era
    public final void b(Throwable th) {
        CancellationException ar = e().ar();
        gsn gsnVar = this.n;
        if (gsnVar.w()) {
            bdp bdpVar = gsnVar.f18702e;
            bff.ag(bdpVar, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>");
            sk skVar = (sk) bdpVar;
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = sk.f19977a;
            loop0: while (true) {
                Object obj = atomicReferenceFieldUpdater.get(skVar);
                hy hyVar = baf.s;
                if (!bff.n(obj, hyVar)) {
                    if (!(obj instanceof Throwable)) {
                        while (!atomicReferenceFieldUpdater.compareAndSet(skVar, obj, null)) {
                            if (atomicReferenceFieldUpdater.get(skVar) != obj) {
                                break;
                            }
                        }
                        break loop0;
                    }
                    return;
                }
                while (!atomicReferenceFieldUpdater.compareAndSet(skVar, hyVar, ar)) {
                    if (atomicReferenceFieldUpdater.get(skVar) != hyVar) {
                        break;
                    }
                }
                return;
            }
        }
        gsnVar.aa(ar);
        if (gsnVar.w()) {
            return;
        }
        gsnVar.u();
    }
}

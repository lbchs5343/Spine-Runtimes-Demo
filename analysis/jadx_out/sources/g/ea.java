package g;

import j$.util.Objects;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class ea extends bnf {

    /* renamed from: a, reason: collision with root package name */
    public final aqf f15165a;

    public ea(aqf aqfVar) {
        super(aqfVar);
        this.f15165a = aqfVar;
    }

    @Override // g.bnf
    public final void b() {
        fkb fkbVar = (fkb) this.f11867c.get();
        cgy cgyVar = fkbVar.j;
        AtomicReference atomicReference = cgyVar.f12863f;
        AtomicReference atomicReference2 = cgyVar.f12861d;
        if (atomicReference2.get() == fkbVar) {
            atomicReference = atomicReference2;
        } else if (atomicReference.get() != fkbVar) {
            atomicReference = null;
        }
        if (atomicReference == null) {
            throw new gck("Orphaned traverser state");
        }
        fza fzaVar = (fza) this.f15165a.f10652a;
        cxc k = fkbVar.k();
        evf m = cgyVar.m(fkbVar);
        List list = fzaVar.f17685e;
        Objects.requireNonNull(m);
        List bn = acw.bn(list, new egl(6, m));
        int size = bn.size();
        atomicReference.set(size != 0 ? size != 1 ? new dcc(cgyVar, k, bn) : new aqf(cgyVar, k, new gvg((fza) bn.get(0), 0, 0), 1) : new fjk(cgyVar, gne.END_OF_PATH));
    }
}

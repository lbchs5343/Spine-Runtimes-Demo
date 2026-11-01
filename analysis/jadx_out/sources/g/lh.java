package g;

import java.util.List;

/* loaded from: classes.dex */
public abstract class lh implements epk {
    public static final gxb k = gxb.m;
    public sm l = k;

    public final void m(eue eueVar) {
        sm r = r();
        r.getClass();
        r.i(new agx(2, eueVar));
    }

    public final void n() {
        if (this.l.h()) {
            sm smVar = this.l;
            gxb gxbVar = k;
            if (smVar != gxbVar) {
                this.l = gxbVar;
            }
        }
    }

    public final void o(acq acqVar, Object obj) {
        sm r = r();
        frs frsVar = (frs) r.k(acqVar);
        if (frsVar == null) {
            frsVar = new frs(acqVar);
            r.i(new agx(2, frsVar));
        }
        frsVar.f17307b.add(obj);
    }

    public final void p() {
        sm smVar = this.l;
        if (smVar == k) {
            return;
        }
        if (!smVar.f19984c.isEmpty()) {
            smVar.i(new esk(0));
        }
        this.l.f19983b.clear();
        n();
    }

    public final void q(ccm ccmVar, acq acqVar) {
        eue k2 = ccmVar.l.k(acqVar);
        if (k2 != null) {
            m(k2);
        }
    }

    public final sm r() {
        sm smVar = this.l;
        if (smVar != k) {
            return smVar;
        }
        sm smVar2 = new sm();
        this.l = smVar2;
        return smVar2;
    }

    public final void s(lh lhVar) {
        sm smVar = lhVar.l;
        if (smVar.h()) {
            return;
        }
        sm r = r();
        r.f19983b.addAll(smVar.f19983b);
        if (smVar.f19984c.isEmpty()) {
            return;
        }
        r.i(new ean(smVar, 1));
    }

    public final void t(List list) {
        if (list.isEmpty()) {
            return;
        }
        sm r = r();
        r.getClass();
        r.i(new agx(3, list));
    }

    public final void u(fky fkyVar) {
        this.l.d(fkyVar);
        n();
    }

    public final void v(csv csvVar) {
        this.l.l(csvVar);
        n();
    }

    public final void w(csv csvVar) {
        r().f19983b.add(csvVar);
    }
}

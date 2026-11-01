package g;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes.dex */
public abstract class w extends bry {
    public transient bdp _cn;
    private final boj _context;

    public w(bdp bdpVar) {
        this(bdpVar, bdpVar != null ? bdpVar.getContext() : null);
    }

    public w(bdp bdpVar, boj bojVar) {
        super(bdpVar);
        this._context = bojVar;
    }

    @Override // g.bry
    public void c() {
        bdp bdpVar = this._cn;
        if (bdpVar != null && bdpVar != this) {
            erz _x = getContext()._x(bmr.j);
            bff.d(_x);
            sk skVar = (sk) bdpVar;
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = sk.f19977a;
            while (atomicReferenceFieldUpdater.get(skVar) == baf.s) {
            }
            Object obj = atomicReferenceFieldUpdater.get(skVar);
            gsn gsnVar = obj instanceof gsn ? (gsn) obj : null;
            if (gsnVar != null) {
                gsnVar.u();
            }
        }
        this._cn = cjk.f12984b;
    }

    @Override // g.bdp
    public boj getContext() {
        boj bojVar = this._context;
        bff.d(bojVar);
        return bojVar;
    }
}

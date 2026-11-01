package g;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes.dex */
public final class fhq extends fyw {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f16802a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fhq() {
        super(true);
        boolean z = true;
        aq(null);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = fyw.z;
        fzw fzwVar = (fzw) atomicReferenceFieldUpdater.get(this);
        czr czrVar = fzwVar instanceof czr ? (czr) fzwVar : null;
        if (czrVar != null) {
            fyw e2 = czrVar.e();
            while (!e2._cm()) {
                fzw fzwVar2 = (fzw) atomicReferenceFieldUpdater.get(e2);
                czr czrVar2 = fzwVar2 instanceof czr ? (czr) fzwVar2 : null;
                if (czrVar2 != null) {
                    e2 = czrVar2.e();
                }
            }
            this.f16802a = z;
        }
        z = false;
        this.f16802a = z;
    }

    @Override // g.fyw
    public final boolean _cm() {
        return this.f16802a;
    }
}

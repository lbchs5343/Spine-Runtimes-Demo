package g;

import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class aq extends avu implements bto {
    final /* synthetic */ AtomicInteger $atomicReason;
    final /* synthetic */ dcy $future;
    final /* synthetic */ vn $workConstraintsTracker;
    final /* synthetic */ fkj $workSpec;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public aq(vn vnVar, fkj fkjVar, AtomicInteger atomicInteger, dcy dcyVar, bdp bdpVar) {
        super(2, bdpVar);
        this.$workConstraintsTracker = vnVar;
        this.$workSpec = fkjVar;
        this.$atomicReason = atomicInteger;
        this.$future = dcyVar;
    }

    @Override // g.bry
    public final Object a(Object obj) {
        cxr cxrVar = cxr.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            eg.k(obj);
            vn vnVar = this.$workConstraintsTracker;
            fkj fkjVar = this.$workSpec;
            this.label = 1;
            obj = goy.b(vnVar, fkjVar, this);
            if (obj == cxrVar) {
                return cxrVar;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            eg.k(obj);
        }
        this.$atomicReason.set(((Number) obj).intValue());
        this.$future.cancel(true);
        return dgi.f14134a;
    }

    @Override // g.bto
    public final Object d(Object obj, Object obj2) {
        return ((aq) e((hcc) obj, (bdp) obj2)).a(dgi.f14134a);
    }

    @Override // g.bry
    public final bdp e(Object obj, bdp bdpVar) {
        return new aq(this.$workConstraintsTracker, this.$workSpec, this.$atomicReason, this.$future, bdpVar);
    }
}

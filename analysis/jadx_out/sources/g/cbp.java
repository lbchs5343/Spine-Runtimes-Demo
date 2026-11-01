package g;

import androidx.work.impl.workers.ConstraintTrackingWorker;

/* loaded from: classes.dex */
public final class cbp extends avu implements bto {
    final /* synthetic */ cg $delegate;
    final /* synthetic */ vn $workConstraintsTracker;
    final /* synthetic */ fkj $workSpec;
    int label;
    final /* synthetic */ ConstraintTrackingWorker this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cbp(ConstraintTrackingWorker constraintTrackingWorker, cg cgVar, vn vnVar, fkj fkjVar, bdp bdpVar) {
        super(2, bdpVar);
        this.this$0 = constraintTrackingWorker;
        this.$delegate = cgVar;
        this.$workConstraintsTracker = vnVar;
        this.$workSpec = fkjVar;
    }

    @Override // g.bry
    public final Object a(Object obj) {
        cxr cxrVar = cxr.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i != 0) {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            eg.k(obj);
            return obj;
        }
        eg.k(obj);
        ConstraintTrackingWorker constraintTrackingWorker = this.this$0;
        cg cgVar = this.$delegate;
        vn vnVar = this.$workConstraintsTracker;
        fkj fkjVar = this.$workSpec;
        this.label = 1;
        Object e2 = ConstraintTrackingWorker.e(constraintTrackingWorker, cgVar, vnVar, fkjVar, this);
        return e2 == cxrVar ? cxrVar : e2;
    }

    @Override // g.bto
    public final Object d(Object obj, Object obj2) {
        return ((cbp) e((hcc) obj, (bdp) obj2)).a(dgi.f14134a);
    }

    @Override // g.bry
    public final bdp e(Object obj, bdp bdpVar) {
        return new cbp(this.this$0, this.$delegate, this.$workConstraintsTracker, this.$workSpec, bdpVar);
    }
}

package androidx.work.impl.workers;

import g.w;

/* loaded from: classes.dex */
public final class a extends w {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ ConstraintTrackingWorker this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(ConstraintTrackingWorker constraintTrackingWorker, w wVar) {
        super(wVar);
        this.this$0 = constraintTrackingWorker;
    }

    @Override // g.bry
    public final Object a(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return ConstraintTrackingWorker.e(this.this$0, null, null, null, this);
    }
}

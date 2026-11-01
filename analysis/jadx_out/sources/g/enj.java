package g;

import androidx.work.CoroutineWorker;

/* loaded from: classes.dex */
public final class enj extends avu implements bto {
    int label;
    final /* synthetic */ CoroutineWorker this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public enj(CoroutineWorker coroutineWorker, bdp bdpVar) {
        super(2, bdpVar);
        this.this$0 = coroutineWorker;
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
        CoroutineWorker coroutineWorker = this.this$0;
        this.label = 1;
        Object c2 = coroutineWorker.c(this);
        return c2 == cxrVar ? cxrVar : c2;
    }

    @Override // g.bto
    public final Object d(Object obj, Object obj2) {
        return ((enj) e((hcc) obj, (bdp) obj2)).a(dgi.f14134a);
    }

    @Override // g.bry
    public final bdp e(Object obj, bdp bdpVar) {
        return new enj(this.this$0, bdpVar);
    }
}

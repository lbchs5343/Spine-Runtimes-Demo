package g;

import androidx.work.CoroutineWorker;

/* loaded from: classes.dex */
public final class bgi extends avu implements bto {
    int label;
    final /* synthetic */ CoroutineWorker this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bgi(CoroutineWorker coroutineWorker, bdp bdpVar) {
        super(2, bdpVar);
        this.this$0 = coroutineWorker;
    }

    @Override // g.bry
    public final Object a(Object obj) {
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
        coroutineWorker.getClass();
        throw new IllegalStateException("Not implemented");
    }

    @Override // g.bto
    public final Object d(Object obj, Object obj2) {
        bgi bgiVar = (bgi) e((hcc) obj, (bdp) obj2);
        dgi dgiVar = dgi.f14134a;
        bgiVar.a(dgiVar);
        return dgiVar;
    }

    @Override // g.bry
    public final bdp e(Object obj, bdp bdpVar) {
        return new bgi(this.this$0, bdpVar);
    }
}

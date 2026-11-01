package g;

import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class fmr extends avu implements bto {
    final /* synthetic */ Callable<Object> $callable;
    final /* synthetic */ gac $db;
    final /* synthetic */ boolean $inTransaction;
    final /* synthetic */ String[] $tableNames;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fmr(boolean z, gac gacVar, String[] strArr, Callable callable, bdp bdpVar) {
        super(2, bdpVar);
        this.$inTransaction = z;
        this.$db = gacVar;
        this.$tableNames = strArr;
        this.$callable = callable;
    }

    @Override // g.bry
    public final Object a(Object obj) {
        cxr cxrVar = cxr.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            eg.k(obj);
            ajt ajtVar = new ajt(this.$inTransaction, this.$db, (fjs) this.L$0, this.$tableNames, this.$callable, null);
            this.label = 1;
            azc azcVar = new azc(this, getContext());
            if (dzm.ad(azcVar, azcVar, ajtVar) == cxrVar) {
                return cxrVar;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            eg.k(obj);
        }
        return dgi.f14134a;
    }

    @Override // g.bto
    public final Object d(Object obj, Object obj2) {
        return ((fmr) e((fjs) obj, (bdp) obj2)).a(dgi.f14134a);
    }

    @Override // g.bry
    public final bdp e(Object obj, bdp bdpVar) {
        fmr fmrVar = new fmr(this.$inTransaction, this.$db, this.$tableNames, this.$callable, bdpVar);
        fmrVar.L$0 = obj;
        return fmrVar;
    }
}

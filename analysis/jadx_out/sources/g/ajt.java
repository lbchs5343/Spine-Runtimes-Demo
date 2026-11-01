package g;

import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class ajt extends avu implements bto {
    final /* synthetic */ fjs $$this$flow;
    final /* synthetic */ Callable<Object> $callable;
    final /* synthetic */ gac $db;
    final /* synthetic */ boolean $inTransaction;
    final /* synthetic */ String[] $tableNames;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ajt(boolean z, gac gacVar, fjs fjsVar, String[] strArr, Callable callable, bdp bdpVar) {
        super(2, bdpVar);
        this.$inTransaction = z;
        this.$db = gacVar;
        this.$$this$flow = fjsVar;
        this.$tableNames = strArr;
        this.$callable = callable;
    }

    @Override // g.bry
    public final Object a(Object obj) {
        cpk cpkVar;
        cxr cxrVar = cxr.COROUTINE_SUSPENDED;
        int i = this.label;
        dgi dgiVar = dgi.f14134a;
        if (i != 0) {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            eg.k(obj);
            return dgiVar;
        }
        eg.k(obj);
        hcc hccVar = (hcc) this.L$0;
        djo r = eg.r(-1, null, 6);
        aol aolVar = new aol(this.$tableNames, r);
        r.e(dgiVar);
        if (hccVar.a()._x(boq.f11915a) != null) {
            throw new ClassCastException();
        }
        if (this.$inTransaction) {
            gac gacVar = this.$db;
            Map map = gacVar.u;
            Object obj2 = map.get("TransactionDispatcher");
            if (obj2 == null) {
                aqv aqvVar = gacVar.ad;
                if (aqvVar == null) {
                    bff.v("internalTransactionExecutor");
                    throw null;
                }
                obj2 = ffb.cc(aqvVar);
                map.put("TransactionDispatcher", obj2);
            }
            cpkVar = (cpk) obj2;
        } else {
            gac gacVar2 = this.$db;
            Map map2 = gacVar2.u;
            Object obj3 = map2.get("QueryDispatcher");
            if (obj3 == null) {
                Executor executor = gacVar2.f17774ab;
                if (executor == null) {
                    bff.v("internalQueryExecutor");
                    throw null;
                }
                obj3 = ffb.cc(executor);
                map2.put("QueryDispatcher", obj3);
            }
            cpkVar = (cpk) obj3;
        }
        cpk cpkVar2 = cpkVar;
        djo r2 = eg.r(0, null, 7);
        baf.al(hccVar, cpkVar2, null, new fuf(this.$db, aolVar, r, this.$callable, r2, null), 2);
        fjs fjsVar = this.$$this$flow;
        this.label = 1;
        Object ac = kj.ac(fjsVar, r2, true, this);
        if (ac != cxrVar) {
            ac = dgiVar;
        }
        return ac == cxrVar ? cxrVar : dgiVar;
    }

    @Override // g.bto
    public final Object d(Object obj, Object obj2) {
        return ((ajt) e((hcc) obj, (bdp) obj2)).a(dgi.f14134a);
    }

    @Override // g.bry
    public final bdp e(Object obj, bdp bdpVar) {
        ajt ajtVar = new ajt(this.$inTransaction, this.$db, this.$$this$flow, this.$tableNames, this.$callable, bdpVar);
        ajtVar.L$0 = obj;
        return ajtVar;
    }
}

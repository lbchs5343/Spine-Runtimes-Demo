package g;

/* loaded from: classes.dex */
public final class bzy extends avu implements bto {
    final /* synthetic */ eph $request;
    int label;
    final /* synthetic */ eb this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bzy(eb ebVar, eph ephVar, bdp bdpVar) {
        super(2, bdpVar);
        this.this$0 = ebVar;
        this.$request = ephVar;
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
        aij aijVar = this.this$0.f15215a;
        eph ephVar = this.$request;
        this.label = 1;
        Object e2 = aijVar.e(ephVar, this);
        return e2 == cxrVar ? cxrVar : e2;
    }

    @Override // g.bto
    public final Object d(Object obj, Object obj2) {
        return ((bzy) e((hcc) obj, (bdp) obj2)).a(dgi.f14134a);
    }

    @Override // g.bry
    public final bdp e(Object obj, bdp bdpVar) {
        return new bzy(this.this$0, this.$request, bdpVar);
    }
}

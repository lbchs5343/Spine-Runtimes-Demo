package g;

/* loaded from: classes.dex */
public final class cyq extends avu implements bto {
    int label;
    final /* synthetic */ dly this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cyq(dly dlyVar, bdp bdpVar) {
        super(2, bdpVar);
        this.this$0 = dlyVar;
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
        dly dlyVar = this.this$0;
        this.label = 1;
        Object o = dly.o(dlyVar, this);
        return o == cxrVar ? cxrVar : o;
    }

    @Override // g.bto
    public final Object d(Object obj, Object obj2) {
        return ((cyq) e((hcc) obj, (bdp) obj2)).a(dgi.f14134a);
    }

    @Override // g.bry
    public final bdp e(Object obj, bdp bdpVar) {
        return new cyq(this.this$0, bdpVar);
    }
}

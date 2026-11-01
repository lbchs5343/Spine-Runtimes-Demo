package g;

/* loaded from: classes.dex */
public final class gjm extends avu implements bto {
    int label;
    final /* synthetic */ cev this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gjm(cev cevVar, bdp bdpVar) {
        super(2, bdpVar);
        this.this$0 = cevVar;
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
        fuk fukVar = this.this$0.f12761a;
        this.label = 1;
        Object f2 = fukVar.f(this);
        return f2 == cxrVar ? cxrVar : f2;
    }

    @Override // g.bto
    public final Object d(Object obj, Object obj2) {
        return ((gjm) e((hcc) obj, (bdp) obj2)).a(dgi.f14134a);
    }

    @Override // g.bry
    public final bdp e(Object obj, bdp bdpVar) {
        return new gjm(this.this$0, bdpVar);
    }
}

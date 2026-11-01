package g;

/* loaded from: classes.dex */
public final class hcq extends avu implements bto {
    /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ bjx this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public hcq(bjx bjxVar, bdp bdpVar) {
        super(2, bdpVar);
        this.this$0 = bjxVar;
    }

    @Override // g.bry
    public final Object a(Object obj) {
        cxr cxrVar = cxr.COROUTINE_SUSPENDED;
        int i = this.label;
        dgi dgiVar = dgi.f14134a;
        if (i == 0) {
            eg.k(obj);
            fjs fjsVar = (fjs) this.L$0;
            bjx bjxVar = this.this$0;
            this.label = 1;
            Object a2 = ((dvl) bjxVar).f11718g.a(fjsVar, this);
            if (a2 != cxrVar) {
                a2 = dgiVar;
            }
            if (a2 == cxrVar) {
                return cxrVar;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            eg.k(obj);
        }
        return dgiVar;
    }

    @Override // g.bto
    public final Object d(Object obj, Object obj2) {
        return ((hcq) e((fjs) obj, (bdp) obj2)).a(dgi.f14134a);
    }

    @Override // g.bry
    public final bdp e(Object obj, bdp bdpVar) {
        hcq hcqVar = new hcq(this.this$0, bdpVar);
        hcqVar.L$0 = obj;
        return hcqVar;
    }
}

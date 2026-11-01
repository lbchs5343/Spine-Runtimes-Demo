package g;

/* loaded from: classes.dex */
public final class bai extends avu implements bto {
    final /* synthetic */ fjs $downstream;
    /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bai(fjs fjsVar, bdp bdpVar) {
        super(2, bdpVar);
        this.$downstream = fjsVar;
    }

    @Override // g.bry
    public final Object a(Object obj) {
        cxr cxrVar = cxr.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            eg.k(obj);
            Object obj2 = this.L$0;
            fjs fjsVar = this.$downstream;
            this.label = 1;
            if (fjsVar.b(obj2, this) == cxrVar) {
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
        return ((bai) e(obj, (bdp) obj2)).a(dgi.f14134a);
    }

    @Override // g.bry
    public final bdp e(Object obj, bdp bdpVar) {
        bai baiVar = new bai(this.$downstream, bdpVar);
        baiVar.L$0 = obj;
        return baiVar;
    }
}

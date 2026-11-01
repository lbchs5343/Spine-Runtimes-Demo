package g;

/* loaded from: classes.dex */
public final class gwq extends avu implements bto {
    final /* synthetic */ dqx $this_launchIn;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gwq(dqx dqxVar, bdp bdpVar) {
        super(2, bdpVar);
        this.$this_launchIn = dqxVar;
    }

    @Override // g.bry
    public final Object a(Object obj) {
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
        dqx dqxVar = this.$this_launchIn;
        this.label = 1;
        Object a2 = dqxVar.a(dyv.f15099a, this);
        if (a2 != cxrVar) {
            a2 = dgiVar;
        }
        return a2 == cxrVar ? cxrVar : dgiVar;
    }

    @Override // g.bto
    public final Object d(Object obj, Object obj2) {
        return ((gwq) e((hcc) obj, (bdp) obj2)).a(dgi.f14134a);
    }

    @Override // g.bry
    public final bdp e(Object obj, bdp bdpVar) {
        return new gwq(this.$this_launchIn, bdpVar);
    }
}

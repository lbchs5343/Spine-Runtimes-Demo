package g;

/* loaded from: classes.dex */
public final class cfz extends avu implements bto {
    final /* synthetic */ cdj $listener;
    final /* synthetic */ fkj $spec;
    final /* synthetic */ vn $this_listen;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cfz(vn vnVar, fkj fkjVar, cdj cdjVar, bdp bdpVar) {
        super(2, bdpVar);
        this.$this_listen = vnVar;
        this.$spec = fkjVar;
        this.$listener = cdjVar;
    }

    @Override // g.bry
    public final Object a(Object obj) {
        cxr cxrVar = cxr.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            eg.k(obj);
            bhw c2 = this.$this_listen.c(this.$spec);
            hai haiVar = new hai(this.$listener, this.$spec);
            this.label = 1;
            if (c2.a(haiVar, this) == cxrVar) {
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
        return ((cfz) e((hcc) obj, (bdp) obj2)).a(dgi.f14134a);
    }

    @Override // g.bry
    public final bdp e(Object obj, bdp bdpVar) {
        return new cfz(this.$this_listen, this.$spec, this.$listener, bdpVar);
    }
}

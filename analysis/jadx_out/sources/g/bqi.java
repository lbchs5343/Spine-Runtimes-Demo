package g;

/* loaded from: classes.dex */
public final class bqi extends avu implements bto {
    final /* synthetic */ ayw $$this$callbackFlow;
    int label;
    final /* synthetic */ ehm this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bqi(ehm ehmVar, ayw aywVar, bdp bdpVar) {
        super(2, bdpVar);
        this.this$0 = ehmVar;
        this.$$this$callbackFlow = aywVar;
    }

    @Override // g.bry
    public final Object a(Object obj) {
        cxr cxrVar = cxr.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            eg.k(obj);
            this.this$0.getClass();
            this.label = 1;
            if (baf.af(1000L, this) == cxrVar) {
                return cxrVar;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            eg.k(obj);
        }
        cyl f2 = cyl.f();
        int i2 = gx.f18917a;
        this.this$0.getClass();
        f2.getClass();
        ((dgs) this.$$this$callbackFlow).e(new das(7));
        return dgi.f14134a;
    }

    @Override // g.bto
    public final Object d(Object obj, Object obj2) {
        return ((bqi) e((hcc) obj, (bdp) obj2)).a(dgi.f14134a);
    }

    @Override // g.bry
    public final bdp e(Object obj, bdp bdpVar) {
        return new bqi(this.this$0, this.$$this$callbackFlow, bdpVar);
    }
}

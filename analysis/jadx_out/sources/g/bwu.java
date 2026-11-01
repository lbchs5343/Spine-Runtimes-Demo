package g;

/* loaded from: classes.dex */
public final class bwu extends avu implements bto {
    /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ yi this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bwu(yi yiVar, bdp bdpVar) {
        super(2, bdpVar);
        this.this$0 = yiVar;
    }

    @Override // g.bry
    public final Object a(Object obj) {
        cxr cxrVar = cxr.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            eg.k(obj);
            ayw aywVar = (ayw) this.L$0;
            yi yiVar = this.this$0;
            this.label = 1;
            if (yiVar.e(aywVar, this) == cxrVar) {
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
        return ((bwu) e((ayw) obj, (bdp) obj2)).a(dgi.f14134a);
    }

    @Override // g.bry
    public final bdp e(Object obj, bdp bdpVar) {
        bwu bwuVar = new bwu(this.this$0, bdpVar);
        bwuVar.L$0 = obj;
        return bwuVar;
    }
}

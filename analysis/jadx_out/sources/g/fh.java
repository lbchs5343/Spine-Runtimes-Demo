package g;

/* loaded from: classes.dex */
public final class fh extends avu implements bto {
    final /* synthetic */ fjs $collector;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ yi this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fh(fjs fjsVar, yi yiVar, bdp bdpVar) {
        super(2, bdpVar);
        this.$collector = fjsVar;
        this.this$0 = yiVar;
    }

    @Override // g.bry
    public final Object a(Object obj) {
        cxr cxrVar = cxr.COROUTINE_SUSPENDED;
        int i = this.label;
        dgi dgiVar = dgi.f14134a;
        if (i == 0) {
            eg.k(obj);
            hcc hccVar = (hcc) this.L$0;
            fjs fjsVar = this.$collector;
            yi yiVar = this.this$0;
            boj bojVar = yiVar.f20339b;
            int i2 = yiVar.f20340c;
            if (i2 == -3) {
                i2 = -2;
            }
            bqt bqtVar = yiVar.f20341d;
            dwt dwtVar = dwt.ATOMIC;
            bto bwuVar = new bwu(yiVar, null);
            dgs dgsVar = new dgs(eyt.ah(hccVar, bojVar), eg.r(i2, bqtVar, 4));
            dgsVar.s(dwtVar, dgsVar, bwuVar);
            this.label = 1;
            Object ac = kj.ac(fjsVar, dgsVar, true, this);
            if (ac != cxrVar) {
                ac = dgiVar;
            }
            if (ac == cxrVar) {
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
        return ((fh) e((hcc) obj, (bdp) obj2)).a(dgi.f14134a);
    }

    @Override // g.bry
    public final bdp e(Object obj, bdp bdpVar) {
        fh fhVar = new fh(this.$collector, this.this$0, bdpVar);
        fhVar.L$0 = obj;
        return fhVar;
    }
}

package g;

/* loaded from: classes.dex */
public final class dyz extends avu implements bnk {
    private /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    int label;

    @Override // g.bry
    public final Object a(Object obj) {
        bfx bfxVar;
        bfx bfxVar2;
        cxr cxrVar = cxr.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            eg.k(obj);
            fjs fjsVar = (fjs) this.L$0;
            bfx[] bfxVarArr = (bfx[]) ((Object[]) this.L$1);
            int length = bfxVarArr.length;
            int i2 = 0;
            while (true) {
                bfxVar = gpr.f18542a;
                if (i2 >= length) {
                    bfxVar2 = null;
                    break;
                }
                bfxVar2 = bfxVarArr[i2];
                if (!bff.n(bfxVar2, bfxVar)) {
                    break;
                }
                i2++;
            }
            if (bfxVar2 != null) {
                bfxVar = bfxVar2;
            }
            this.label = 1;
            if (fjsVar.b(bfxVar, this) == cxrVar) {
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

    @Override // g.bnk
    public final Object b(Object obj, Object obj2, w wVar) {
        dyz dyzVar = new dyz(3, wVar);
        dyzVar.L$0 = (fjs) obj;
        dyzVar.L$1 = (Object[]) obj2;
        return dyzVar.a(dgi.f14134a);
    }
}

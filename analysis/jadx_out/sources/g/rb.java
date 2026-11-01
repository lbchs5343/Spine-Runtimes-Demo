package g;

/* loaded from: classes.dex */
public abstract class rb implements dqx {
    /* JADX WARN: Removed duplicated region for block: B:21:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Override // g.dqx
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object a(fjs fjsVar, w wVar) {
        byp bypVar;
        int i;
        Throwable th;
        ega egaVar;
        if (wVar instanceof byp) {
            bypVar = (byp) wVar;
            int i2 = bypVar.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                bypVar.label = i2 - Integer.MIN_VALUE;
                Object obj = bypVar.result;
                cxr cxrVar = cxr.COROUTINE_SUSPENDED;
                i = bypVar.label;
                dgi dgiVar = dgi.f14134a;
                if (i != 0) {
                    eg.k(obj);
                    ega egaVar2 = new ega(fjsVar, bypVar.getContext());
                    try {
                        bypVar.L$0 = egaVar2;
                        bypVar.label = 1;
                        Object d2 = ((edl) this).f15362b.d(egaVar2, bypVar);
                        if (d2 != cxrVar) {
                            d2 = dgiVar;
                        }
                        if (d2 == cxrVar) {
                            return cxrVar;
                        }
                        egaVar = egaVar2;
                    } catch (Throwable th2) {
                        th = th2;
                        egaVar = egaVar2;
                        egaVar.c();
                        throw th;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    egaVar = (ega) bypVar.L$0;
                    try {
                        eg.k(obj);
                    } catch (Throwable th3) {
                        th = th3;
                        egaVar.c();
                        throw th;
                    }
                }
                egaVar.c();
                return dgiVar;
            }
        }
        bypVar = new byp(this, wVar);
        Object obj2 = bypVar.result;
        cxr cxrVar2 = cxr.COROUTINE_SUSPENDED;
        i = bypVar.label;
        dgi dgiVar2 = dgi.f14134a;
        if (i != 0) {
        }
        egaVar.c();
        return dgiVar2;
    }
}

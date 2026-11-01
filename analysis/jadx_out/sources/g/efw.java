package g;

/* loaded from: classes.dex */
public final class efw implements fjs {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ aye f15463a;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ fjs f15464c;

    public efw(bhw bhwVar, aye ayeVar, fjs fjsVar) {
        this.f15463a = ayeVar;
        this.f15464c = fjsVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Override // g.fjs
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object b(Object obj, w wVar) {
        dmj dmjVar;
        int i;
        if (wVar instanceof dmj) {
            dmjVar = (dmj) wVar;
            int i2 = dmjVar.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                dmjVar.label = i2 - Integer.MIN_VALUE;
                Object obj2 = dmjVar.result;
                cxr cxrVar = cxr.COROUTINE_SUSPENDED;
                i = dmjVar.label;
                dgi dgiVar = dgi.f14134a;
                if (i == 0) {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    eg.k(obj2);
                    return dgiVar;
                }
                eg.k(obj2);
                aye ayeVar = this.f15463a;
                Object obj3 = ayeVar.element;
                if (obj3 == ckd.h || !bff.n(obj3, obj)) {
                    ayeVar.element = obj;
                    dmjVar.label = 1;
                    if (this.f15464c.b(obj, dmjVar) == cxrVar) {
                        return cxrVar;
                    }
                }
                return dgiVar;
            }
        }
        dmjVar = new dmj(this, wVar);
        Object obj22 = dmjVar.result;
        cxr cxrVar2 = cxr.COROUTINE_SUSPENDED;
        i = dmjVar.label;
        dgi dgiVar2 = dgi.f14134a;
        if (i == 0) {
        }
    }
}

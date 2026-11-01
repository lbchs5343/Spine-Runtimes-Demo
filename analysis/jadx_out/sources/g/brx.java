package g;

/* loaded from: classes.dex */
public final class brx implements fjs {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ fjs f12099a;

    public brx(fjs fjsVar) {
        this.f12099a = fjsVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    @Override // g.fjs
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object b(Object obj, w wVar) {
        dpo dpoVar;
        int i;
        if (wVar instanceof dpo) {
            dpoVar = (dpo) wVar;
            int i2 = dpoVar.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                dpoVar.label = i2 - Integer.MIN_VALUE;
                Object obj2 = dpoVar.result;
                cxr cxrVar = cxr.COROUTINE_SUSPENDED;
                i = dpoVar.label;
                if (i != 0) {
                    eg.k(obj2);
                    if (obj instanceof das) {
                        dpoVar.label = 1;
                        if (this.f12099a.b(obj, dpoVar) == cxrVar) {
                            return cxrVar;
                        }
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    eg.k(obj2);
                }
                return dgi.f14134a;
            }
        }
        dpoVar = new dpo(this, wVar);
        Object obj22 = dpoVar.result;
        cxr cxrVar2 = cxr.COROUTINE_SUSPENDED;
        i = dpoVar.label;
        if (i != 0) {
        }
        return dgi.f14134a;
    }
}

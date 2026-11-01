package g;

/* loaded from: classes.dex */
public final class ehq implements fjs {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ fjs f15548a;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ aye f15549c;

    public ehq(fjs fjsVar, aye ayeVar) {
        this.f15548a = fjsVar;
        this.f15549c = ayeVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    @Override // g.fjs
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object b(Object obj, w wVar) {
        ceb cebVar;
        int i;
        ehq ehqVar;
        if (wVar instanceof ceb) {
            cebVar = (ceb) wVar;
            int i2 = cebVar.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                cebVar.label = i2 - Integer.MIN_VALUE;
                Object obj2 = cebVar.result;
                cxr cxrVar = cxr.COROUTINE_SUSPENDED;
                i = cebVar.label;
                if (i != 0) {
                    eg.k(obj2);
                    try {
                        fjs fjsVar = this.f15548a;
                        cebVar.L$0 = this;
                        cebVar.label = 1;
                        if (fjsVar.b(obj, cebVar) == cxrVar) {
                            return cxrVar;
                        }
                    } catch (Throwable th) {
                        th = th;
                        ehqVar = this;
                        ehqVar.f15549c.element = th;
                        throw th;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ehqVar = (ehq) cebVar.L$0;
                    try {
                        eg.k(obj2);
                    } catch (Throwable th2) {
                        th = th2;
                        ehqVar.f15549c.element = th;
                        throw th;
                    }
                }
                return dgi.f14134a;
            }
        }
        cebVar = new ceb(this, wVar);
        Object obj22 = cebVar.result;
        cxr cxrVar2 = cxr.COROUTINE_SUSPENDED;
        i = cebVar.label;
        if (i != 0) {
        }
        return dgi.f14134a;
    }
}

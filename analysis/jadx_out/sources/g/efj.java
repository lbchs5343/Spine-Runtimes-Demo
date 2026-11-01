package g;

/* loaded from: classes.dex */
public final class efj implements fjs {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ fjs f15439a;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ avu f15440c;

    /* JADX WARN: Multi-variable type inference failed */
    public efj(fjs fjsVar, bto btoVar) {
        this.f15439a = fjsVar;
        this.f15440c = (avu) btoVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x005d, code lost:
    
        if (r6.b(r2, r0) != r1) goto L23;
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /* JADX WARN: Type inference failed for: r2v1, types: [g.avu, g.bto] */
    @Override // g.fjs
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object b(Object obj, w wVar) {
        cfh cfhVar;
        int i;
        Object obj2;
        fjs fjsVar;
        if (wVar instanceof cfh) {
            cfhVar = (cfh) wVar;
            int i2 = cfhVar.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                cfhVar.label = i2 - Integer.MIN_VALUE;
                Object obj3 = cfhVar.result;
                cxr cxrVar = cxr.COROUTINE_SUSPENDED;
                i = cfhVar.label;
                if (i != 0) {
                    eg.k(obj3);
                    cfhVar.L$0 = obj;
                    fjs fjsVar2 = this.f15439a;
                    cfhVar.L$1 = fjsVar2;
                    cfhVar.label = 1;
                    if (this.f15440c.d(obj, cfhVar) != cxrVar) {
                        obj2 = obj;
                        fjsVar = fjsVar2;
                    }
                    return cxrVar;
                }
                if (i != 1) {
                    if (i != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    eg.k(obj3);
                    return dgi.f14134a;
                }
                fjsVar = (fjs) cfhVar.L$1;
                obj2 = cfhVar.L$0;
                eg.k(obj3);
                cfhVar.L$0 = null;
                cfhVar.L$1 = null;
                cfhVar.label = 2;
            }
        }
        cfhVar = new cfh(this, wVar);
        Object obj32 = cfhVar.result;
        cxr cxrVar2 = cxr.COROUTINE_SUSPENDED;
        i = cfhVar.label;
        if (i != 0) {
        }
        cfhVar.L$0 = null;
        cfhVar.L$1 = null;
        cfhVar.label = 2;
    }
}

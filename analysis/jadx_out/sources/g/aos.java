package g;

/* loaded from: classes.dex */
public final class aos implements fjs {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ bfl f10583a;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f10584c;

    public aos(bfl bflVar, int i) {
        this.f10583a = bflVar;
        this.f10584c = i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x004a, code lost:
    
        if (r6.f10583a.d(r8, r0) == r1) goto L36;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0091 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0092 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    @Override // g.fjs
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object b(Object obj, w wVar) {
        cwa cwaVar;
        int i;
        sk skVar;
        Object obj2;
        if (wVar instanceof cwa) {
            cwaVar = (cwa) wVar;
            int i2 = cwaVar.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                cwaVar.label = i2 - Integer.MIN_VALUE;
                Object obj3 = cwaVar.result;
                Object obj4 = cxr.COROUTINE_SUSPENDED;
                i = cwaVar.label;
                Object obj5 = dgi.f14134a;
                if (i != 0) {
                    eg.k(obj3);
                    eay eayVar = new eay(this.f10584c, obj);
                    cwaVar.label = 1;
                } else {
                    if (i != 1) {
                        if (i != 2) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        eg.k(obj3);
                        return obj5;
                    }
                    eg.k(obj3);
                }
                cwaVar.label = 2;
                boj context = cwaVar.getContext();
                kj.h(context);
                bdp ab2 = awt.ab(cwaVar);
                skVar = !(ab2 instanceof sk) ? (sk) ab2 : null;
                if (skVar != null) {
                    obj2 = obj5;
                } else {
                    cpk cpkVar = skVar.f19979c;
                    if (cpkVar.w(context)) {
                        skVar.f19981e = obj5;
                        skVar.k = 1;
                        cpkVar.g(context, skVar);
                    } else {
                        boj _y = context._y(new cdu(cdu.f12714a));
                        skVar.f19981e = obj5;
                        skVar.k = 1;
                        cpkVar.g(_y, skVar);
                    }
                    obj2 = obj4;
                }
                if (obj2 != cxr.COROUTINE_SUSPENDED) {
                    obj2 = obj5;
                }
                return obj2 != obj4 ? obj4 : obj5;
            }
        }
        cwaVar = new cwa(this, wVar);
        Object obj32 = cwaVar.result;
        Object obj42 = cxr.COROUTINE_SUSPENDED;
        i = cwaVar.label;
        Object obj52 = dgi.f14134a;
        if (i != 0) {
        }
        cwaVar.label = 2;
        boj context2 = cwaVar.getContext();
        kj.h(context2);
        bdp ab22 = awt.ab(cwaVar);
        if (!(ab22 instanceof sk)) {
        }
        if (skVar != null) {
        }
        if (obj2 != cxr.COROUTINE_SUSPENDED) {
        }
        if (obj2 != obj42) {
        }
    }
}

package g;

/* loaded from: classes.dex */
public abstract class goy {

    /* renamed from: a, reason: collision with root package name */
    public static final String f18524a;

    static {
        String g2 = cyl.g("ConstraintTrkngWrkr");
        bff.e(g2, "tagWithPrefix(\"ConstraintTrkngWrkr\")");
        f18524a = g2;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object b(vn vnVar, fkj fkjVar, w wVar) {
        gjj gjjVar;
        int i;
        if (wVar instanceof gjj) {
            gjjVar = (gjj) wVar;
            int i2 = gjjVar.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                gjjVar.label = i2 - Integer.MIN_VALUE;
                Object obj = gjjVar.result;
                cxr cxrVar = cxr.COROUTINE_SUSPENDED;
                i = gjjVar.label;
                if (i != 0) {
                    eg.k(obj);
                    vd vdVar = new vd(0, new fdf(vnVar.c(fkjVar), new aao(fkjVar, null)));
                    gjjVar.label = 1;
                    obj = gs.aj(vdVar, gjjVar);
                    if (obj == cxrVar) {
                        return cxrVar;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    eg.k(obj);
                }
                return new Integer(((das) obj).f13870a);
            }
        }
        gjjVar = new gjj(wVar);
        Object obj2 = gjjVar.result;
        cxr cxrVar2 = cxr.COROUTINE_SUSPENDED;
        i = gjjVar.label;
        if (i != 0) {
        }
        return new Integer(((das) obj2).f13870a);
    }
}

package g;

/* loaded from: classes.dex */
public final class dqm extends yi {

    /* renamed from: g, reason: collision with root package name */
    public final avu f14647g;
    public final avu h;

    /* JADX WARN: Multi-variable type inference failed */
    public dqm(bto btoVar, boj bojVar, int i, bqt bqtVar) {
        super(bojVar, i, bqtVar);
        avu avuVar = (avu) btoVar;
        this.f14647g = avuVar;
        this.h = avuVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0055 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /* JADX WARN: Type inference failed for: r7v3, types: [g.avu, g.bto] */
    @Override // g.yi
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object e(ayw aywVar, bdp bdpVar) {
        ajq ajqVar;
        int i;
        if (bdpVar instanceof ajq) {
            ajqVar = (ajq) bdpVar;
            int i2 = ajqVar.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                ajqVar.label = i2 - Integer.MIN_VALUE;
                Object obj = ajqVar.result;
                cxr cxrVar = cxr.COROUTINE_SUSPENDED;
                i = ajqVar.label;
                dgi dgiVar = dgi.f14134a;
                if (i != 0) {
                    eg.k(obj);
                    ajqVar.L$0 = aywVar;
                    ajqVar.label = 1;
                    Object d2 = this.f14647g.d(aywVar, ajqVar);
                    if (d2 != cxrVar) {
                        d2 = dgiVar;
                    }
                    if (d2 == cxrVar) {
                        return cxrVar;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    aywVar = (ayw) ajqVar.L$0;
                    eg.k(obj);
                }
                if (((dgs) aywVar).l.ah()) {
                    throw new IllegalStateException("'awaitClose { yourCallbackOrListener.cancel() }' should be used in the end of callbackFlow block.\nOtherwise, a callback/listener may leak in case of external cancellation.\nSee callbackFlow API documentation for the details.");
                }
                return dgiVar;
            }
        }
        ajqVar = new ajq(this, (w) bdpVar);
        Object obj2 = ajqVar.result;
        cxr cxrVar2 = cxr.COROUTINE_SUSPENDED;
        i = ajqVar.label;
        dgi dgiVar2 = dgi.f14134a;
        if (i != 0) {
        }
        if (((dgs) aywVar).l.ah()) {
        }
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [g.avu, g.bto] */
    @Override // g.yi
    public final yi f(boj bojVar, int i, bqt bqtVar) {
        return new dqm(this.h, bojVar, i, bqtVar);
    }

    @Override // g.yi
    public final String toString() {
        return "block[" + this.f14647g + "] -> " + super.toString();
    }
}

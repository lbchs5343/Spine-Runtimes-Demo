package g;

/* loaded from: classes.dex */
public final class vd implements dqx {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f20144b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f20145c;

    public /* synthetic */ vd(int i, Object obj) {
        this.f20144b = i;
        this.f20145c = obj;
    }

    @Override // g.dqx
    public final Object a(fjs fjsVar, w wVar) {
        switch (this.f20144b) {
            case 0:
                Object a2 = ((fdf) this.f20145c).a(new brx(fjsVar), wVar);
                return a2 == cxr.COROUTINE_SUSPENDED ? a2 : dgi.f14134a;
            default:
                dqx[] dqxVarArr = (dqx[]) this.f20145c;
                ps psVar = new ps(dqxVarArr, new aet(dqxVarArr), new dyz(3, null), fjsVar, null);
                lr lrVar = new lr(wVar, wVar.getContext());
                Object ad = dzm.ad(lrVar, lrVar, psVar);
                cxr cxrVar = cxr.COROUTINE_SUSPENDED;
                dgi dgiVar = dgi.f14134a;
                if (ad != cxrVar) {
                    ad = dgiVar;
                }
                return ad == cxrVar ? ad : dgiVar;
        }
    }
}

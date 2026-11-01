package g;

/* loaded from: classes.dex */
public abstract class bjx extends yi {

    /* renamed from: g, reason: collision with root package name */
    public final fqc f11718g;

    public bjx(fqc fqcVar, boj bojVar, int i, bqt bqtVar) {
        super(bojVar, i, bqtVar);
        this.f11718g = fqcVar;
    }

    @Override // g.yi, g.dqx
    public final Object a(fjs fjsVar, w wVar) {
        int i = this.f20340c;
        dgi dgiVar = dgi.f14134a;
        if (i == -3) {
            boj context = wVar.getContext();
            Boolean bool = Boolean.FALSE;
            gak gakVar = gak.f17797b;
            boj bojVar = this.f20339b;
            boj _y = !((Boolean) bojVar.c(bool, gakVar)).booleanValue() ? context._y(bojVar) : eyt.bi(context, bojVar, false);
            if (bff.n(_y, context)) {
                Object a2 = ((dvl) this).f11718g.a(fjsVar, wVar);
                cxr cxrVar = cxr.COROUTINE_SUSPENDED;
                if (a2 != cxrVar) {
                    a2 = dgiVar;
                }
                if (a2 == cxrVar) {
                    return a2;
                }
            } else {
                bmr bmrVar = bmr.j;
                if (bff.n(_y._x(bmrVar), context._x(bmrVar))) {
                    boj context2 = wVar.getContext();
                    if (!(fjsVar instanceof ahg ? true : fjsVar instanceof dyv)) {
                        fjsVar = new ffe(fjsVar, context2);
                    }
                    Object ba = acr.ba(_y, fjsVar, gs.al(_y), new hcq(this, null), wVar);
                    if (ba == cxr.COROUTINE_SUSPENDED) {
                        return ba;
                    }
                }
            }
        }
        Object a3 = super.a(fjsVar, wVar);
        return a3 == cxr.COROUTINE_SUSPENDED ? a3 : dgiVar;
    }

    @Override // g.yi
    public final Object e(ayw aywVar, bdp bdpVar) {
        Object a2 = ((dvl) this).f11718g.a(new ahg(aywVar), (w) bdpVar);
        cxr cxrVar = cxr.COROUTINE_SUSPENDED;
        dgi dgiVar = dgi.f14134a;
        if (a2 != cxrVar) {
            a2 = dgiVar;
        }
        return a2 == cxrVar ? a2 : dgiVar;
    }

    @Override // g.yi
    public final String toString() {
        return this.f11718g + " -> " + super.toString();
    }
}

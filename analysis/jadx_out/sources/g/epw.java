package g;

/* loaded from: classes.dex */
public final class epw extends eek {

    /* renamed from: a, reason: collision with root package name */
    public final String f15951a;

    public epw(String str) {
        super(hay.CONST_STR, 0);
        this.f15951a = str;
    }

    @Override // g.eek
    public final eek _o() {
        epw epwVar = new epw(this.f15951a);
        am(epwVar);
        return epwVar;
    }

    @Override // g.eek
    public final boolean _p(eek eekVar) {
        if (this == eekVar) {
            return true;
        }
        if ((eekVar instanceof epw) && super._p(eekVar)) {
            return this.f15951a.equals(((epw) eekVar).f15951a);
        }
        return false;
    }

    @Override // g.eek
    public final String toString() {
        return super.toString() + ' ' + foj.f17138a.o(this.f15951a);
    }
}

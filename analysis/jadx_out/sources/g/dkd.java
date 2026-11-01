package g;

/* loaded from: classes.dex */
public final class dkd extends eek {

    /* renamed from: a, reason: collision with root package name */
    public final cwx f14300a;

    public dkd(cwx cwxVar) {
        super(hay.CONST_CLASS, 0);
        this.f14300a = cwxVar;
    }

    @Override // g.eek
    public final eek _o() {
        dkd dkdVar = new dkd(this.f14300a);
        am(dkdVar);
        return dkdVar;
    }

    @Override // g.eek
    public final boolean _p(eek eekVar) {
        if (this == eekVar) {
            return true;
        }
        if ((eekVar instanceof dkd) && super._p(eekVar)) {
            return this.f14300a.equals(((dkd) eekVar).f14300a);
        }
        return false;
    }

    @Override // g.eek
    public final String toString() {
        return super.toString() + ' ' + this.f14300a + ".class";
    }
}

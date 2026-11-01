package g;

/* loaded from: classes.dex */
public final class dem extends eek {

    /* renamed from: a, reason: collision with root package name */
    public final cwx f14061a;

    public dem(int i, cwx cwxVar) {
        super(hay.NEW_ARRAY, i);
        this.f14061a = cwxVar;
    }

    @Override // g.eek
    public final eek _o() {
        dem demVar = new dem(this.aj.size(), this.f14061a);
        am(demVar);
        return demVar;
    }

    @Override // g.eek
    public final boolean _p(eek eekVar) {
        if (this == eekVar) {
            return true;
        }
        return (eekVar instanceof dem) && super._p(eekVar) && this.f14061a == ((dem) eekVar).f14061a;
    }

    @Override // g.eek
    public final String toString() {
        return super.toString() + " type: " + this.f14061a;
    }
}

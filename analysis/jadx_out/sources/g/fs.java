package g;

/* loaded from: classes.dex */
public final class fs extends eek {

    /* renamed from: a, reason: collision with root package name */
    public final cwx f17323a;

    public fs(int i, cwx cwxVar) {
        super(hay.FILLED_NEW_ARRAY, i);
        this.f17323a = cwxVar;
    }

    @Override // g.eek
    public final eek _o() {
        fs fsVar = new fs(this.aj.size(), this.f17323a);
        am(fsVar);
        return fsVar;
    }

    @Override // g.eek
    public final boolean _p(eek eekVar) {
        if (this == eekVar) {
            return true;
        }
        return (eekVar instanceof fs) && super._p(eekVar) && this.f17323a == ((fs) eekVar).f17323a;
    }

    @Override // g.eek
    public final String toString() {
        return super.toString() + " elemType: " + this.f17323a;
    }
}

package g;

/* loaded from: classes.dex */
public final class cpb extends afo {

    /* renamed from: a, reason: collision with root package name */
    public final cxc f13262a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f13263b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f13264c;

    public /* synthetic */ cpb(cxc cxcVar, Object obj, int i) {
        this.f13264c = i;
        this.f13262a = cxcVar;
        this.f13263b = obj;
    }

    @Override // g.afo
    public final fkb be(cgy cgyVar) {
        switch (this.f13264c) {
            case 0:
                return new aqf(cgyVar, this.f13262a, (gvg) this.f13263b, 1);
            default:
                return new aqf(cgyVar, this.f13262a, (fza) this.f13263b, 2);
        }
    }
}

package g;

/* loaded from: classes3.dex */
public final class alh extends bvf {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ bhz f10441a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f10442b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f10443c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ alh(bhz bhzVar, String str, int i) {
        super(bhzVar, true);
        this.f10442b = i;
        this.f10441a = bhzVar;
        this.f10443c = str;
    }

    @Override // g.bvf
    public final void g() {
        switch (this.f10442b) {
            case 0:
                ees eesVar = this.f10441a.f11621e;
                ckd.k(eesVar);
                eesVar.beginAdUnitExposure(this.f10443c, this.l);
                break;
            default:
                ees eesVar2 = this.f10441a.f11621e;
                ckd.k(eesVar2);
                eesVar2.endAdUnitExposure(this.f10443c, this.l);
                break;
        }
    }
}

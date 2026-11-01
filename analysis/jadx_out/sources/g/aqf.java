package g;

/* loaded from: classes.dex */
public final class aqf extends fkb {

    /* renamed from: a, reason: collision with root package name */
    public final Object f10652a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f10653b;

    /* renamed from: c, reason: collision with root package name */
    public final cxc f10654c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ aqf(cgy cgyVar, cxc cxcVar, Object obj, int i) {
        super(cgyVar);
        this.f10653b = i;
        this.f10654c = cxcVar;
        this.f10652a = obj;
    }

    @Override // g.fkb
    public final cro d() {
        switch (this.f10653b) {
            case 0:
                return new fgi(this.j, 0);
            case 1:
                return new dop(this);
            default:
                return new ea(this);
        }
    }

    @Override // g.fkb
    public final gvg e() {
        switch (this.f10653b) {
        }
        return (gvg) this.f10652a;
    }

    @Override // g.fkb
    public final fkb f(cgy cgyVar) {
        switch (this.f10653b) {
            case 0:
                cxc g2 = this.f10654c.g();
                gvg gvgVar = (gvg) this.f10652a;
                return new aqf(cgyVar, g2, new gvg((fza) gvgVar.f18811c, gvgVar.f18813e, gvgVar.f18810b), 0);
            case 1:
                cxc g3 = this.f10654c.g();
                gvg gvgVar2 = (gvg) this.f10652a;
                return new aqf(cgyVar, g3, new gvg((fza) gvgVar2.f18811c, gvgVar2.f18813e, gvgVar2.f18810b), 1);
            default:
                return new aqf(cgyVar, this.f10654c.g(), (fza) this.f10652a, 2);
        }
    }

    @Override // g.fkb
    public final cxc g() {
        switch (this.f10653b) {
        }
        return this.f10654c;
    }

    @Override // g.fkb
    public final hco h() {
        switch (this.f10653b) {
        }
        return hco.NOT_READY;
    }

    @Override // g.fkb
    public final boolean i() {
        switch (this.f10653b) {
        }
        return false;
    }
}

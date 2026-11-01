package g;

/* loaded from: classes.dex */
public final class bue implements dhc {

    /* renamed from: a, reason: collision with root package name */
    public final dwg f12212a;

    /* renamed from: b, reason: collision with root package name */
    public final adz f12213b;

    public bue(dwg dwgVar, adz adzVar) {
        this.f12212a = dwgVar;
        this.f12213b = adzVar;
    }

    @Override // g.dhc
    public final cwx e(gcu gcuVar) {
        adz adzVar = this.f12213b;
        cwx g2 = gcuVar.g(adzVar.j(0));
        cwx cwxVar = (cwx) adzVar.f10070a;
        return this.f12212a.u.f12545e.h(g2, cwxVar).e() ? g2 : cwxVar;
    }

    @Override // g.fog
    public final au f() {
        return au.ASSIGN;
    }

    @Override // g.fog
    public final cwx getType() {
        adz adzVar = this.f12213b;
        cwx j = adzVar.j(0).j();
        cwx cwxVar = (cwx) adzVar.f10070a;
        return this.f12212a.u.f12545e.h(j, cwxVar).e() ? j : cwxVar;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CHECK_CAST_ASSIGN{(");
        adz adzVar = this.f12213b;
        sb.append(adzVar.f10070a);
        sb.append(") ");
        sb.append(adzVar.j(0).j());
        sb.append("}");
        return sb.toString();
    }
}

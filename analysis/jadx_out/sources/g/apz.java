package g;

/* loaded from: classes.dex */
public final class apz implements dhc {

    /* renamed from: a, reason: collision with root package name */
    public final cwx f10640a;

    /* renamed from: b, reason: collision with root package name */
    public final dwg f10641b;

    /* renamed from: c, reason: collision with root package name */
    public final adz f10642c;

    /* renamed from: d, reason: collision with root package name */
    public final dsj f10643d;

    public apz(dwg dwgVar, adz adzVar, cwx cwxVar) {
        this.f10641b = dwgVar;
        this.f10642c = adzVar;
        this.f10643d = (dsj) adzVar.f10070a;
        this.f10640a = cwxVar;
    }

    @Override // g.dhc
    public final cwx e(gcu gcuVar) {
        cwx g2 = gcuVar.g(this.f10642c.j(0));
        emr emrVar = this.f10641b.o;
        cwx cwxVar = this.f10640a;
        cwx z = emrVar.z(g2, g2, cwxVar);
        return (z == null || (z instanceof gzg)) ? cwxVar : z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || apz.class != obj.getClass()) {
            return false;
        }
        return this.f10642c.equals(((apz) obj).f10642c);
    }

    @Override // g.fog
    public final au f() {
        return au.ASSIGN;
    }

    @Override // g.fog
    public final cwx getType() {
        cwx j = this.f10642c.j(0).j();
        emr emrVar = this.f10641b.o;
        cwx cwxVar = this.f10640a;
        cwx z = emrVar.z(j, j, cwxVar);
        return (z == null || (z instanceof gzg)) ? cwxVar : z;
    }

    public final int hashCode() {
        return this.f10642c.hashCode();
    }

    public final String toString() {
        return "FieldGetAssign{" + this.f10643d + ", type=" + getType() + ", instanceArg=" + this.f10642c.j(0) + '}';
    }
}

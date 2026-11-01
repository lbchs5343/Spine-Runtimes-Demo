package g;

/* loaded from: classes.dex */
public final class flg implements dhc {

    /* renamed from: a, reason: collision with root package name */
    public final cwx f16966a;

    /* renamed from: b, reason: collision with root package name */
    public final dwg f16967b;

    /* renamed from: c, reason: collision with root package name */
    public final gif f16968c;

    /* renamed from: d, reason: collision with root package name */
    public final gks f16969d;

    public flg(dwg dwgVar, gif gifVar, gks gksVar, cwx cwxVar) {
        this.f16967b = dwgVar;
        this.f16968c = gifVar;
        this.f16969d = gksVar;
        this.f16966a = cwxVar;
    }

    @Override // g.dhc
    public final cwx e(gcu gcuVar) {
        cwx g2 = gcuVar.g(this.f16968c.aa());
        cwx g3 = gcuVar.g(this.f16969d);
        cwx z = this.f16967b.o.z(g2, g2, this.f16966a);
        return z != null ? z : g3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || flg.class != obj.getClass()) {
            return false;
        }
        return this.f16968c.equals(((flg) obj).f16968c);
    }

    @Override // g.fog
    public final au f() {
        return au.USE;
    }

    @Override // g.fog
    public final cwx getType() {
        cwx j = this.f16968c.aa().j();
        cwx j2 = this.f16969d.j();
        cwx z = this.f16967b.o.z(j, j, this.f16966a);
        return z != null ? z : j2;
    }

    public final int hashCode() {
        return this.f16968c.hashCode();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("InvokeAssign{");
        gif gifVar = this.f16968c;
        sb.append(gifVar.ac().f11077e);
        sb.append(", argType=");
        sb.append(this.f16966a);
        sb.append(", currentType=");
        sb.append(getType());
        sb.append(", instanceArg=");
        sb.append(gifVar.aa());
        sb.append('}');
        return sb.toString();
    }
}

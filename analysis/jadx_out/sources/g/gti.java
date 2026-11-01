package g;

/* loaded from: classes.dex */
public final class gti implements dhc {

    /* renamed from: a, reason: collision with root package name */
    public final dwg f18720a;

    /* renamed from: b, reason: collision with root package name */
    public final hdc f18721b;

    /* renamed from: c, reason: collision with root package name */
    public final cwx f18722c;

    public gti(dwg dwgVar, hdc hdcVar, cwx cwxVar) {
        this.f18720a = dwgVar;
        this.f18721b = hdcVar;
        this.f18722c = cwxVar;
    }

    public final cwx d(cwx cwxVar) {
        dwg dwgVar = this.f18720a;
        fnq fnqVar = dwgVar.f14930b;
        hdc hdcVar = this.f18721b;
        ebp r = fnqVar.r(hdcVar);
        cwx z = dwgVar.o.z(cwxVar, r != null ? r.j().f11076d.f20149d : cwxVar, this.f18722c);
        if (z == null) {
            z = null;
        } else if (z instanceof gzg) {
            z = z.bo();
        }
        return z != null ? z : hdcVar.ad.f11079g;
    }

    @Override // g.dhc
    public final cwx e(gcu gcuVar) {
        return d(gcuVar.g(this.f18721b.j(0)));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || gti.class != obj.getClass()) {
            return false;
        }
        return this.f18721b.equals(((gti) obj).f18721b);
    }

    @Override // g.fog
    public final au f() {
        return au.ASSIGN;
    }

    @Override // g.fog
    public final cwx getType() {
        return d(this.f18721b.j(0).j());
    }

    public final int hashCode() {
        return this.f18721b.hashCode();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("InvokeAssign{");
        hdc hdcVar = this.f18721b;
        sb.append(hdcVar.ad.f11077e);
        sb.append(", returnType=");
        sb.append(this.f18722c);
        sb.append(", currentType=");
        sb.append(getType());
        sb.append(", instanceArg=");
        sb.append(hdcVar.j(0));
        sb.append('}');
        return sb.toString();
    }
}

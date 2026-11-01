package g;

import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class hcd extends ebh implements chf {

    /* renamed from: d, reason: collision with root package name */
    public List f19214d = Collections.EMPTY_LIST;

    /* renamed from: e, reason: collision with root package name */
    public cwx f19215e;

    /* renamed from: f, reason: collision with root package name */
    public final cci f19216f;

    /* renamed from: g, reason: collision with root package name */
    public final dsj f19217g;
    public gqc h;

    public hcd(cci cciVar, dsj dsjVar, int i) {
        this.f19216f = cciVar;
        this.f19217g = dsjVar;
        this.f19215e = dsjVar.f14709a;
        this.h = new gqc(i, frh.FIELD, 1);
    }

    @Override // g.awj
    public final String _by() {
        return this.f19216f.x;
    }

    @Override // g.awj
    public final dwg a() {
        return this.f19216f.f12631ab;
    }

    @Override // g.gut
    public final gqc ay() {
        return this.h;
    }

    @Override // g.cdv
    public final pk b() {
        return pk.FIELD;
    }

    @Override // g.gut
    public final void bc(gqc gqcVar) {
        this.h = gqcVar;
    }

    @Override // g.chf
    public final dsj c() {
        return this.f19217g;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || hcd.class != obj.getClass()) {
            return false;
        }
        return this.f19217g.equals(((hcd) obj).f19217g);
    }

    @Override // g.gut
    public final cci getDeclaringClass() {
        return this.f19216f;
    }

    public final int hashCode() {
        return this.f19217g.hashCode();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        dsj dsjVar = this.f19217g;
        sb.append(dsjVar.f14711d);
        sb.append(".");
        sb.append(dsjVar.f14712e);
        sb.append(" :");
        sb.append(this.f19215e);
        return sb.toString();
    }

    @Override // g.awj
    public final String typeName() {
        return "field";
    }
}

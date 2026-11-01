package g;

import j$.util.Objects;

/* loaded from: classes.dex */
public final class gks extends gsh implements ehh {

    /* renamed from: a, reason: collision with root package name */
    public vm f18326a;

    /* renamed from: e, reason: collision with root package name */
    public final int f18327e;

    public gks(int i, cwx cwxVar) {
        this.h = cwxVar;
        this.f18327e = i;
    }

    public final eek aa() {
        vm vmVar = this.f18326a;
        if (vmVar == null) {
            return null;
        }
        return vmVar.f20177c.ae;
    }

    public final gks ab(int i, cwx cwxVar, vm vmVar) {
        gks gksVar = new gks(i, cwxVar);
        if (vmVar != null) {
            gksVar.f18326a = vmVar;
        }
        gksVar.s(this);
        gksVar._bb(this.ae);
        return gksVar;
    }

    public final gks ac(hed hedVar) {
        gks ab2 = ab(this.f18327e, this.h, null);
        hedVar.bn(ab2);
        return ab2;
    }

    @Override // g.ehh
    public final void c(String str) {
        vm vmVar = this.f18326a;
        if (vmVar == null || str == null) {
            return;
        }
        ejb ejbVar = vmVar.f20176b;
        if (ejbVar != null) {
            ejbVar.f15630c = str;
        } else {
            throw new gck("CodeVar not initialized for name set in SSAVar: " + vmVar);
        }
    }

    @Override // g.gsh
    public final String d() {
        StringBuilder sb = new StringBuilder("r");
        sb.append(this.f18327e);
        if (this.f18326a != null) {
            sb.append('v');
            sb.append(this.f18326a.f20181g);
        }
        return sb.toString();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof gks)) {
            return false;
        }
        gks gksVar = (gks) obj;
        return this.f18327e == gksVar.f18327e && Objects.equals(this.f18326a, gksVar.f18326a);
    }

    @Override // g.flv
    public final void f(cwx cwxVar) {
        vm vmVar = this.f18326a;
        if (vmVar != null) {
            vmVar.s(cwxVar);
        } else {
            throw new gck("Can't change type for register without SSA variable: " + this);
        }
    }

    @Override // g.ehh
    public final String getName() {
        if (this.l.g(csv.SUPER)) {
            return "super";
        }
        if (al()) {
            return "this";
        }
        vm vmVar = this.f18326a;
        if (vmVar == null) {
            return null;
        }
        return vmVar.o();
    }

    public final int hashCode() {
        return this.f18327e;
    }

    @Override // g.flv
    public final boolean i() {
        vm vmVar = this.f18326a;
        if (vmVar != null) {
            return vmVar.i();
        }
        return this.l.g(csv.IMMUTABLE_TYPE);
    }

    @Override // g.flv
    public final cwx j() {
        vm vmVar = this.f18326a;
        return vmVar != null ? (cwx) vmVar.h.f16721f : cwx.ad;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("(r");
        sb.append(this.f18327e);
        if (this.f18326a != null) {
            sb.append('v');
            sb.append(this.f18326a.f20181g);
        }
        if (getName() != null) {
            sb.append(" '");
            sb.append(getName());
            sb.append('\'');
        }
        cwx j = this.f18326a != null ? j() : null;
        if (j != null) {
            sb.append(' ');
            sb.append(j);
        }
        cwx cwxVar = this.h;
        if (j == null || (!j.equals(cwxVar) && !j.h())) {
            sb.append(" I:");
            sb.append(cwxVar);
        }
        if (!this.l.h()) {
            sb.append(' ');
            sb.append(this.l.toString());
        }
        sb.append(')');
        return sb.toString();
    }

    public final boolean x(gsh gshVar) {
        if (this == gshVar) {
            return true;
        }
        gshVar.getClass();
        if (!(gshVar instanceof gks)) {
            return false;
        }
        gks gksVar = (gks) gshVar;
        return this.f18327e == gksVar.f18327e && Objects.equals(this.f18326a, gksVar.f18326a);
    }

    public final boolean y(gks gksVar) {
        return this.f18326a.u() == gksVar.f18326a.u();
    }

    @Override // g.gsh
    /* renamed from: z, reason: merged with bridge method [inline-methods] */
    public final gks b() {
        return ab(this.f18327e, this.h, this.f18326a);
    }
}

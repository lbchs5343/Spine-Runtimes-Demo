package g;

/* loaded from: classes.dex */
public final class cmw implements cfr {

    /* renamed from: a, reason: collision with root package name */
    public final int f13145a;

    /* renamed from: c, reason: collision with root package name */
    public final String f13146c;

    /* renamed from: d, reason: collision with root package name */
    public int f13147d;

    /* renamed from: e, reason: collision with root package name */
    public final hed f13148e;

    /* renamed from: f, reason: collision with root package name */
    public final int f13149f;

    /* renamed from: g, reason: collision with root package name */
    public final fbu f13150g;

    public cmw(hed hedVar, vm vmVar) {
        int i = vmVar.f20180f;
        int i2 = vmVar.f20181g;
        cwx cwxVar = vmVar.u().f15632e;
        String str = vmVar.u().f15630c;
        this.f13148e = hedVar;
        this.f13149f = i;
        this.f13145a = i2;
        this.f13146c = str;
        this.f13150g = new fbu(this);
    }

    public static cmw h(hed hedVar, vm vmVar) {
        ejb u = vmVar.u();
        if (u.f15629b) {
            return null;
        }
        cmw cmwVar = u.f15634g;
        if (cmwVar != null) {
            return cmwVar;
        }
        cmw cmwVar2 = new cmw(hedVar, vmVar);
        u.f15634g = cmwVar2;
        return cmwVar2;
    }

    @Override // g.cdv
    public final pk b() {
        return pk.VAR;
    }

    @Override // g.cfr
    public final void bq(int i) {
        this.f13147d = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof cmw)) {
            return false;
        }
        cmw cmwVar = (cmw) obj;
        return this.f13149f == cmwVar.f13149f && this.f13145a == cmwVar.f13145a && this.f13148e.equals(cmwVar.f13148e);
    }

    public final int hashCode() {
        return (((this.f13149f * 31) + this.f13145a) * 31) + this.f13148e.al.f11074b;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("VarNode{r");
        sb.append(this.f13149f);
        sb.append('v');
        return awf.s(sb, this.f13145a, '}');
    }
}

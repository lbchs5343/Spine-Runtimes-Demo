package g;

/* loaded from: classes.dex */
public final class fbu implements cdv {

    /* renamed from: a, reason: collision with root package name */
    public final cmw f16533a;

    public fbu(cmw cmwVar) {
        this.f16533a = cmwVar;
    }

    @Override // g.cdv
    public final pk b() {
        return pk.VAR_REF;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("VarRef{");
        cmw cmwVar = this.f16533a;
        sb.append(cmwVar);
        sb.append(", name=");
        sb.append(cmwVar.f13146c);
        sb.append(", mth=");
        sb.append(cmwVar.f13148e);
        sb.append('}');
        return sb.toString();
    }
}

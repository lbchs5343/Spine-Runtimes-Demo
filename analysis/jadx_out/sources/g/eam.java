package g;

/* loaded from: classes3.dex */
public final class eam implements dsb {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ bke f15198a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f15199b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Class f15200c;

    public /* synthetic */ eam(Class cls, bke bkeVar, int i) {
        this.f15199b = i;
        this.f15200c = cls;
        this.f15198a = bkeVar;
    }

    @Override // g.dsb
    public final bke j(eem eemVar, ri riVar) {
        switch (this.f15199b) {
            case 0:
                if (riVar.f19901a == this.f15200c) {
                    return this.f15198a;
                }
                return null;
            default:
                if (this.f15200c.isAssignableFrom(riVar.f19901a)) {
                    return new apk(this);
                }
                return null;
        }
    }

    public final String toString() {
        switch (this.f15199b) {
            case 0:
                return "Factory[type=" + this.f15200c.getName() + ",adapter=" + this.f15198a + "]";
            default:
                return "Factory[typeHierarchy=" + this.f15200c.getName() + ",adapter=" + this.f15198a + "]";
        }
    }
}

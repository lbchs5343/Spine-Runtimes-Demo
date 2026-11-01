package g;

/* loaded from: classes3.dex */
public final class dap implements dsb {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ bke f13863a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Class f13864b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Class f13865c;

    public dap(Class cls, Class cls2, bke bkeVar) {
        this.f13864b = cls;
        this.f13865c = cls2;
        this.f13863a = bkeVar;
    }

    @Override // g.dsb
    public final bke j(eem eemVar, ri riVar) {
        Class cls = riVar.f19901a;
        if (cls == this.f13864b || cls == this.f13865c) {
            return this.f13863a;
        }
        return null;
    }

    public final String toString() {
        return "Factory[type=" + this.f13865c.getName() + "+" + this.f13864b.getName() + ",adapter=" + this.f13863a + "]";
    }
}

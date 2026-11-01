package g;

/* loaded from: classes.dex */
public abstract class cbt implements faq {

    /* renamed from: b, reason: collision with root package name */
    public faq f12608b;

    /* renamed from: c, reason: collision with root package name */
    public faq f12609c;

    /* renamed from: e, reason: collision with root package name */
    public final ekx f12610e;

    public cbt(ekx ekxVar) {
        this.f12610e = ekxVar;
    }

    @Override // g.faq
    public final String d() {
        return this.f12608b.d() + this.f12610e.f() + this.f12609c.d();
    }

    @Override // g.faq
    public final axb dq() {
        return gt.dq;
    }

    public String toString() {
        return d();
    }
}

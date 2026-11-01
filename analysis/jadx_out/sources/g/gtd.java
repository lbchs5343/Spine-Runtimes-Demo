package g;

/* loaded from: classes.dex */
public final class gtd implements dpy {

    /* renamed from: a, reason: collision with root package name */
    public final cxp f18715a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f18716b;

    public gtd(String str, cxp cxpVar, boolean z) {
        this.f18715a = cxpVar;
        this.f18716b = z;
    }

    @Override // g.dpy
    public final dvz e(fts ftsVar, cgf cgfVar, grq grqVar) {
        return new sg(this);
    }

    public final String toString() {
        return "MergePaths{mode=" + this.f18715a + '}';
    }
}

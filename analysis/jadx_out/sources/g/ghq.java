package g;

/* loaded from: classes.dex */
public final class ghq implements dpy {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f18170a;

    /* renamed from: b, reason: collision with root package name */
    public final eqn f18171b;

    /* renamed from: c, reason: collision with root package name */
    public final dlz f18172c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f18173d;

    public ghq(String str, eqn eqnVar, dlz dlzVar, boolean z, boolean z2) {
        this.f18171b = eqnVar;
        this.f18172c = dlzVar;
        this.f18173d = z;
        this.f18170a = z2;
    }

    @Override // g.dpy
    public final dvz e(fts ftsVar, cgf cgfVar, grq grqVar) {
        return new fop(ftsVar, grqVar, this);
    }
}

package g;

/* loaded from: classes.dex */
public final class cup implements dpy {

    /* renamed from: a, reason: collision with root package name */
    public final cnc f13539a;

    /* renamed from: b, reason: collision with root package name */
    public final cnc f13540b;

    /* renamed from: c, reason: collision with root package name */
    public final cnc f13541c;

    /* renamed from: d, reason: collision with root package name */
    public final ezt f13542d;

    /* renamed from: f, reason: collision with root package name */
    public final cnc f13543f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f13544g;
    public final cnc h;
    public final boolean i;
    public final eqn j;
    public final cnc k;

    public cup(String str, ezt eztVar, cnc cncVar, eqn eqnVar, cnc cncVar2, cnc cncVar3, cnc cncVar4, cnc cncVar5, cnc cncVar6, boolean z, boolean z2) {
        this.f13542d = eztVar;
        this.h = cncVar;
        this.j = eqnVar;
        this.f13540b = cncVar2;
        this.f13541c = cncVar3;
        this.f13543f = cncVar4;
        this.k = cncVar5;
        this.f13539a = cncVar6;
        this.f13544g = z;
        this.i = z2;
    }

    @Override // g.dpy
    public final dvz e(fts ftsVar, cgf cgfVar, grq grqVar) {
        return new gpb(ftsVar, grqVar, this);
    }

    public ezt getType() {
        return this.f13542d;
    }
}

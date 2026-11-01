package g;

/* loaded from: classes.dex */
public final class cxl implements dpy {

    /* renamed from: a, reason: collision with root package name */
    public final cnc f13689a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f13690b;

    /* renamed from: c, reason: collision with root package name */
    public final eyu f13691c;

    /* renamed from: d, reason: collision with root package name */
    public final cnc f13692d;

    /* renamed from: f, reason: collision with root package name */
    public final cnc f13693f;

    public cxl(String str, eyu eyuVar, cnc cncVar, cnc cncVar2, cnc cncVar3, boolean z) {
        this.f13691c = eyuVar;
        this.f13692d = cncVar;
        this.f13693f = cncVar2;
        this.f13689a = cncVar3;
        this.f13690b = z;
    }

    @Override // g.dpy
    public final dvz e(fts ftsVar, cgf cgfVar, grq grqVar) {
        return new ejw(grqVar, this);
    }

    public eyu getType() {
        return this.f13691c;
    }

    public final String toString() {
        return "Trim Path: {start: " + this.f13692d + ", end: " + this.f13693f + ", offset: " + this.f13689a + "}";
    }
}

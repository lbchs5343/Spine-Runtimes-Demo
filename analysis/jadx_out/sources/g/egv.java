package g;

/* loaded from: classes.dex */
public final class egv implements dpy {

    /* renamed from: a, reason: collision with root package name */
    public final eqn f15520a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f15521b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f15522c = 0;

    /* renamed from: d, reason: collision with root package name */
    public final cnc f15523d;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f15524f;

    public egv(String str, cnc cncVar, cnc cncVar2, eld eldVar, boolean z) {
        this.f15523d = cncVar;
        this.f15520a = cncVar2;
        this.f15521b = eldVar;
        this.f15524f = z;
    }

    public egv(String str, eqn eqnVar, dlz dlzVar, cnc cncVar, boolean z) {
        this.f15520a = eqnVar;
        this.f15521b = dlzVar;
        this.f15523d = cncVar;
        this.f15524f = z;
    }

    @Override // g.dpy
    public final dvz e(fts ftsVar, cgf cgfVar, grq grqVar) {
        switch (this.f15522c) {
            case 0:
                return new me(ftsVar, grqVar, this);
            default:
                return new gnd(ftsVar, grqVar, this);
        }
    }

    public String toString() {
        switch (this.f15522c) {
            case 1:
                return "RectangleShape{position=" + this.f15520a + ", size=" + ((eqn) this.f15521b) + '}';
            default:
                return super.toString();
        }
    }
}

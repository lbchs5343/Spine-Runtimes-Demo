package g;

/* loaded from: classes.dex */
public final /* synthetic */ class apa implements dle {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10603a;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ cqz f10604c;

    public /* synthetic */ apa(int i, cqz cqzVar) {
        this.f10603a = i;
        this.f10604c = cqzVar;
    }

    private final /* synthetic */ void e(ggu gguVar) {
    }

    private final /* synthetic */ void f(ggu gguVar) {
    }

    @Override // g.dle
    public final void _bt(ggu gguVar) {
        switch (this.f10603a) {
            case 0:
                gguVar.n(2);
                gguVar.n(1);
                gguVar.j(0, this.f10604c);
                break;
            default:
                gguVar.n(1);
                gguVar.j(0, this.f10604c);
                break;
        }
    }

    @Override // g.dle
    public final /* synthetic */ void _ct(ggu gguVar) {
        int i = this.f10603a;
    }
}

package g;

/* loaded from: classes.dex */
public final class ddn implements fyj {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ grq f14022a;

    public ddn(grq grqVar) {
        this.f14022a = grqVar;
    }

    @Override // g.fyj
    public final void dq() {
        grq grqVar = this.f14022a;
        boolean z = grqVar.bf.c() == 1.0f;
        if (z != grqVar.bd) {
            grqVar.bd = z;
            grqVar.af.invalidateSelf();
        }
    }
}

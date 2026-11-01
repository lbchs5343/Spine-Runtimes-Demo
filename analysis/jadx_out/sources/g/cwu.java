package g;

/* loaded from: classes.dex */
public final class cwu implements gyx {

    /* renamed from: a, reason: collision with root package name */
    public final bcn f13650a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ androidx.activity.b f13651b;

    public cwu(androidx.activity.b bVar, bcn bcnVar) {
        bff.p(bcnVar, "onBackPressedCallback");
        this.f13651b = bVar;
        this.f13650a = bcnVar;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [g.cvw, g.fgb] */
    @Override // g.gyx
    public final void cancel() {
        androidx.activity.b bVar = this.f13651b;
        fbz fbzVar = bVar.f26e;
        bcn bcnVar = this.f13650a;
        fbzVar.remove(bcnVar);
        if (bff.n(bVar.f27f, bcnVar)) {
            bcnVar.getClass();
            bVar.f27f = null;
        }
        bcnVar.f11286d.remove(this);
        ?? r0 = bcnVar.f11287e;
        if (r0 != 0) {
            r0.invoke();
        }
        bcnVar.f11287e = null;
    }
}

package g;

/* loaded from: classes.dex */
public final class fmc extends bfm {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ amh f17025d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fmc(amh amhVar, eek eekVar, gks gksVar) {
        super(eekVar, gksVar);
        this.f17025d = amhVar;
    }

    @Override // g.bfm
    public final boolean c(eie eieVar) {
        eek eekVar = this.f11452a;
        dho h = this.f17025d.f10471d.h(eieVar.p(eekVar.ai), eieVar.p(eekVar.j(0)));
        return h.d() || h.b();
    }
}

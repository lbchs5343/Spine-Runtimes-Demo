package g;

/* loaded from: classes.dex */
public final class flz {

    /* renamed from: d, reason: collision with root package name */
    private final egu f17022d;

    /* renamed from: e, reason: collision with root package name */
    private final ccc f17023e;

    public flz(egu eguVar, ccc cccVar) {
        bff.p(eguVar, "processor");
        bff.p(cccVar, "workTaskExecutor");
        this.f17022d = eguVar;
        this.f17023e = cccVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(flz flzVar, aci aciVar, dsp dspVar) {
        flzVar.f17022d.r(aciVar, dspVar);
    }

    public void b(aci aciVar, int i) {
        bff.p(aciVar, "workSpecId");
        ((gkr) this.f17023e).s(new gkp(this.f17022d, aciVar, false, i));
    }

    public void c(aci aciVar, dsp dspVar) {
        bff.p(aciVar, "workSpecId");
        ((gkr) this.f17023e).s(new gtt(this, aciVar, dspVar, 7));
    }
}

package g;

/* loaded from: classes3.dex */
public final class ggp extends afp {
    public final /* synthetic */ apy o;

    public ggp(apy apyVar) {
        this.o = apyVar;
    }

    @Override // g.afp
    public final String n() {
        ewi ewiVar = (ewi) this.o.f10638a.get();
        return ewiVar == null ? "Completer object has been garbage collected, future will fail soon" : tn.ad("tag=[", String.valueOf(ewiVar.f16273b), "]");
    }
}

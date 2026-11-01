package g;

/* loaded from: classes.dex */
public final class cjz extends axr implements and {
    final /* synthetic */ ayw $$this$callbackFlow;
    final /* synthetic */ dta $timeoutJob;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cjz(fe feVar, ayw aywVar) {
        super(1);
        this.$timeoutJob = feVar;
        this.$$this$callbackFlow = aywVar;
    }

    @Override // g.and
    public final Object invoke(Object obj) {
        bfx bfxVar = (bfx) obj;
        bff.p(bfxVar, "it");
        this.$timeoutJob._bi(null);
        ((dgs) this.$$this$callbackFlow).e(bfxVar);
        return dgi.f14134a;
    }
}

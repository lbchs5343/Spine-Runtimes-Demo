package g;

/* loaded from: classes.dex */
public final class aqh extends axr implements and {
    final /* synthetic */ dcy $this_awaitWithin;
    final /* synthetic */ cg $worker;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public aqh(cg cgVar, dcy dcyVar) {
        super(1);
        this.$worker = cgVar;
        this.$this_awaitWithin = dcyVar;
    }

    @Override // g.and
    public final Object invoke(Object obj) {
        Throwable th = (Throwable) obj;
        if (th instanceof gfr) {
            this.$worker.stop(((gfr) th).a());
        }
        this.$this_awaitWithin.cancel(false);
        return dgi.f14134a;
    }
}

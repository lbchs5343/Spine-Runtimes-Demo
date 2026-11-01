package g;

/* loaded from: classes.dex */
public final class fen extends axr implements and {
    final /* synthetic */ dcy $this_await$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fen(dcy dcyVar) {
        super(1);
        this.$this_await$inlined = dcyVar;
    }

    @Override // g.and
    public final Object invoke(Object obj) {
        this.$this_await$inlined.cancel(false);
        return dgi.f14134a;
    }
}

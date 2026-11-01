package g;

/* loaded from: classes.dex */
public final class ggn extends axr implements and {
    final /* synthetic */ Runnable $block;
    final /* synthetic */ drl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ggn(drl drlVar, gfh gfhVar) {
        super(1);
        this.this$0 = drlVar;
        this.$block = gfhVar;
    }

    @Override // g.and
    public final Object invoke(Object obj) {
        this.this$0.f14671a.removeCallbacks(this.$block);
        return dgi.f14134a;
    }
}

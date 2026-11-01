package g;

/* loaded from: classes.dex */
public final class fxa extends axr implements cvw {
    final /* synthetic */ String $name;
    final /* synthetic */ fxb $this_enqueueUniquelyNamedPeriodic;
    final /* synthetic */ dze $workRequest;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fxa(dze dzeVar, fxb fxbVar, String str) {
        super(0);
        this.$workRequest = dzeVar;
        this.$this_enqueueUniquelyNamedPeriodic = fxbVar;
        this.$name = str;
    }

    @Override // g.cvw
    public final Object invoke() {
        dna.b(new pc(this.$this_enqueueUniquelyNamedPeriodic, this.$name, dne.KEEP, cro.r(this.$workRequest), 0));
        return dgi.f14134a;
    }
}

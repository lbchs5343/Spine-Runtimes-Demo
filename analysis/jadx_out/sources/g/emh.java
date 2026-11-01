package g;

/* loaded from: classes.dex */
public final class emh extends axr implements cvw {
    final /* synthetic */ edv $listener;
    final /* synthetic */ bvw this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public emh(bvw bvwVar, edv edvVar) {
        super(0);
        this.this$0 = bvwVar;
        this.$listener = edvVar;
    }

    @Override // g.cvw
    public final Object invoke() {
        cmh cmhVar = this.this$0.f12291d;
        edv edvVar = this.$listener;
        cmhVar.getClass();
        bff.p(edvVar, "listener");
        synchronized (cmhVar.j) {
            if (cmhVar.f13117f.remove(edvVar) && cmhVar.f13117f.isEmpty()) {
                cmhVar.c();
            }
        }
        return dgi.f14134a;
    }
}

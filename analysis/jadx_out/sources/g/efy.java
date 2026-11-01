package g;

/* loaded from: classes3.dex */
public final class efy implements gxn {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ecd f15465a;

    public efy(ecd ecdVar) {
        this.f15465a = ecdVar;
    }

    @Override // g.gxn
    public final void b(boolean z) {
        dae daeVar = this.f15465a.q;
        daeVar.sendMessage(daeVar.obtainMessage(1, Boolean.valueOf(z)));
    }
}

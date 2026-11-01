package g;

/* loaded from: classes3.dex */
public final class ckw extends ewq {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ aju f13043a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ fvd f13044b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ckw(fvd fvdVar, aju ajuVar, evq evqVar) {
        super(evqVar);
        this.f13044b = fvdVar;
        this.f13043a = ajuVar;
    }

    @Override // g.ewq, g.evq, java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
    public final void close() {
        fvd fvdVar = this.f13044b;
        aju ajuVar = this.f13043a;
        synchronized (fvdVar) {
            if (ajuVar.f10345c) {
                return;
            }
            ajuVar.f10345c = true;
            super.close();
            ((abv) this.f13043a.f10346d).g();
        }
    }
}

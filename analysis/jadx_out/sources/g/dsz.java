package g;

/* loaded from: classes3.dex */
public final class dsz extends gnx {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ fxy f14749a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ egq f14750b;

    /* renamed from: d, reason: collision with root package name */
    public boolean f14751d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dsz(dix dixVar, fxy fxyVar, egq egqVar) {
        super(dixVar);
        this.f14749a = fxyVar;
        this.f14750b = egqVar;
    }

    @Override // g.gnx, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        super.close();
        if (this.f14751d) {
            return;
        }
        this.f14751d = true;
        fxy fxyVar = this.f14749a;
        egq egqVar = this.f14750b;
        synchronized (fxyVar) {
            int i = egqVar.f15505a - 1;
            egqVar.f15505a = i;
            if (i == 0 && egqVar.f15509e) {
                fxyVar.ab(egqVar);
            }
        }
    }
}

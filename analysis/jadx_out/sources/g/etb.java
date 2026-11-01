package g;

/* loaded from: classes3.dex */
public final class etb extends fyg {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ug f16138a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f16139b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public etb(String str, ug ugVar, int i, amc amcVar) {
        super(str, true);
        this.f16138a = ugVar;
        this.f16139b = i;
    }

    @Override // g.fyg
    public final long c() {
        this.f16138a.l.getClass();
        synchronized (this.f16138a) {
            this.f16138a.f20093f.remove(Integer.valueOf(this.f16139b));
        }
        return -1L;
    }
}

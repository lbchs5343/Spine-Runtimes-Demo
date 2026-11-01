package j$.util.stream;

/* renamed from: j$.util.stream.v2, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0396v2 extends AbstractC0327h2 {

    /* renamed from: b, reason: collision with root package name */
    public long f21113b;

    /* renamed from: c, reason: collision with root package name */
    public long f21114c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ C0401w2 f21115d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0396v2(C0401w2 c0401w2, InterfaceC0362o2 interfaceC0362o2) {
        super(interfaceC0362o2);
        this.f21115d = c0401w2;
        this.f21113b = c0401w2.s;
        long j = c0401w2.t;
        this.f21114c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // j$.util.stream.InterfaceC0347l2, java.util.function.DoubleConsumer
    public final void accept(double d2) {
        long j = this.f21113b;
        if (j != 0) {
            this.f21113b = j - 1;
            return;
        }
        long j2 = this.f21114c;
        if (j2 > 0) {
            this.f21114c = j2 - 1;
            this.f21041a.accept(d2);
        }
    }

    @Override // j$.util.stream.AbstractC0327h2, j$.util.stream.InterfaceC0362o2
    public final void c(long j) {
        this.f21041a.c(AbstractC0405x1.W(j, this.f21115d.s, this.f21114c));
    }

    @Override // j$.util.stream.AbstractC0327h2, j$.util.stream.InterfaceC0362o2
    public final boolean e() {
        return this.f21114c == 0 || this.f21041a.e();
    }
}

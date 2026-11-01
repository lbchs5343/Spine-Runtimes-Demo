package j$.util.stream;

/* renamed from: j$.util.stream.r2, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0376r2 extends AbstractC0332i2 {

    /* renamed from: b, reason: collision with root package name */
    public long f21095b;

    /* renamed from: c, reason: collision with root package name */
    public long f21096c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ C0381s2 f21097d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0376r2(C0381s2 c0381s2, InterfaceC0362o2 interfaceC0362o2) {
        super(interfaceC0362o2);
        this.f21097d = c0381s2;
        this.f21095b = c0381s2.s;
        long j = c0381s2.t;
        this.f21096c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // j$.util.stream.InterfaceC0352m2, j$.util.stream.InterfaceC0362o2
    public final void accept(int i) {
        long j = this.f21095b;
        if (j != 0) {
            this.f21095b = j - 1;
            return;
        }
        long j2 = this.f21096c;
        if (j2 > 0) {
            this.f21096c = j2 - 1;
            this.f21044a.accept(i);
        }
    }

    @Override // j$.util.stream.AbstractC0332i2, j$.util.stream.InterfaceC0362o2
    public final void c(long j) {
        this.f21044a.c(AbstractC0405x1.W(j, this.f21097d.s, this.f21096c));
    }

    @Override // j$.util.stream.AbstractC0332i2, j$.util.stream.InterfaceC0362o2
    public final boolean e() {
        return this.f21096c == 0 || this.f21044a.e();
    }
}

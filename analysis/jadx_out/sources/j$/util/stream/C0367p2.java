package j$.util.stream;

/* renamed from: j$.util.stream.p2, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0367p2 extends AbstractC0342k2 {

    /* renamed from: b, reason: collision with root package name */
    public long f21086b;

    /* renamed from: c, reason: collision with root package name */
    public long f21087c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ C0372q2 f21088d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0367p2(C0372q2 c0372q2, InterfaceC0362o2 interfaceC0362o2) {
        super(interfaceC0362o2);
        this.f21088d = c0372q2;
        this.f21086b = c0372q2.s;
        long j = c0372q2.t;
        this.f21087c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void n(Object obj) {
        long j = this.f21086b;
        if (j != 0) {
            this.f21086b = j - 1;
            return;
        }
        long j2 = this.f21087c;
        if (j2 > 0) {
            this.f21087c = j2 - 1;
            this.f21057a.n((InterfaceC0362o2) obj);
        }
    }

    @Override // j$.util.stream.AbstractC0342k2, j$.util.stream.InterfaceC0362o2
    public final void c(long j) {
        this.f21057a.c(AbstractC0405x1.W(j, this.f21088d.s, this.f21087c));
    }

    @Override // j$.util.stream.AbstractC0342k2, j$.util.stream.InterfaceC0362o2
    public final boolean e() {
        return this.f21087c == 0 || this.f21057a.e();
    }
}

package j$.util.stream;

/* renamed from: j$.util.stream.t2, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0386t2 extends AbstractC0337j2 {

    /* renamed from: b, reason: collision with root package name */
    public long f21105b;

    /* renamed from: c, reason: collision with root package name */
    public long f21106c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ C0391u2 f21107d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0386t2(C0391u2 c0391u2, InterfaceC0362o2 interfaceC0362o2) {
        super(interfaceC0362o2);
        this.f21107d = c0391u2;
        this.f21105b = c0391u2.s;
        long j = c0391u2.t;
        this.f21106c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // j$.util.stream.InterfaceC0357n2, j$.util.stream.InterfaceC0362o2
    public final void accept(long j) {
        long j2 = this.f21105b;
        if (j2 != 0) {
            this.f21105b = j2 - 1;
            return;
        }
        long j3 = this.f21106c;
        if (j3 > 0) {
            this.f21106c = j3 - 1;
            this.f21050a.accept(j);
        }
    }

    @Override // j$.util.stream.AbstractC0337j2, j$.util.stream.InterfaceC0362o2
    public final void c(long j) {
        this.f21050a.c(AbstractC0405x1.W(j, this.f21107d.s, this.f21106c));
    }

    @Override // j$.util.stream.AbstractC0337j2, j$.util.stream.InterfaceC0362o2
    public final boolean e() {
        return this.f21106c == 0 || this.f21050a.e();
    }
}

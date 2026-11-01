package j$.util.stream;

import java.util.function.LongPredicate;

/* loaded from: classes2.dex */
public final class P3 extends AbstractC0337j2 {

    /* renamed from: b, reason: collision with root package name */
    public final boolean f20931b;

    public P3(I2 i2, InterfaceC0362o2 interfaceC0362o2) {
        super(interfaceC0362o2);
        this.f20931b = true;
    }

    @Override // j$.util.stream.InterfaceC0357n2, j$.util.stream.InterfaceC0362o2
    public final void accept(long j) {
        if (this.f20931b) {
            LongPredicate longPredicate = null;
            longPredicate.test(j);
            throw null;
        }
    }

    @Override // j$.util.stream.AbstractC0337j2, j$.util.stream.InterfaceC0362o2
    public final void c(long j) {
        this.f21050a.c(-1L);
    }

    @Override // j$.util.stream.AbstractC0337j2, j$.util.stream.InterfaceC0362o2
    public final boolean e() {
        return !this.f20931b || this.f21050a.e();
    }
}

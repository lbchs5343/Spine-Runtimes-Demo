package j$.util.stream;

import java.util.function.IntPredicate;

/* loaded from: classes2.dex */
public final class M3 extends AbstractC0332i2 {

    /* renamed from: b, reason: collision with root package name */
    public final boolean f20911b;

    public M3(H2 h2, InterfaceC0362o2 interfaceC0362o2) {
        super(interfaceC0362o2);
        this.f20911b = true;
    }

    @Override // j$.util.stream.InterfaceC0352m2, j$.util.stream.InterfaceC0362o2
    public final void accept(int i) {
        if (this.f20911b) {
            IntPredicate intPredicate = null;
            intPredicate.test(i);
            throw null;
        }
    }

    @Override // j$.util.stream.AbstractC0332i2, j$.util.stream.InterfaceC0362o2
    public final void c(long j) {
        this.f21044a.c(-1L);
    }

    @Override // j$.util.stream.AbstractC0332i2, j$.util.stream.InterfaceC0362o2
    public final boolean e() {
        return !this.f20911b || this.f21044a.e();
    }
}

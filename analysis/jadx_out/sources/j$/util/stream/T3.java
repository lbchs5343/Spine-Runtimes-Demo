package j$.util.stream;

import java.util.function.DoublePredicate;

/* loaded from: classes2.dex */
public final class T3 extends AbstractC0327h2 {

    /* renamed from: b, reason: collision with root package name */
    public final boolean f20953b;

    public T3(G2 g2, InterfaceC0362o2 interfaceC0362o2) {
        super(interfaceC0362o2);
        this.f20953b = true;
    }

    @Override // j$.util.stream.InterfaceC0347l2, java.util.function.DoubleConsumer
    public final void accept(double d2) {
        if (this.f20953b) {
            DoublePredicate doublePredicate = null;
            doublePredicate.test(d2);
            throw null;
        }
    }

    @Override // j$.util.stream.AbstractC0327h2, j$.util.stream.InterfaceC0362o2
    public final void c(long j) {
        this.f21041a.c(-1L);
    }

    @Override // j$.util.stream.AbstractC0327h2, j$.util.stream.InterfaceC0362o2
    public final boolean e() {
        return !this.f20953b || this.f21041a.e();
    }
}

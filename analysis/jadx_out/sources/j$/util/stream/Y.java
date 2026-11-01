package j$.util.stream;

import j$.util.Objects;
import java.util.function.IntConsumer;

/* loaded from: classes2.dex */
public final class Y extends AbstractC0332i2 {

    /* renamed from: b, reason: collision with root package name */
    public boolean f20972b;

    /* renamed from: c, reason: collision with root package name */
    public final j$.util.r f20973c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ W f20974d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Y(W w, InterfaceC0362o2 interfaceC0362o2) {
        super(interfaceC0362o2);
        this.f20974d = w;
        InterfaceC0362o2 interfaceC0362o22 = this.f21044a;
        Objects.requireNonNull(interfaceC0362o22);
        this.f20973c = new j$.util.r(interfaceC0362o22, 1);
    }

    @Override // j$.util.stream.InterfaceC0352m2, j$.util.stream.InterfaceC0362o2
    public final void accept(int i) {
        IntStream intStream = (IntStream) ((M) this.f20974d.t).apply(i);
        if (intStream != null) {
            try {
                boolean z = this.f20972b;
                j$.util.r rVar = this.f20973c;
                if (z) {
                    j$.util.G spliterator = intStream.sequential().spliterator();
                    while (!this.f21044a.e() && spliterator.tryAdvance((IntConsumer) rVar)) {
                    }
                } else {
                    intStream.sequential().forEach(rVar);
                }
            } catch (Throwable th) {
                try {
                    intStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (intStream != null) {
            intStream.close();
        }
    }

    @Override // j$.util.stream.AbstractC0332i2, j$.util.stream.InterfaceC0362o2
    public final void c(long j) {
        this.f21044a.c(-1L);
    }

    @Override // j$.util.stream.AbstractC0332i2, j$.util.stream.InterfaceC0362o2
    public final boolean e() {
        this.f20972b = true;
        return this.f21044a.e();
    }
}

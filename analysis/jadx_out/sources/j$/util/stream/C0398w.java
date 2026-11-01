package j$.util.stream;

import j$.util.C0284n;
import j$.util.Objects;
import java.util.function.DoubleConsumer;

/* renamed from: j$.util.stream.w, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0398w extends AbstractC0327h2 {

    /* renamed from: b, reason: collision with root package name */
    public boolean f21121b;

    /* renamed from: c, reason: collision with root package name */
    public final C0284n f21122c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ C0403x f21123d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0398w(C0403x c0403x, InterfaceC0362o2 interfaceC0362o2) {
        super(interfaceC0362o2);
        this.f21123d = c0403x;
        InterfaceC0362o2 interfaceC0362o22 = this.f21041a;
        Objects.requireNonNull(interfaceC0362o22);
        this.f21122c = new C0284n(interfaceC0362o22, 1);
    }

    @Override // j$.util.stream.InterfaceC0347l2, java.util.function.DoubleConsumer
    public final void accept(double d2) {
        E e2 = (E) ((j$.util.function.g) this.f21123d.t).apply(d2);
        if (e2 != null) {
            try {
                boolean z = this.f21121b;
                C0284n c0284n = this.f21122c;
                if (z) {
                    j$.util.D spliterator = e2.sequential().spliterator();
                    while (!this.f21041a.e() && spliterator.tryAdvance((DoubleConsumer) c0284n)) {
                    }
                } else {
                    e2.sequential().forEach(c0284n);
                }
            } catch (Throwable th) {
                try {
                    e2.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (e2 != null) {
            e2.close();
        }
    }

    @Override // j$.util.stream.AbstractC0327h2, j$.util.stream.InterfaceC0362o2
    public final void c(long j) {
        this.f21041a.c(-1L);
    }

    @Override // j$.util.stream.AbstractC0327h2, j$.util.stream.InterfaceC0362o2
    public final boolean e() {
        this.f21121b = true;
        return this.f21041a.e();
    }
}

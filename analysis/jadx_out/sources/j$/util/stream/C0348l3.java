package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* renamed from: j$.util.stream.l3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0348l3 extends AbstractC0303c3 implements j$.util.D {
    @Override // j$.util.stream.AbstractC0303c3
    public final void d() {
        R2 r2 = new R2();
        this.h = r2;
        Objects.requireNonNull(r2);
        this.f21003e = this.f21000b.F0(new C0343k3(r2, 1));
        this.f21004f = new j$.util.function.g(this, 9);
    }

    @Override // j$.util.stream.AbstractC0303c3
    public final AbstractC0303c3 e(Spliterator spliterator) {
        return new C0348l3(this.f21000b, spliterator, this.f20999a);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.com.android.tools.r8.a.h(this, consumer);
    }

    @Override // j$.util.M
    public final void forEachRemaining(DoubleConsumer doubleConsumer) {
        if (this.h != null || this.i) {
            while (tryAdvance(doubleConsumer)) {
            }
            return;
        }
        Objects.requireNonNull(doubleConsumer);
        c();
        Objects.requireNonNull(doubleConsumer);
        C0343k3 c0343k3 = new C0343k3(doubleConsumer, 0);
        this.f21000b.E0(this.f21002d, c0343k3);
        this.i = true;
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.com.android.tools.r8.a.x(this, consumer);
    }

    @Override // j$.util.M
    public final boolean tryAdvance(DoubleConsumer doubleConsumer) {
        Objects.requireNonNull(doubleConsumer);
        boolean a2 = a();
        if (a2) {
            R2 r2 = (R2) this.h;
            long j = this.f21005g;
            int r = r2.r(j);
            doubleConsumer.accept((r2.f20997c == 0 && r == 0) ? ((double[]) r2.f20970e)[(int) j] : ((double[][]) r2.f20971f)[r][(int) (j - r2.f20998d[r])]);
        }
        return a2;
    }

    @Override // j$.util.stream.AbstractC0303c3, j$.util.Spliterator
    public final j$.util.D trySplit() {
        return (j$.util.D) super.trySplit();
    }

    @Override // j$.util.stream.AbstractC0303c3, j$.util.Spliterator
    public final j$.util.M trySplit() {
        return (j$.util.D) super.trySplit();
    }

    @Override // j$.util.stream.AbstractC0303c3, j$.util.Spliterator
    public final Spliterator trySplit() {
        return (j$.util.D) super.trySplit();
    }
}

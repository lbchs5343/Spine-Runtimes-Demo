package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* renamed from: j$.util.stream.n3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0358n3 extends AbstractC0303c3 implements j$.util.G {
    @Override // j$.util.stream.AbstractC0303c3
    public final void d() {
        T2 t2 = new T2();
        this.h = t2;
        Objects.requireNonNull(t2);
        this.f21003e = this.f21000b.F0(new C0353m3(t2, 1));
        this.f21004f = new j$.util.function.g(this, 10);
    }

    @Override // j$.util.stream.AbstractC0303c3
    public final AbstractC0303c3 e(Spliterator spliterator) {
        return new C0358n3(this.f21000b, spliterator, this.f20999a);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.com.android.tools.r8.a.i(this, consumer);
    }

    @Override // j$.util.M
    public final void forEachRemaining(IntConsumer intConsumer) {
        if (this.h != null || this.i) {
            while (tryAdvance(intConsumer)) {
            }
            return;
        }
        Objects.requireNonNull(intConsumer);
        c();
        Objects.requireNonNull(intConsumer);
        C0353m3 c0353m3 = new C0353m3(intConsumer, 0);
        this.f21000b.E0(this.f21002d, c0353m3);
        this.i = true;
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.com.android.tools.r8.a.y(this, consumer);
    }

    @Override // j$.util.M
    public final boolean tryAdvance(IntConsumer intConsumer) {
        Objects.requireNonNull(intConsumer);
        boolean a2 = a();
        if (a2) {
            T2 t2 = (T2) this.h;
            long j = this.f21005g;
            int r = t2.r(j);
            intConsumer.accept((t2.f20997c == 0 && r == 0) ? ((int[]) t2.f20970e)[(int) j] : ((int[][]) t2.f20971f)[r][(int) (j - t2.f20998d[r])]);
        }
        return a2;
    }

    @Override // j$.util.stream.AbstractC0303c3, j$.util.Spliterator
    public final j$.util.G trySplit() {
        return (j$.util.G) super.trySplit();
    }

    @Override // j$.util.stream.AbstractC0303c3, j$.util.Spliterator
    public final j$.util.M trySplit() {
        return (j$.util.G) super.trySplit();
    }

    @Override // j$.util.stream.AbstractC0303c3, j$.util.Spliterator
    public final Spliterator trySplit() {
        return (j$.util.G) super.trySplit();
    }
}

package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* renamed from: j$.util.stream.p3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0368p3 extends AbstractC0303c3 implements j$.util.J {
    @Override // j$.util.stream.AbstractC0303c3
    public final void d() {
        V2 v2 = new V2();
        this.h = v2;
        Objects.requireNonNull(v2);
        this.f21003e = this.f21000b.F0(new C0363o3(v2, 1));
        this.f21004f = new j$.util.function.g(this, 11);
    }

    @Override // j$.util.stream.AbstractC0303c3
    public final AbstractC0303c3 e(Spliterator spliterator) {
        return new C0368p3(this.f21000b, spliterator, this.f20999a);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.com.android.tools.r8.a.j(this, consumer);
    }

    @Override // j$.util.M
    public final void forEachRemaining(LongConsumer longConsumer) {
        if (this.h != null || this.i) {
            while (tryAdvance(longConsumer)) {
            }
            return;
        }
        Objects.requireNonNull(longConsumer);
        c();
        Objects.requireNonNull(longConsumer);
        C0363o3 c0363o3 = new C0363o3(longConsumer, 0);
        this.f21000b.E0(this.f21002d, c0363o3);
        this.i = true;
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.com.android.tools.r8.a.z(this, consumer);
    }

    @Override // j$.util.M
    public final boolean tryAdvance(LongConsumer longConsumer) {
        Objects.requireNonNull(longConsumer);
        boolean a2 = a();
        if (a2) {
            V2 v2 = (V2) this.h;
            long j = this.f21005g;
            int r = v2.r(j);
            longConsumer.accept((v2.f20997c == 0 && r == 0) ? ((long[]) v2.f20970e)[(int) j] : ((long[][]) v2.f20971f)[r][(int) (j - v2.f20998d[r])]);
        }
        return a2;
    }

    @Override // j$.util.stream.AbstractC0303c3, j$.util.Spliterator
    public final j$.util.J trySplit() {
        return (j$.util.J) super.trySplit();
    }

    @Override // j$.util.stream.AbstractC0303c3, j$.util.Spliterator
    public final j$.util.M trySplit() {
        return (j$.util.J) super.trySplit();
    }

    @Override // j$.util.stream.AbstractC0303c3, j$.util.Spliterator
    public final Spliterator trySplit() {
        return (j$.util.J) super.trySplit();
    }
}

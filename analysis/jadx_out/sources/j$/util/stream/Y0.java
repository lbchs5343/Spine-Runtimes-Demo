package j$.util.stream;

import j$.util.Spliterator;
import j$.util.Spliterators;
import java.util.function.Consumer;
import java.util.function.IntFunction;

/* loaded from: classes2.dex */
public final class Y0 extends AbstractC0296b1 implements E0 {
    @Override // j$.util.stream.AbstractC0296b1, j$.util.stream.I0
    public final H0 a(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // j$.util.stream.AbstractC0296b1, j$.util.stream.I0
    public final /* bridge */ /* synthetic */ I0 a(int i) {
        a(i);
        throw null;
    }

    @Override // j$.util.stream.H0
    public final /* bridge */ /* synthetic */ Object b() {
        return AbstractC0405x1.f21133e;
    }

    @Override // j$.util.stream.I0
    public final /* synthetic */ void forEach(Consumer consumer) {
        AbstractC0405x1.Q(this, consumer);
    }

    @Override // j$.util.stream.AbstractC0296b1, j$.util.stream.I0
    public final /* synthetic */ I0 i(long j, long j2, IntFunction intFunction) {
        return AbstractC0405x1.T(this, j, j2);
    }

    @Override // j$.util.stream.I0
    public final /* synthetic */ void k(Object[] objArr, int i) {
        AbstractC0405x1.N(this, (Integer[]) objArr, i);
    }

    @Override // j$.util.stream.I0
    public final /* bridge */ /* synthetic */ j$.util.M spliterator() {
        return Spliterators.f20696b;
    }

    @Override // j$.util.stream.I0
    public final /* bridge */ /* synthetic */ Spliterator spliterator() {
        return Spliterators.f20696b;
    }
}

package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntFunction;

/* loaded from: classes2.dex */
public final class P0 extends S0 implements C0 {
    @Override // j$.util.stream.I0
    public final /* synthetic */ void forEach(Consumer consumer) {
        AbstractC0405x1.P(this, consumer);
    }

    @Override // j$.util.stream.I0
    public final /* synthetic */ I0 i(long j, long j2, IntFunction intFunction) {
        return AbstractC0405x1.S(this, j, j2);
    }

    @Override // j$.util.stream.I0
    public final /* synthetic */ void k(Object[] objArr, int i) {
        AbstractC0405x1.M(this, (Double[]) objArr, i);
    }

    @Override // j$.util.stream.H0
    public final Object newArray(int i) {
        return new double[i];
    }

    @Override // j$.util.stream.I0
    public final j$.util.M spliterator() {
        return new C0321g1(this);
    }

    @Override // j$.util.stream.I0
    public final Spliterator spliterator() {
        return new C0321g1(this);
    }
}

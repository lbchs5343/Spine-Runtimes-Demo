package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntFunction;

/* loaded from: classes2.dex */
public final class T0 extends K0 {
    @Override // j$.util.stream.I0
    public final void forEach(Consumer consumer) {
        this.f20886a.forEach(consumer);
        this.f20887b.forEach(consumer);
    }

    @Override // j$.util.stream.I0
    public final I0 i(long j, long j2, IntFunction intFunction) {
        if (j == 0 && j2 == this.f20888c) {
            return this;
        }
        long count = this.f20886a.count();
        if (j >= count) {
            return this.f20887b.i(j - count, j2 - count, intFunction);
        }
        if (j2 <= count) {
            return this.f20886a.i(j, j2, intFunction);
        }
        return AbstractC0405x1.e0(EnumC0298b3.REFERENCE, this.f20886a.i(j, count, intFunction), this.f20887b.i(0L, j2 - count, intFunction));
    }

    @Override // j$.util.stream.I0
    public final void k(Object[] objArr, int i) {
        Objects.requireNonNull(objArr);
        I0 i0 = this.f20886a;
        i0.k(objArr, i);
        this.f20887b.k(objArr, i + ((int) i0.count()));
    }

    @Override // j$.util.stream.I0
    public final Object[] m(IntFunction intFunction) {
        long j = this.f20888c;
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        Object[] objArr = (Object[]) intFunction.apply((int) j);
        k(objArr, 0);
        return objArr;
    }

    @Override // j$.util.stream.I0
    public final Spliterator spliterator() {
        return new C0341k1(this);
    }

    public final String toString() {
        long j = this.f20888c;
        return j < 32 ? String.format("ConcNode[%s.%s]", this.f20886a, this.f20887b) : String.format("ConcNode[size=%d]", Long.valueOf(j));
    }
}

package j$.util.concurrent;

import j$.util.G;
import java.util.Comparator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* loaded from: classes2.dex */
public final class x implements G {

    /* renamed from: a, reason: collision with root package name */
    public long f20779a;

    /* renamed from: b, reason: collision with root package name */
    public final long f20780b;

    /* renamed from: c, reason: collision with root package name */
    public final int f20781c;

    /* renamed from: d, reason: collision with root package name */
    public final int f20782d;

    public x(long j, long j2, int i, int i2) {
        this.f20779a = j;
        this.f20780b = j2;
        this.f20781c = i;
        this.f20782d = i2;
    }

    @Override // j$.util.Spliterator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final x trySplit() {
        long j = this.f20779a;
        long j2 = (this.f20780b + j) >>> 1;
        if (j2 <= j) {
            return null;
        }
        this.f20779a = j2;
        return new x(j, j2, this.f20781c, this.f20782d);
    }

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return 17728;
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        return this.f20780b - this.f20779a;
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.com.android.tools.r8.a.i(this, consumer);
    }

    @Override // j$.util.M
    public final void forEachRemaining(IntConsumer intConsumer) {
        intConsumer.getClass();
        long j = this.f20779a;
        long j2 = this.f20780b;
        if (j < j2) {
            this.f20779a = j2;
            ThreadLocalRandom current = ThreadLocalRandom.current();
            do {
                intConsumer.accept(current.b(this.f20781c, this.f20782d));
                j++;
            } while (j < j2);
        }
    }

    @Override // j$.util.Spliterator
    public final Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return j$.com.android.tools.r8.a.m(this);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return j$.com.android.tools.r8.a.o(this, i);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.com.android.tools.r8.a.y(this, consumer);
    }

    @Override // j$.util.M
    public final boolean tryAdvance(IntConsumer intConsumer) {
        intConsumer.getClass();
        long j = this.f20779a;
        if (j >= this.f20780b) {
            return false;
        }
        intConsumer.accept(ThreadLocalRandom.current().b(this.f20781c, this.f20782d));
        this.f20779a = j + 1;
        return true;
    }
}

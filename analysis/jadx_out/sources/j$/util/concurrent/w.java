package j$.util.concurrent;

import j$.util.D;
import java.util.Comparator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* loaded from: classes2.dex */
public final class w implements D {

    /* renamed from: a, reason: collision with root package name */
    public long f20775a;

    /* renamed from: b, reason: collision with root package name */
    public final long f20776b;

    /* renamed from: c, reason: collision with root package name */
    public final double f20777c;

    /* renamed from: d, reason: collision with root package name */
    public final double f20778d;

    public w(long j, long j2, double d2, double d3) {
        this.f20775a = j;
        this.f20776b = j2;
        this.f20777c = d2;
        this.f20778d = d3;
    }

    @Override // j$.util.Spliterator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final w trySplit() {
        long j = this.f20775a;
        long j2 = (this.f20776b + j) >>> 1;
        if (j2 <= j) {
            return null;
        }
        this.f20775a = j2;
        return new w(j, j2, this.f20777c, this.f20778d);
    }

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return 17728;
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        return this.f20776b - this.f20775a;
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.com.android.tools.r8.a.h(this, consumer);
    }

    @Override // j$.util.M
    public final void forEachRemaining(DoubleConsumer doubleConsumer) {
        doubleConsumer.getClass();
        long j = this.f20775a;
        long j2 = this.f20776b;
        if (j < j2) {
            this.f20775a = j2;
            ThreadLocalRandom current = ThreadLocalRandom.current();
            do {
                doubleConsumer.accept(current.a(this.f20777c, this.f20778d));
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
        return j$.com.android.tools.r8.a.x(this, consumer);
    }

    @Override // j$.util.M
    public final boolean tryAdvance(DoubleConsumer doubleConsumer) {
        doubleConsumer.getClass();
        long j = this.f20775a;
        if (j >= this.f20776b) {
            return false;
        }
        doubleConsumer.accept(ThreadLocalRandom.current().a(this.f20777c, this.f20778d));
        this.f20775a = j + 1;
        return true;
    }
}

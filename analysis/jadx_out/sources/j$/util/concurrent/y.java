package j$.util.concurrent;

import j$.util.J;
import java.util.Comparator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* loaded from: classes2.dex */
public final class y implements J {

    /* renamed from: a, reason: collision with root package name */
    public long f20783a;

    /* renamed from: b, reason: collision with root package name */
    public final long f20784b;

    /* renamed from: c, reason: collision with root package name */
    public final long f20785c;

    /* renamed from: d, reason: collision with root package name */
    public final long f20786d;

    public y(long j, long j2, long j3, long j4) {
        this.f20783a = j;
        this.f20784b = j2;
        this.f20785c = j3;
        this.f20786d = j4;
    }

    @Override // j$.util.Spliterator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final y trySplit() {
        long j = this.f20783a;
        long j2 = (this.f20784b + j) >>> 1;
        if (j2 <= j) {
            return null;
        }
        this.f20783a = j2;
        return new y(j, j2, this.f20785c, this.f20786d);
    }

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return 17728;
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        return this.f20784b - this.f20783a;
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.com.android.tools.r8.a.j(this, consumer);
    }

    @Override // j$.util.M
    public final void forEachRemaining(LongConsumer longConsumer) {
        longConsumer.getClass();
        long j = this.f20783a;
        long j2 = this.f20784b;
        if (j < j2) {
            this.f20783a = j2;
            ThreadLocalRandom current = ThreadLocalRandom.current();
            do {
                longConsumer.accept(current.c(this.f20785c, this.f20786d));
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
        return j$.com.android.tools.r8.a.z(this, consumer);
    }

    @Override // j$.util.M
    public final boolean tryAdvance(LongConsumer longConsumer) {
        longConsumer.getClass();
        long j = this.f20783a;
        if (j >= this.f20784b) {
            return false;
        }
        longConsumer.accept(ThreadLocalRandom.current().c(this.f20785c, this.f20786d));
        this.f20783a = j + 1;
        return true;
    }
}

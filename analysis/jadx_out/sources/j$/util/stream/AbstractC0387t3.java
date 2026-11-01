package j$.util.stream;

import j$.util.Objects;
import java.util.Comparator;
import java.util.function.DoubleConsumer;
import java.util.function.IntConsumer;
import java.util.function.LongConsumer;

/* renamed from: j$.util.stream.t3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0387t3 extends AbstractC0397v3 implements j$.util.M {
    public AbstractC0387t3(j$.util.M m, long j, long j2) {
        super(m, j, j2, 0L, Math.min(m.estimateSize(), j2));
    }

    public abstract Object b();

    @Override // j$.util.M
    public final void forEachRemaining(Object obj) {
        Objects.requireNonNull(obj);
        long j = this.f21120e;
        long j2 = this.f21116a;
        if (j2 >= j) {
            return;
        }
        long j3 = this.f21119d;
        if (j3 >= j) {
            return;
        }
        if (j3 >= j2 && ((j$.util.M) this.f21118c).estimateSize() + j3 <= this.f21117b) {
            ((j$.util.M) this.f21118c).forEachRemaining(obj);
            this.f21119d = this.f21120e;
            return;
        }
        while (j2 > this.f21119d) {
            ((j$.util.M) this.f21118c).tryAdvance(b());
            this.f21119d++;
        }
        while (this.f21119d < this.f21120e) {
            ((j$.util.M) this.f21118c).tryAdvance(obj);
            this.f21119d++;
        }
    }

    public /* bridge */ /* synthetic */ void forEachRemaining(DoubleConsumer doubleConsumer) {
        forEachRemaining((Object) doubleConsumer);
    }

    public /* bridge */ /* synthetic */ void forEachRemaining(IntConsumer intConsumer) {
        forEachRemaining((Object) intConsumer);
    }

    public /* bridge */ /* synthetic */ void forEachRemaining(LongConsumer longConsumer) {
        forEachRemaining((Object) longConsumer);
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

    @Override // j$.util.M
    public final boolean tryAdvance(Object obj) {
        long j;
        Objects.requireNonNull(obj);
        long j2 = this.f21120e;
        long j3 = this.f21116a;
        if (j3 >= j2) {
            return false;
        }
        while (true) {
            j = this.f21119d;
            if (j3 <= j) {
                break;
            }
            ((j$.util.M) this.f21118c).tryAdvance(b());
            this.f21119d++;
        }
        if (j >= this.f21120e) {
            return false;
        }
        this.f21119d = j + 1;
        return ((j$.util.M) this.f21118c).tryAdvance(obj);
    }

    public /* bridge */ /* synthetic */ boolean tryAdvance(DoubleConsumer doubleConsumer) {
        return tryAdvance((Object) doubleConsumer);
    }

    public /* bridge */ /* synthetic */ boolean tryAdvance(IntConsumer intConsumer) {
        return tryAdvance((Object) intConsumer);
    }

    public /* bridge */ /* synthetic */ boolean tryAdvance(LongConsumer longConsumer) {
        return tryAdvance((Object) longConsumer);
    }
}

package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.Comparator;
import java.util.function.Consumer;

/* renamed from: j$.util.stream.u3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0392u3 extends AbstractC0397v3 implements Spliterator {
    public C0392u3(Spliterator spliterator, long j, long j2) {
        super(spliterator, j, j2, 0L, Math.min(spliterator.estimateSize(), j2));
    }

    @Override // j$.util.stream.AbstractC0397v3
    public final Spliterator a(Spliterator spliterator, long j, long j2, long j3, long j4) {
        return new C0392u3(spliterator, j, j2, j3, j4);
    }

    @Override // j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        Objects.requireNonNull(consumer);
        long j = this.f21120e;
        long j2 = this.f21116a;
        if (j2 >= j) {
            return;
        }
        long j3 = this.f21119d;
        if (j3 >= j) {
            return;
        }
        if (j3 >= j2 && this.f21118c.estimateSize() + j3 <= this.f21117b) {
            this.f21118c.forEachRemaining(consumer);
            this.f21119d = this.f21120e;
            return;
        }
        while (j2 > this.f21119d) {
            this.f21118c.tryAdvance(new C0310e0(25));
            this.f21119d++;
        }
        while (this.f21119d < this.f21120e) {
            this.f21118c.tryAdvance(consumer);
            this.f21119d++;
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
    public final boolean tryAdvance(Consumer consumer) {
        long j;
        Objects.requireNonNull(consumer);
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
            this.f21118c.tryAdvance(new C0310e0(24));
            this.f21119d++;
        }
        if (j >= this.f21120e) {
            return false;
        }
        this.f21119d = j + 1;
        return this.f21118c.tryAdvance(consumer);
    }
}

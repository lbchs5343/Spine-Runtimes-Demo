package j$.util;

import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* loaded from: classes2.dex */
public final class b0 implements J {

    /* renamed from: a, reason: collision with root package name */
    public final long[] f20725a;

    /* renamed from: b, reason: collision with root package name */
    public int f20726b;

    /* renamed from: c, reason: collision with root package name */
    public final int f20727c;

    /* renamed from: d, reason: collision with root package name */
    public final int f20728d;

    public b0(long[] jArr, int i, int i2, int i3) {
        this.f20725a = jArr;
        this.f20726b = i;
        this.f20727c = i2;
        this.f20728d = i3 | 16448;
    }

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return this.f20728d;
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        return this.f20727c - this.f20726b;
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.com.android.tools.r8.a.j(this, consumer);
    }

    @Override // j$.util.M
    public final void forEachRemaining(LongConsumer longConsumer) {
        int i;
        longConsumer.getClass();
        long[] jArr = this.f20725a;
        int length = jArr.length;
        int i2 = this.f20727c;
        if (length < i2 || (i = this.f20726b) < 0) {
            return;
        }
        this.f20726b = i2;
        if (i < i2) {
            do {
                longConsumer.accept(jArr[i]);
                i++;
            } while (i < i2);
        }
    }

    @Override // j$.util.Spliterator
    public final java.util.Comparator getComparator() {
        if (j$.com.android.tools.r8.a.o(this, 4)) {
            return null;
        }
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
        int i = this.f20726b;
        if (i < 0 || i >= this.f20727c) {
            return false;
        }
        this.f20726b = i + 1;
        longConsumer.accept(this.f20725a[i]);
        return true;
    }

    @Override // j$.util.Spliterator
    public final J trySplit() {
        int i = this.f20726b;
        int i2 = (this.f20727c + i) >>> 1;
        if (i >= i2) {
            return null;
        }
        this.f20726b = i2;
        return new b0(this.f20725a, i, i2, this.f20728d);
    }
}

package j$.util;

import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* loaded from: classes2.dex */
public final class U implements D {

    /* renamed from: a, reason: collision with root package name */
    public final double[] f20709a;

    /* renamed from: b, reason: collision with root package name */
    public int f20710b;

    /* renamed from: c, reason: collision with root package name */
    public final int f20711c;

    /* renamed from: d, reason: collision with root package name */
    public final int f20712d;

    public U(double[] dArr, int i, int i2, int i3) {
        this.f20709a = dArr;
        this.f20710b = i;
        this.f20711c = i2;
        this.f20712d = i3 | 16448;
    }

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return this.f20712d;
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        return this.f20711c - this.f20710b;
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.com.android.tools.r8.a.h(this, consumer);
    }

    @Override // j$.util.M
    public final void forEachRemaining(DoubleConsumer doubleConsumer) {
        int i;
        doubleConsumer.getClass();
        double[] dArr = this.f20709a;
        int length = dArr.length;
        int i2 = this.f20711c;
        if (length < i2 || (i = this.f20710b) < 0) {
            return;
        }
        this.f20710b = i2;
        if (i < i2) {
            do {
                doubleConsumer.accept(dArr[i]);
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
        return j$.com.android.tools.r8.a.x(this, consumer);
    }

    @Override // j$.util.M
    public final boolean tryAdvance(DoubleConsumer doubleConsumer) {
        doubleConsumer.getClass();
        int i = this.f20710b;
        if (i < 0 || i >= this.f20711c) {
            return false;
        }
        this.f20710b = i + 1;
        doubleConsumer.accept(this.f20709a[i]);
        return true;
    }

    @Override // j$.util.Spliterator
    public final D trySplit() {
        int i = this.f20710b;
        int i2 = (this.f20711c + i) >>> 1;
        if (i >= i2) {
            return null;
        }
        this.f20710b = i2;
        return new U(this.f20709a, i, i2, this.f20712d);
    }
}

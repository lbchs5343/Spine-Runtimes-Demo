package j$.util;

import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* loaded from: classes2.dex */
public final class Z implements G {

    /* renamed from: a, reason: collision with root package name */
    public final int[] f20713a;

    /* renamed from: b, reason: collision with root package name */
    public int f20714b;

    /* renamed from: c, reason: collision with root package name */
    public final int f20715c;

    /* renamed from: d, reason: collision with root package name */
    public final int f20716d;

    public Z(int[] iArr, int i, int i2, int i3) {
        this.f20713a = iArr;
        this.f20714b = i;
        this.f20715c = i2;
        this.f20716d = i3 | 16448;
    }

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return this.f20716d;
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        return this.f20715c - this.f20714b;
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.com.android.tools.r8.a.i(this, consumer);
    }

    @Override // j$.util.M
    public final void forEachRemaining(IntConsumer intConsumer) {
        int i;
        intConsumer.getClass();
        int[] iArr = this.f20713a;
        int length = iArr.length;
        int i2 = this.f20715c;
        if (length < i2 || (i = this.f20714b) < 0) {
            return;
        }
        this.f20714b = i2;
        if (i < i2) {
            do {
                intConsumer.accept(iArr[i]);
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
        return j$.com.android.tools.r8.a.y(this, consumer);
    }

    @Override // j$.util.M
    public final boolean tryAdvance(IntConsumer intConsumer) {
        intConsumer.getClass();
        int i = this.f20714b;
        if (i < 0 || i >= this.f20715c) {
            return false;
        }
        this.f20714b = i + 1;
        intConsumer.accept(this.f20713a[i]);
        return true;
    }

    @Override // j$.util.Spliterator
    public final G trySplit() {
        int i = this.f20714b;
        int i2 = (this.f20715c + i) >>> 1;
        if (i >= i2) {
            return null;
        }
        this.f20714b = i2;
        return new Z(this.f20713a, i, i2, this.f20716d);
    }
}

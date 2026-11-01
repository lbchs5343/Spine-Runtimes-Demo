package j$.util;

import java.util.function.Consumer;

/* loaded from: classes2.dex */
public final class T implements Spliterator {

    /* renamed from: a, reason: collision with root package name */
    public final Object[] f20705a;

    /* renamed from: b, reason: collision with root package name */
    public int f20706b;

    /* renamed from: c, reason: collision with root package name */
    public final int f20707c;

    /* renamed from: d, reason: collision with root package name */
    public final int f20708d;

    public T(Object[] objArr, int i, int i2, int i3) {
        this.f20705a = objArr;
        this.f20706b = i;
        this.f20707c = i2;
        this.f20708d = i3 | 16448;
    }

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return this.f20708d;
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        return this.f20707c - this.f20706b;
    }

    @Override // j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        int i;
        consumer.getClass();
        Object[] objArr = this.f20705a;
        int length = objArr.length;
        int i2 = this.f20707c;
        if (length < i2 || (i = this.f20706b) < 0) {
            return;
        }
        this.f20706b = i2;
        if (i < i2) {
            do {
                consumer.n(objArr[i]);
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
    public final boolean tryAdvance(Consumer consumer) {
        consumer.getClass();
        int i = this.f20706b;
        if (i < 0 || i >= this.f20707c) {
            return false;
        }
        this.f20706b = i + 1;
        consumer.n(this.f20705a[i]);
        return true;
    }

    @Override // j$.util.Spliterator
    public final Spliterator trySplit() {
        int i = this.f20706b;
        int i2 = (this.f20707c + i) >>> 1;
        if (i >= i2) {
            return null;
        }
        this.f20706b = i2;
        return new T(this.f20705a, i, i2, this.f20708d);
    }
}

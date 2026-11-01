package j$.util.stream;

import j$.util.Objects;
import java.util.Comparator;
import java.util.function.DoubleConsumer;
import java.util.function.IntConsumer;
import java.util.function.LongConsumer;

/* loaded from: classes2.dex */
public abstract class W2 implements j$.util.M {

    /* renamed from: a, reason: collision with root package name */
    public int f20963a;

    /* renamed from: b, reason: collision with root package name */
    public final int f20964b;

    /* renamed from: c, reason: collision with root package name */
    public int f20965c;

    /* renamed from: d, reason: collision with root package name */
    public final int f20966d;

    /* renamed from: e, reason: collision with root package name */
    public Object f20967e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ X2 f20968f;

    public W2(X2 x2, int i, int i2, int i3, int i4) {
        this.f20968f = x2;
        this.f20963a = i;
        this.f20964b = i2;
        this.f20965c = i3;
        this.f20966d = i4;
        Object[] objArr = x2.f20971f;
        this.f20967e = objArr == null ? x2.f20970e : objArr[i];
    }

    public abstract void a(int i, Object obj, Object obj2);

    public abstract j$.util.M b(Object obj, int i, int i2);

    public abstract j$.util.M c(int i, int i2, int i3, int i4);

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return 16464;
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        int i = this.f20963a;
        int i2 = this.f20966d;
        int i3 = this.f20964b;
        if (i == i3) {
            return i2 - this.f20965c;
        }
        long[] jArr = this.f20968f.f20998d;
        return ((jArr[i3] + i2) - jArr[i]) - this.f20965c;
    }

    @Override // j$.util.M
    public final void forEachRemaining(Object obj) {
        X2 x2;
        Objects.requireNonNull(obj);
        int i = this.f20963a;
        int i2 = this.f20966d;
        int i3 = this.f20964b;
        if (i < i3 || (i == i3 && this.f20965c < i2)) {
            int i4 = this.f20965c;
            while (true) {
                x2 = this.f20968f;
                if (i >= i3) {
                    break;
                }
                Object obj2 = x2.f20971f[i];
                x2.p(obj2, i4, x2.q(obj2), obj);
                i++;
                i4 = 0;
            }
            x2.p(this.f20963a == i3 ? this.f20967e : x2.f20971f[i3], i4, i2, obj);
            this.f20963a = i3;
            this.f20965c = i2;
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
        Objects.requireNonNull(obj);
        int i = this.f20963a;
        int i2 = this.f20964b;
        if (i >= i2 && (i != i2 || this.f20965c >= this.f20966d)) {
            return false;
        }
        Object obj2 = this.f20967e;
        int i3 = this.f20965c;
        this.f20965c = i3 + 1;
        a(i3, obj2, obj);
        int i4 = this.f20965c;
        Object obj3 = this.f20967e;
        X2 x2 = this.f20968f;
        if (i4 == x2.q(obj3)) {
            this.f20965c = 0;
            int i5 = this.f20963a + 1;
            this.f20963a = i5;
            Object[] objArr = x2.f20971f;
            if (objArr != null && i5 <= i2) {
                this.f20967e = objArr[i5];
            }
        }
        return true;
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

    @Override // j$.util.M, j$.util.Spliterator
    public /* bridge */ /* synthetic */ j$.util.D trySplit() {
        return (j$.util.D) trySplit();
    }

    @Override // j$.util.M, j$.util.Spliterator
    public /* bridge */ /* synthetic */ j$.util.G trySplit() {
        return (j$.util.G) trySplit();
    }

    @Override // j$.util.M, j$.util.Spliterator
    public /* bridge */ /* synthetic */ j$.util.J trySplit() {
        return (j$.util.J) trySplit();
    }

    @Override // j$.util.Spliterator
    public final j$.util.M trySplit() {
        int i = this.f20963a;
        int i2 = this.f20964b;
        if (i < i2) {
            int i3 = i2 - 1;
            int i4 = this.f20965c;
            X2 x2 = this.f20968f;
            j$.util.M c2 = c(i, i3, i4, x2.q(x2.f20971f[i3]));
            this.f20963a = i2;
            this.f20965c = 0;
            this.f20967e = x2.f20971f[i2];
            return c2;
        }
        if (i != i2) {
            return null;
        }
        int i5 = this.f20965c;
        int i6 = (this.f20966d - i5) / 2;
        if (i6 == 0) {
            return null;
        }
        j$.util.M b2 = b(this.f20967e, i5, i6);
        this.f20965c += i6;
        return b2;
    }
}

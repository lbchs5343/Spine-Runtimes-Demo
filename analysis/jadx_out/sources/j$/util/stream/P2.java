package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.Comparator;
import java.util.function.Consumer;

/* loaded from: classes2.dex */
public final class P2 implements Spliterator {

    /* renamed from: a, reason: collision with root package name */
    public int f20925a;

    /* renamed from: b, reason: collision with root package name */
    public final int f20926b;

    /* renamed from: c, reason: collision with root package name */
    public int f20927c;

    /* renamed from: d, reason: collision with root package name */
    public final int f20928d;

    /* renamed from: e, reason: collision with root package name */
    public Object[] f20929e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Y2 f20930f;

    public P2(Y2 y2, int i, int i2, int i3, int i4) {
        this.f20930f = y2;
        this.f20925a = i;
        this.f20926b = i2;
        this.f20927c = i3;
        this.f20928d = i4;
        Object[][] objArr = y2.f20977f;
        this.f20929e = objArr == null ? y2.f20976e : objArr[i];
    }

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return 16464;
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        int i = this.f20925a;
        int i2 = this.f20928d;
        int i3 = this.f20926b;
        if (i == i3) {
            return i2 - this.f20927c;
        }
        long[] jArr = this.f20930f.f20998d;
        return ((jArr[i3] + i2) - jArr[i]) - this.f20927c;
    }

    @Override // j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        Y2 y2;
        Objects.requireNonNull(consumer);
        int i = this.f20925a;
        int i2 = this.f20928d;
        int i3 = this.f20926b;
        if (i < i3 || (i == i3 && this.f20927c < i2)) {
            int i4 = this.f20927c;
            while (true) {
                y2 = this.f20930f;
                if (i >= i3) {
                    break;
                }
                Object[] objArr = y2.f20977f[i];
                while (i4 < objArr.length) {
                    consumer.n(objArr[i4]);
                    i4++;
                }
                i++;
                i4 = 0;
            }
            Object[] objArr2 = this.f20925a == i3 ? this.f20929e : y2.f20977f[i3];
            while (i4 < i2) {
                consumer.n(objArr2[i4]);
                i4++;
            }
            this.f20925a = i3;
            this.f20927c = i2;
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
        Objects.requireNonNull(consumer);
        int i = this.f20925a;
        int i2 = this.f20926b;
        if (i >= i2 && (i != i2 || this.f20927c >= this.f20928d)) {
            return false;
        }
        Object[] objArr = this.f20929e;
        int i3 = this.f20927c;
        this.f20927c = i3 + 1;
        consumer.n(objArr[i3]);
        if (this.f20927c == this.f20929e.length) {
            this.f20927c = 0;
            int i4 = this.f20925a + 1;
            this.f20925a = i4;
            Object[][] objArr2 = this.f20930f.f20977f;
            if (objArr2 != null && i4 <= i2) {
                this.f20929e = objArr2[i4];
            }
        }
        return true;
    }

    @Override // j$.util.Spliterator
    public final Spliterator trySplit() {
        int i = this.f20925a;
        int i2 = this.f20926b;
        if (i < i2) {
            int i3 = i2 - 1;
            int i4 = this.f20927c;
            Y2 y2 = this.f20930f;
            P2 p2 = new P2(y2, i, i3, i4, y2.f20977f[i3].length);
            this.f20925a = i2;
            this.f20927c = 0;
            this.f20929e = y2.f20977f[i2];
            return p2;
        }
        if (i != i2) {
            return null;
        }
        int i5 = this.f20927c;
        int i6 = (this.f20928d - i5) / 2;
        if (i6 == 0) {
            return null;
        }
        j$.util.T S = j$.com.android.tools.r8.a.S(this.f20929e, i5, i5 + i6);
        this.f20927c += i6;
        return S;
    }
}

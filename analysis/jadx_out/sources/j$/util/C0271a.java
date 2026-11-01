package j$.util;

import java.util.ConcurrentModificationException;
import java.util.function.Consumer;

/* renamed from: j$.util.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0271a implements Spliterator {

    /* renamed from: a, reason: collision with root package name */
    public final java.util.List f20717a;

    /* renamed from: b, reason: collision with root package name */
    public int f20718b;

    /* renamed from: c, reason: collision with root package name */
    public int f20719c;

    public C0271a(C0271a c0271a, int i, int i2) {
        this.f20717a = c0271a.f20717a;
        this.f20718b = i;
        this.f20719c = i2;
    }

    public C0271a(java.util.List list) {
        this.f20717a = list;
        this.f20718b = 0;
        this.f20719c = -1;
    }

    public final int a() {
        java.util.List list = this.f20717a;
        int i = this.f20719c;
        if (i >= 0) {
            return i;
        }
        int size = list.size();
        this.f20719c = size;
        return size;
    }

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return 16464;
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        return a() - this.f20718b;
    }

    @Override // j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        Objects.requireNonNull(consumer);
        java.util.List list = this.f20717a;
        int a2 = a();
        this.f20718b = a2;
        for (int i = this.f20718b; i < a2; i++) {
            try {
                consumer.accept(list.get(i));
            } catch (IndexOutOfBoundsException unused) {
                throw new ConcurrentModificationException();
            }
        }
    }

    @Override // j$.util.Spliterator
    public final java.util.Comparator getComparator() {
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
        int a2 = a();
        int i = this.f20718b;
        if (i >= a2) {
            return false;
        }
        this.f20718b = i + 1;
        try {
            consumer.accept(this.f20717a.get(i));
            return true;
        } catch (IndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }

    @Override // j$.util.Spliterator
    public final Spliterator trySplit() {
        int a2 = a();
        int i = this.f20718b;
        int i2 = (a2 + i) >>> 1;
        if (i >= i2) {
            return null;
        }
        this.f20718b = i2;
        return new C0271a(this, i, i2);
    }
}

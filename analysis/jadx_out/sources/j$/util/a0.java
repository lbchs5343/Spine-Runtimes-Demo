package j$.util;

import java.util.Iterator;
import java.util.function.Consumer;

/* loaded from: classes2.dex */
public class a0 implements Spliterator {

    /* renamed from: a, reason: collision with root package name */
    public final java.util.Collection f20720a;

    /* renamed from: b, reason: collision with root package name */
    public Iterator f20721b;

    /* renamed from: c, reason: collision with root package name */
    public final int f20722c;

    /* renamed from: d, reason: collision with root package name */
    public long f20723d;

    /* renamed from: e, reason: collision with root package name */
    public int f20724e;

    public a0(java.util.Collection collection, int i) {
        this.f20720a = collection;
        this.f20721b = null;
        this.f20722c = (i & 4096) == 0 ? i | 16448 : i;
    }

    public a0(Iterator it, long j, int i) {
        this.f20720a = null;
        this.f20721b = it;
        this.f20723d = j;
        this.f20722c = (i & 4096) == 0 ? i | 16448 : i;
    }

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return this.f20722c;
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        if (this.f20721b != null) {
            return this.f20723d;
        }
        this.f20721b = this.f20720a.iterator();
        long size = this.f20720a.size();
        this.f20723d = size;
        return size;
    }

    @Override // j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        consumer.getClass();
        Iterator it = this.f20721b;
        if (it == null) {
            it = this.f20720a.iterator();
            this.f20721b = it;
            this.f20723d = this.f20720a.size();
        }
        if (it instanceof InterfaceC0280j) {
            ((InterfaceC0280j) it).forEachRemaining(consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        while (it.hasNext()) {
            consumer.accept(it.next());
        }
    }

    @Override // j$.util.Spliterator
    public java.util.Comparator getComparator() {
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
        if (this.f20721b == null) {
            this.f20721b = this.f20720a.iterator();
            this.f20723d = this.f20720a.size();
        }
        if (!this.f20721b.hasNext()) {
            return false;
        }
        consumer.accept(this.f20721b.next());
        return true;
    }

    @Override // j$.util.Spliterator
    public final Spliterator trySplit() {
        long j;
        Iterator it = this.f20721b;
        if (it == null) {
            it = this.f20720a.iterator();
            this.f20721b = it;
            j = this.f20720a.size();
            this.f20723d = j;
        } else {
            j = this.f20723d;
        }
        if (j <= 1 || !it.hasNext()) {
            return null;
        }
        int i = this.f20724e + 1024;
        if (i > j) {
            i = (int) j;
        }
        if (i > 33554432) {
            i = 33554432;
        }
        Object[] objArr = new Object[i];
        int i2 = 0;
        do {
            objArr[i2] = it.next();
            i2++;
            if (i2 >= i) {
                break;
            }
        } while (it.hasNext());
        this.f20724e = i2;
        long j2 = this.f20723d;
        if (j2 != Long.MAX_VALUE) {
            this.f20723d = j2 - i2;
        }
        return new T(objArr, 0, i2, this.f20722c);
    }
}

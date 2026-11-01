package j$.util.stream;

import j$.util.Spliterator;
import java.util.ArrayDeque;
import java.util.Comparator;
import java.util.Deque;

/* renamed from: j$.util.stream.l1, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0346l1 implements Spliterator {

    /* renamed from: a, reason: collision with root package name */
    public I0 f21065a;

    /* renamed from: b, reason: collision with root package name */
    public int f21066b;

    /* renamed from: c, reason: collision with root package name */
    public Spliterator f21067c;

    /* renamed from: d, reason: collision with root package name */
    public Spliterator f21068d;

    /* renamed from: e, reason: collision with root package name */
    public Deque f21069e;

    public AbstractC0346l1(I0 i0) {
        this.f21065a = i0;
    }

    public static I0 a(Deque deque) {
        while (true) {
            ArrayDeque arrayDeque = (ArrayDeque) deque;
            I0 i0 = (I0) arrayDeque.pollFirst();
            if (i0 == null) {
                return null;
            }
            if (i0.o() != 0) {
                for (int o = i0.o() - 1; o >= 0; o--) {
                    arrayDeque.addFirst(i0.a(o));
                }
            } else if (i0.count() > 0) {
                return i0;
            }
        }
    }

    public final Deque b() {
        ArrayDeque arrayDeque = new ArrayDeque(8);
        int o = this.f21065a.o();
        while (true) {
            o--;
            if (o < this.f21066b) {
                return arrayDeque;
            }
            arrayDeque.addFirst(this.f21065a.a(o));
        }
    }

    public final boolean c() {
        if (this.f21065a == null) {
            return false;
        }
        if (this.f21068d != null) {
            return true;
        }
        Spliterator spliterator = this.f21067c;
        if (spliterator != null) {
            this.f21068d = spliterator;
            return true;
        }
        Deque b2 = b();
        this.f21069e = b2;
        I0 a2 = a(b2);
        if (a2 != null) {
            this.f21068d = a2.spliterator();
            return true;
        }
        this.f21065a = null;
        return false;
    }

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return 64;
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        long j = 0;
        if (this.f21065a == null) {
            return 0L;
        }
        Spliterator spliterator = this.f21067c;
        if (spliterator != null) {
            return spliterator.estimateSize();
        }
        for (int i = this.f21066b; i < this.f21065a.o(); i++) {
            j += this.f21065a.a(i).count();
        }
        return j;
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
    public /* bridge */ /* synthetic */ j$.util.D trySplit() {
        return (j$.util.D) trySplit();
    }

    @Override // j$.util.Spliterator
    public /* bridge */ /* synthetic */ j$.util.G trySplit() {
        return (j$.util.G) trySplit();
    }

    @Override // j$.util.Spliterator
    public /* bridge */ /* synthetic */ j$.util.J trySplit() {
        return (j$.util.J) trySplit();
    }

    @Override // j$.util.Spliterator
    public /* bridge */ /* synthetic */ j$.util.M trySplit() {
        return (j$.util.M) trySplit();
    }

    @Override // j$.util.Spliterator
    public final Spliterator trySplit() {
        I0 i0 = this.f21065a;
        if (i0 == null || this.f21068d != null) {
            return null;
        }
        Spliterator spliterator = this.f21067c;
        if (spliterator != null) {
            return spliterator.trySplit();
        }
        if (this.f21066b < i0.o() - 1) {
            I0 i02 = this.f21065a;
            int i = this.f21066b;
            this.f21066b = i + 1;
            return i02.a(i).spliterator();
        }
        I0 a2 = this.f21065a.a(this.f21066b);
        this.f21065a = a2;
        if (a2.o() == 0) {
            Spliterator spliterator2 = this.f21065a.spliterator();
            this.f21067c = spliterator2;
            return spliterator2.trySplit();
        }
        I0 i03 = this.f21065a;
        this.f21066b = 1;
        return i03.a(0).spliterator();
    }
}

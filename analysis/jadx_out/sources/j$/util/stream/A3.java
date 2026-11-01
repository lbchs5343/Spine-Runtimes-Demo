package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.Comparator;
import java.util.function.Consumer;

/* loaded from: classes2.dex */
public final class A3 extends C3 implements Spliterator, Consumer {

    /* renamed from: f, reason: collision with root package name */
    public Object f20829f;

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void n(Object obj) {
        this.f20829f = obj;
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return j$.util.function.j.$default$andThen(this, consumer);
    }

    @Override // j$.util.stream.C3
    public final Spliterator b(Spliterator spliterator) {
        return new A3(spliterator, this);
    }

    @Override // j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        Objects.requireNonNull(consumer);
        C0328h3 c0328h3 = null;
        while (true) {
            B3 f2 = f();
            if (f2 == B3.NO_MORE) {
                return;
            }
            B3 b3 = B3.MAYBE_MORE;
            Spliterator spliterator = this.f20839a;
            if (f2 != b3) {
                spliterator.forEachRemaining(consumer);
                return;
            }
            int i = this.f20841c;
            if (c0328h3 == null) {
                c0328h3 = new C0328h3(i);
            } else {
                c0328h3.f21045a = 0;
            }
            long j = 0;
            while (spliterator.tryAdvance(c0328h3)) {
                j++;
                if (j >= i) {
                    break;
                }
            }
            if (j == 0) {
                return;
            }
            long a2 = a(j);
            for (int i2 = 0; i2 < a2; i2++) {
                consumer.n(c0328h3.f21042b[i2]);
            }
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
        while (f() != B3.NO_MORE && this.f20839a.tryAdvance(this)) {
            if (a(1L) == 1) {
                consumer.n(this.f20829f);
                this.f20829f = null;
                return true;
            }
        }
        return false;
    }
}

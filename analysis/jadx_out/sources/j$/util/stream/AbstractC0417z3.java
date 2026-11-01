package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.Comparator;
import java.util.function.DoubleConsumer;
import java.util.function.IntConsumer;
import java.util.function.LongConsumer;

/* renamed from: j$.util.stream.z3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0417z3 extends C3 implements j$.util.M {
    @Override // j$.util.M
    public final void forEachRemaining(Object obj) {
        Objects.requireNonNull(obj);
        AbstractC0323g3 abstractC0323g3 = null;
        while (true) {
            B3 f2 = f();
            if (f2 == B3.NO_MORE) {
                return;
            }
            B3 b3 = B3.MAYBE_MORE;
            Spliterator spliterator = this.f20839a;
            if (f2 != b3) {
                ((j$.util.M) spliterator).forEachRemaining(obj);
                return;
            }
            int i = this.f20841c;
            if (abstractC0323g3 == null) {
                abstractC0323g3 = i(i);
            } else {
                abstractC0323g3.f21036b = 0;
            }
            long j = 0;
            while (((j$.util.M) spliterator).tryAdvance(abstractC0323g3)) {
                j++;
                if (j >= i) {
                    break;
                }
            }
            if (j == 0) {
                return;
            } else {
                abstractC0323g3.a(obj, a(j));
            }
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

    public abstract void g(Object obj);

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

    public abstract AbstractC0323g3 i(int i);

    @Override // j$.util.M
    public final boolean tryAdvance(Object obj) {
        Objects.requireNonNull(obj);
        while (f() != B3.NO_MORE && ((j$.util.M) this.f20839a).tryAdvance(this)) {
            if (a(1L) == 1) {
                g(obj);
                return true;
            }
        }
        return false;
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
}

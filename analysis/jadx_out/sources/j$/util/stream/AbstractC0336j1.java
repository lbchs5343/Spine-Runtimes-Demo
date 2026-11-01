package j$.util.stream;

import j$.util.Spliterator;
import java.util.Deque;
import java.util.function.DoubleConsumer;
import java.util.function.IntConsumer;
import java.util.function.LongConsumer;

/* renamed from: j$.util.stream.j1, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0336j1 extends AbstractC0346l1 implements j$.util.M {
    @Override // j$.util.M
    public final void forEachRemaining(Object obj) {
        if (this.f21065a == null) {
            return;
        }
        if (this.f21068d != null) {
            while (tryAdvance(obj)) {
            }
            return;
        }
        Spliterator spliterator = this.f21067c;
        if (spliterator != null) {
            ((j$.util.M) spliterator).forEachRemaining(obj);
            return;
        }
        Deque b2 = b();
        while (true) {
            H0 h0 = (H0) AbstractC0346l1.a(b2);
            if (h0 == null) {
                this.f21065a = null;
                return;
            }
            h0.g(obj);
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

    @Override // j$.util.M
    public final boolean tryAdvance(Object obj) {
        H0 h0;
        if (!c()) {
            return false;
        }
        boolean tryAdvance = ((j$.util.M) this.f21068d).tryAdvance(obj);
        if (!tryAdvance) {
            if (this.f21067c == null && (h0 = (H0) AbstractC0346l1.a(this.f21069e)) != null) {
                j$.util.M spliterator = h0.spliterator();
                this.f21068d = spliterator;
                return spliterator.tryAdvance(obj);
            }
            this.f21065a = null;
        }
        return tryAdvance;
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

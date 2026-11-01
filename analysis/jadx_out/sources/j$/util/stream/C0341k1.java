package j$.util.stream;

import j$.util.Spliterator;
import java.util.Deque;
import java.util.function.Consumer;

/* renamed from: j$.util.stream.k1, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0341k1 extends AbstractC0346l1 {
    @Override // j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        if (this.f21065a == null) {
            return;
        }
        if (this.f21068d != null) {
            while (tryAdvance(consumer)) {
            }
            return;
        }
        Spliterator spliterator = this.f21067c;
        if (spliterator != null) {
            spliterator.forEachRemaining(consumer);
            return;
        }
        Deque b2 = b();
        while (true) {
            I0 a2 = AbstractC0346l1.a(b2);
            if (a2 == null) {
                this.f21065a = null;
                return;
            }
            a2.forEach(consumer);
        }
    }

    @Override // j$.util.Spliterator
    public final boolean tryAdvance(Consumer consumer) {
        I0 a2;
        if (!c()) {
            return false;
        }
        boolean tryAdvance = this.f21068d.tryAdvance(consumer);
        if (!tryAdvance) {
            if (this.f21067c == null && (a2 = AbstractC0346l1.a(this.f21069e)) != null) {
                Spliterator spliterator = a2.spliterator();
                this.f21068d = spliterator;
                return spliterator.tryAdvance(consumer);
            }
            this.f21065a = null;
        }
        return tryAdvance;
    }
}

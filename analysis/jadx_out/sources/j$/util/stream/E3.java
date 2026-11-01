package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.Consumer;

/* loaded from: classes2.dex */
public final class E3 extends AbstractC0303c3 {
    @Override // j$.util.stream.AbstractC0303c3
    public final void d() {
        Y2 y2 = new Y2();
        this.h = y2;
        Objects.requireNonNull(y2);
        this.f21003e = this.f21000b.F0(new D3(y2, 0));
        this.f21004f = new j$.util.function.g(this, 12);
    }

    @Override // j$.util.stream.AbstractC0303c3
    public final AbstractC0303c3 e(Spliterator spliterator) {
        return new E3(this.f21000b, spliterator, this.f20999a);
    }

    @Override // j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        if (this.h != null || this.i) {
            while (tryAdvance(consumer)) {
            }
            return;
        }
        Objects.requireNonNull(consumer);
        c();
        Objects.requireNonNull(consumer);
        D3 d3 = new D3(consumer, 1);
        this.f21000b.E0(this.f21002d, d3);
        this.i = true;
    }

    @Override // j$.util.Spliterator
    public final boolean tryAdvance(Consumer consumer) {
        Object obj;
        Objects.requireNonNull(consumer);
        boolean a2 = a();
        if (!a2) {
            return a2;
        }
        Y2 y2 = (Y2) this.h;
        long j = this.f21005g;
        if (y2.f20997c != 0) {
            if (j >= y2.count()) {
                throw new IndexOutOfBoundsException(Long.toString(j));
            }
            for (int i = 0; i <= y2.f20997c; i++) {
                long j2 = y2.f20998d[i];
                Object[] objArr = y2.f20977f[i];
                if (j < objArr.length + j2) {
                    obj = objArr[(int) (j - j2)];
                }
            }
            throw new IndexOutOfBoundsException(Long.toString(j));
        }
        if (j >= y2.f20996b) {
            throw new IndexOutOfBoundsException(Long.toString(j));
        }
        obj = y2.f20976e[(int) j];
        consumer.n(obj);
        return a2;
    }
}

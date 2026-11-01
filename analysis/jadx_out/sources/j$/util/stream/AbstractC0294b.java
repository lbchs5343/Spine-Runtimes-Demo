package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: j$.util.stream.b, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0294b extends AbstractC0304d {
    public final AtomicReference h;
    public volatile boolean i;

    public AbstractC0294b(AbstractC0294b abstractC0294b, Spliterator spliterator) {
        super(abstractC0294b, spliterator);
        this.h = abstractC0294b.h;
    }

    public AbstractC0294b(AbstractC0405x1 abstractC0405x1, Spliterator spliterator) {
        super(abstractC0405x1, spliterator);
        this.h = new AtomicReference(null);
    }

    @Override // j$.util.stream.AbstractC0304d, java.util.concurrent.CountedCompleter
    public final void compute() {
        Object obj;
        Spliterator trySplit;
        Spliterator spliterator = this.f21010b;
        long estimateSize = spliterator.estimateSize();
        long j = this.f21011c;
        if (j == 0) {
            j = AbstractC0304d.e(estimateSize);
            this.f21011c = j;
        }
        AtomicReference atomicReference = this.h;
        boolean z = false;
        AbstractC0294b abstractC0294b = this;
        while (true) {
            obj = atomicReference.get();
            if (obj != null) {
                break;
            }
            boolean z2 = abstractC0294b.i;
            if (!z2) {
                CountedCompleter<?> completer = abstractC0294b.getCompleter();
                while (true) {
                    AbstractC0294b abstractC0294b2 = (AbstractC0294b) ((AbstractC0304d) completer);
                    if (z2 || abstractC0294b2 == null) {
                        break;
                    }
                    z2 = abstractC0294b2.i;
                    completer = abstractC0294b2.getCompleter();
                }
            }
            if (z2) {
                obj = abstractC0294b.h();
                break;
            }
            if (estimateSize <= j || (trySplit = spliterator.trySplit()) == null) {
                break;
            }
            AbstractC0294b abstractC0294b3 = (AbstractC0294b) abstractC0294b.c(trySplit);
            abstractC0294b.f21012d = abstractC0294b3;
            AbstractC0294b abstractC0294b4 = (AbstractC0294b) abstractC0294b.c(spliterator);
            abstractC0294b.f21013e = abstractC0294b4;
            abstractC0294b.setPendingCount(1);
            if (z) {
                spliterator = trySplit;
                abstractC0294b = abstractC0294b3;
                abstractC0294b3 = abstractC0294b4;
            } else {
                abstractC0294b = abstractC0294b4;
            }
            z = !z;
            abstractC0294b3.fork();
            estimateSize = spliterator.estimateSize();
        }
        obj = abstractC0294b.a();
        abstractC0294b.d(obj);
        abstractC0294b.tryComplete();
    }

    @Override // j$.util.stream.AbstractC0304d
    public final void d(Object obj) {
        if (!b()) {
            this.f21014f = obj;
        } else if (obj != null) {
            AtomicReference atomicReference = this.h;
            while (!atomicReference.compareAndSet(null, obj) && atomicReference.get() == null) {
            }
        }
    }

    public void f() {
        this.i = true;
    }

    public final void g() {
        AbstractC0294b abstractC0294b = this;
        for (AbstractC0294b abstractC0294b2 = (AbstractC0294b) ((AbstractC0304d) getCompleter()); abstractC0294b2 != null; abstractC0294b2 = (AbstractC0294b) ((AbstractC0304d) abstractC0294b2.getCompleter())) {
            if (abstractC0294b2.f21012d == abstractC0294b) {
                AbstractC0294b abstractC0294b3 = (AbstractC0294b) abstractC0294b2.f21013e;
                if (!abstractC0294b3.i) {
                    abstractC0294b3.f();
                }
            }
            abstractC0294b = abstractC0294b2;
        }
    }

    @Override // j$.util.stream.AbstractC0304d, java.util.concurrent.CountedCompleter, java.util.concurrent.ForkJoinTask
    public final Object getRawResult() {
        return i();
    }

    public abstract Object h();

    public final Object i() {
        if (!b()) {
            return this.f21014f;
        }
        Object obj = this.h.get();
        return obj == null ? h() : obj;
    }
}

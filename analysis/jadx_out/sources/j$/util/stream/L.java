package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class L extends AbstractC0294b {
    public final F j;
    public final boolean k;

    public L(F f2, boolean z, AbstractC0289a abstractC0289a, Spliterator spliterator) {
        super(abstractC0289a, spliterator);
        this.k = z;
        this.j = f2;
    }

    public L(L l, Spliterator spliterator) {
        super(l, spliterator);
        this.k = l.k;
        this.j = l.j;
    }

    @Override // j$.util.stream.AbstractC0304d
    public final Object a() {
        AbstractC0405x1 abstractC0405x1 = this.f21009a;
        H3 h3 = (H3) this.j.f20859d.get();
        abstractC0405x1.E0(this.f21010b, h3);
        Object obj = h3.get();
        if (this.k) {
            if (obj != null) {
                AbstractC0304d abstractC0304d = this;
                while (abstractC0304d != null) {
                    AbstractC0304d abstractC0304d2 = (AbstractC0304d) abstractC0304d.getCompleter();
                    if (abstractC0304d2 != null && abstractC0304d2.f21012d != abstractC0304d) {
                        g();
                        return obj;
                    }
                    abstractC0304d = abstractC0304d2;
                }
                AtomicReference atomicReference = this.h;
                while (!atomicReference.compareAndSet(null, obj) && atomicReference.get() == null) {
                }
                return obj;
            }
        } else if (obj != null) {
            AtomicReference atomicReference2 = this.h;
            while (!atomicReference2.compareAndSet(null, obj) && atomicReference2.get() == null) {
            }
        }
        return null;
    }

    @Override // j$.util.stream.AbstractC0304d
    public final AbstractC0304d c(Spliterator spliterator) {
        return new L(this, spliterator);
    }

    @Override // j$.util.stream.AbstractC0294b
    public final Object h() {
        return this.j.f20857b;
    }

    @Override // j$.util.stream.AbstractC0304d, java.util.concurrent.CountedCompleter
    public final void onCompletion(CountedCompleter countedCompleter) {
        if (this.k) {
            L l = (L) this.f21012d;
            L l2 = null;
            while (true) {
                if (l != l2) {
                    Object i = l.i();
                    if (i != null && this.j.f20858c.test(i)) {
                        d(i);
                        AbstractC0304d abstractC0304d = this;
                        while (true) {
                            if (abstractC0304d != null) {
                                AbstractC0304d abstractC0304d2 = (AbstractC0304d) abstractC0304d.getCompleter();
                                if (abstractC0304d2 != null && abstractC0304d2.f21012d != abstractC0304d) {
                                    g();
                                    break;
                                }
                                abstractC0304d = abstractC0304d2;
                            } else {
                                AtomicReference atomicReference = this.h;
                                while (!atomicReference.compareAndSet(null, i) && atomicReference.get() == null) {
                                }
                            }
                        }
                    } else {
                        l2 = l;
                        l = (L) this.f21013e;
                    }
                } else {
                    break;
                }
            }
        }
        super.onCompletion(countedCompleter);
    }
}

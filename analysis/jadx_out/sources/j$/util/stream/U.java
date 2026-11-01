package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;

/* loaded from: classes2.dex */
public final class U extends CountedCompleter {

    /* renamed from: a, reason: collision with root package name */
    public Spliterator f20954a;

    /* renamed from: b, reason: collision with root package name */
    public final InterfaceC0362o2 f20955b;

    /* renamed from: c, reason: collision with root package name */
    public final AbstractC0405x1 f20956c;

    /* renamed from: d, reason: collision with root package name */
    public long f20957d;

    public U(U u, Spliterator spliterator) {
        super(u);
        this.f20954a = spliterator;
        this.f20955b = u.f20955b;
        this.f20957d = u.f20957d;
        this.f20956c = u.f20956c;
    }

    public U(AbstractC0405x1 abstractC0405x1, Spliterator spliterator, InterfaceC0362o2 interfaceC0362o2) {
        super(null);
        this.f20955b = interfaceC0362o2;
        this.f20956c = abstractC0405x1;
        this.f20954a = spliterator;
        this.f20957d = 0L;
    }

    @Override // java.util.concurrent.CountedCompleter
    public final void compute() {
        Spliterator trySplit;
        Spliterator spliterator = this.f20954a;
        long estimateSize = spliterator.estimateSize();
        long j = this.f20957d;
        if (j == 0) {
            j = AbstractC0304d.e(estimateSize);
            this.f20957d = j;
        }
        boolean l = EnumC0293a3.SHORT_CIRCUIT.l(((AbstractC0289a) this.f20956c).m);
        InterfaceC0362o2 interfaceC0362o2 = this.f20955b;
        boolean z = false;
        U u = this;
        while (true) {
            if (l && interfaceC0362o2.e()) {
                break;
            }
            if (estimateSize <= j || (trySplit = spliterator.trySplit()) == null) {
                break;
            }
            U u2 = new U(u, trySplit);
            u.addToPendingCount(1);
            if (z) {
                spliterator = trySplit;
            } else {
                U u3 = u;
                u = u2;
                u2 = u3;
            }
            z = !z;
            u.fork();
            u = u2;
            estimateSize = spliterator.estimateSize();
        }
        u.f20956c.f0(spliterator, interfaceC0362o2);
        u.f20954a = null;
        u.propagateCompletion();
    }
}

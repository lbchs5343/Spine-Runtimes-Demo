package j$.util.stream;

import j$.util.Spliterator;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountedCompleter;

/* loaded from: classes2.dex */
public final class T extends CountedCompleter {

    /* renamed from: a, reason: collision with root package name */
    public final AbstractC0405x1 f20945a;

    /* renamed from: b, reason: collision with root package name */
    public Spliterator f20946b;

    /* renamed from: c, reason: collision with root package name */
    public final long f20947c;

    /* renamed from: d, reason: collision with root package name */
    public final ConcurrentHashMap f20948d;

    /* renamed from: e, reason: collision with root package name */
    public final S f20949e;

    /* renamed from: f, reason: collision with root package name */
    public final T f20950f;

    /* renamed from: g, reason: collision with root package name */
    public I0 f20951g;

    public T(T t, Spliterator spliterator, T t2) {
        super(t);
        this.f20945a = t.f20945a;
        this.f20946b = spliterator;
        this.f20947c = t.f20947c;
        this.f20948d = t.f20948d;
        this.f20949e = t.f20949e;
        this.f20950f = t2;
    }

    public T(AbstractC0405x1 abstractC0405x1, Spliterator spliterator, S s) {
        super(null);
        this.f20945a = abstractC0405x1;
        this.f20946b = spliterator;
        this.f20947c = AbstractC0304d.e(spliterator.estimateSize());
        this.f20948d = new ConcurrentHashMap(Math.max(16, AbstractC0304d.f21008g << 1));
        this.f20949e = s;
        this.f20950f = null;
    }

    @Override // java.util.concurrent.CountedCompleter
    public final void compute() {
        Spliterator trySplit;
        Spliterator spliterator = this.f20946b;
        long j = this.f20947c;
        boolean z = false;
        T t = this;
        while (spliterator.estimateSize() > j && (trySplit = spliterator.trySplit()) != null) {
            T t2 = new T(t, trySplit, t.f20950f);
            T t3 = new T(t, spliterator, t2);
            t.addToPendingCount(1);
            t3.addToPendingCount(1);
            t.f20948d.put(t2, t3);
            if (t.f20950f != null) {
                t2.addToPendingCount(1);
                if (t.f20948d.replace(t.f20950f, t, t2)) {
                    t.addToPendingCount(-1);
                } else {
                    t2.addToPendingCount(-1);
                }
            }
            if (z) {
                spliterator = trySplit;
                t = t2;
                t2 = t3;
            } else {
                t = t3;
            }
            z = !z;
            t2.fork();
        }
        if (t.getPendingCount() > 0) {
            C0364p c0364p = new C0364p(18);
            AbstractC0405x1 abstractC0405x1 = t.f20945a;
            A0 A0 = abstractC0405x1.A0(abstractC0405x1.k0(spliterator), c0364p);
            t.f20945a.E0(spliterator, A0);
            t.f20951g = A0.build();
            t.f20946b = null;
        }
        t.tryComplete();
    }

    @Override // java.util.concurrent.CountedCompleter
    public final void onCompletion(CountedCompleter countedCompleter) {
        I0 i0 = this.f20951g;
        if (i0 != null) {
            i0.forEach(this.f20949e);
            this.f20951g = null;
        } else {
            Spliterator spliterator = this.f20946b;
            if (spliterator != null) {
                this.f20945a.E0(spliterator, this.f20949e);
                this.f20946b = null;
            }
        }
        T t = (T) this.f20948d.remove(this);
        if (t != null) {
            t.tryComplete();
        }
    }
}

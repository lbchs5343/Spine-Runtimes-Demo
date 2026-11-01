package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;
import java.util.concurrent.ForkJoinPool;

/* renamed from: j$.util.stream.d, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0304d extends CountedCompleter {

    /* renamed from: g, reason: collision with root package name */
    public static final int f21008g = ForkJoinPool.getCommonPoolParallelism() << 2;

    /* renamed from: a, reason: collision with root package name */
    public final AbstractC0405x1 f21009a;

    /* renamed from: b, reason: collision with root package name */
    public Spliterator f21010b;

    /* renamed from: c, reason: collision with root package name */
    public long f21011c;

    /* renamed from: d, reason: collision with root package name */
    public AbstractC0304d f21012d;

    /* renamed from: e, reason: collision with root package name */
    public AbstractC0304d f21013e;

    /* renamed from: f, reason: collision with root package name */
    public Object f21014f;

    public AbstractC0304d(AbstractC0304d abstractC0304d, Spliterator spliterator) {
        super(abstractC0304d);
        this.f21010b = spliterator;
        this.f21009a = abstractC0304d.f21009a;
        this.f21011c = abstractC0304d.f21011c;
    }

    public AbstractC0304d(AbstractC0405x1 abstractC0405x1, Spliterator spliterator) {
        super(null);
        this.f21009a = abstractC0405x1;
        this.f21010b = spliterator;
        this.f21011c = 0L;
    }

    public static long e(long j) {
        long j2 = j / f21008g;
        if (j2 > 0) {
            return j2;
        }
        return 1L;
    }

    public abstract Object a();

    public final boolean b() {
        return ((AbstractC0304d) getCompleter()) == null;
    }

    public abstract AbstractC0304d c(Spliterator spliterator);

    @Override // java.util.concurrent.CountedCompleter
    public void compute() {
        Spliterator trySplit;
        Spliterator spliterator = this.f21010b;
        long estimateSize = spliterator.estimateSize();
        long j = this.f21011c;
        if (j == 0) {
            j = e(estimateSize);
            this.f21011c = j;
        }
        boolean z = false;
        AbstractC0304d abstractC0304d = this;
        while (estimateSize > j && (trySplit = spliterator.trySplit()) != null) {
            AbstractC0304d c2 = abstractC0304d.c(trySplit);
            abstractC0304d.f21012d = c2;
            AbstractC0304d c3 = abstractC0304d.c(spliterator);
            abstractC0304d.f21013e = c3;
            abstractC0304d.setPendingCount(1);
            if (z) {
                spliterator = trySplit;
                abstractC0304d = c2;
                c2 = c3;
            } else {
                abstractC0304d = c3;
            }
            z = !z;
            c2.fork();
            estimateSize = spliterator.estimateSize();
        }
        abstractC0304d.d(abstractC0304d.a());
        abstractC0304d.tryComplete();
    }

    public void d(Object obj) {
        this.f21014f = obj;
    }

    @Override // java.util.concurrent.CountedCompleter, java.util.concurrent.ForkJoinTask
    public Object getRawResult() {
        return this.f21014f;
    }

    @Override // java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        this.f21010b = null;
        this.f21013e = null;
        this.f21012d = null;
    }

    @Override // java.util.concurrent.CountedCompleter, java.util.concurrent.ForkJoinTask
    public final void setRawResult(Object obj) {
        if (obj != null) {
            throw new IllegalStateException();
        }
    }
}

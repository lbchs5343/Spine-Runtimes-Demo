package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;
import java.util.function.Consumer;

/* renamed from: j$.util.stream.t1, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0385t1 extends CountedCompleter implements InterfaceC0362o2 {

    /* renamed from: a, reason: collision with root package name */
    public final Spliterator f21098a;

    /* renamed from: b, reason: collision with root package name */
    public final AbstractC0405x1 f21099b;

    /* renamed from: c, reason: collision with root package name */
    public final long f21100c;

    /* renamed from: d, reason: collision with root package name */
    public final long f21101d;

    /* renamed from: e, reason: collision with root package name */
    public final long f21102e;

    /* renamed from: f, reason: collision with root package name */
    public int f21103f;

    /* renamed from: g, reason: collision with root package name */
    public int f21104g;

    public AbstractC0385t1(Spliterator spliterator, AbstractC0405x1 abstractC0405x1, int i) {
        this.f21098a = spliterator;
        this.f21099b = abstractC0405x1;
        this.f21100c = AbstractC0304d.e(spliterator.estimateSize());
        this.f21101d = 0L;
        this.f21102e = i;
    }

    public AbstractC0385t1(AbstractC0385t1 abstractC0385t1, Spliterator spliterator, long j, long j2, int i) {
        super(abstractC0385t1);
        this.f21098a = spliterator;
        this.f21099b = abstractC0385t1.f21099b;
        this.f21100c = abstractC0385t1.f21100c;
        this.f21101d = j;
        this.f21102e = j2;
        if (j < 0 || j2 < 0 || (j + j2) - 1 >= i) {
            throw new IllegalArgumentException(String.format("offset and length interval [%d, %d + %d) is not within array size interval [0, %d)", Long.valueOf(j), Long.valueOf(j), Long.valueOf(j2), Integer.valueOf(i)));
        }
    }

    public abstract AbstractC0385t1 a(Spliterator spliterator, long j, long j2);

    public /* synthetic */ void accept(double d2) {
        AbstractC0405x1.C();
        throw null;
    }

    public /* synthetic */ void accept(int i) {
        AbstractC0405x1.J();
        throw null;
    }

    public /* synthetic */ void accept(long j) {
        AbstractC0405x1.K();
        throw null;
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return j$.util.function.j.$default$andThen(this, consumer);
    }

    @Override // j$.util.stream.InterfaceC0362o2
    public final void c(long j) {
        long j2 = this.f21102e;
        if (j > j2) {
            throw new IllegalStateException("size passed to Sink.begin exceeds array length");
        }
        int i = (int) this.f21101d;
        this.f21103f = i;
        this.f21104g = i + ((int) j2);
    }

    @Override // java.util.concurrent.CountedCompleter
    public final void compute() {
        Spliterator trySplit;
        Spliterator spliterator = this.f21098a;
        AbstractC0385t1 abstractC0385t1 = this;
        while (spliterator.estimateSize() > abstractC0385t1.f21100c && (trySplit = spliterator.trySplit()) != null) {
            abstractC0385t1.setPendingCount(1);
            long estimateSize = trySplit.estimateSize();
            AbstractC0385t1 abstractC0385t12 = abstractC0385t1;
            abstractC0385t12.a(trySplit, abstractC0385t1.f21101d, estimateSize).fork();
            abstractC0385t1 = abstractC0385t12.a(spliterator, abstractC0385t12.f21101d + estimateSize, abstractC0385t12.f21102e - estimateSize);
        }
        AbstractC0385t1 abstractC0385t13 = abstractC0385t1;
        abstractC0385t13.f21099b.E0(spliterator, abstractC0385t13);
        abstractC0385t13.propagateCompletion();
    }

    @Override // j$.util.stream.InterfaceC0362o2
    public final /* synthetic */ boolean e() {
        return false;
    }

    @Override // j$.util.stream.InterfaceC0362o2
    public final /* synthetic */ void end() {
    }
}

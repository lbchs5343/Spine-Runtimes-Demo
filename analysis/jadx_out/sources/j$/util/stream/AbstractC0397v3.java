package j$.util.stream;

import j$.util.Spliterator;

/* renamed from: j$.util.stream.v3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0397v3 {

    /* renamed from: a, reason: collision with root package name */
    public final long f21116a;

    /* renamed from: b, reason: collision with root package name */
    public final long f21117b;

    /* renamed from: c, reason: collision with root package name */
    public Spliterator f21118c;

    /* renamed from: d, reason: collision with root package name */
    public long f21119d;

    /* renamed from: e, reason: collision with root package name */
    public long f21120e;

    public AbstractC0397v3(Spliterator spliterator, long j, long j2, long j3, long j4) {
        this.f21118c = spliterator;
        this.f21116a = j;
        this.f21117b = j2;
        this.f21119d = j3;
        this.f21120e = j4;
    }

    public abstract Spliterator a(Spliterator spliterator, long j, long j2, long j3, long j4);

    public final int characteristics() {
        return this.f21118c.characteristics();
    }

    public final long estimateSize() {
        long j = this.f21120e;
        long j2 = this.f21116a;
        if (j2 < j) {
            return j - Math.max(j2, this.f21119d);
        }
        return 0L;
    }

    public /* bridge */ /* synthetic */ j$.util.D trySplit() {
        return (j$.util.D) m30trySplit();
    }

    /* renamed from: trySplit, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ j$.util.G m27trySplit() {
        return (j$.util.G) m30trySplit();
    }

    /* renamed from: trySplit, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ j$.util.J m28trySplit() {
        return (j$.util.J) m30trySplit();
    }

    /* renamed from: trySplit, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ j$.util.M m29trySplit() {
        return (j$.util.M) m30trySplit();
    }

    /* renamed from: trySplit, reason: collision with other method in class */
    public final Spliterator m30trySplit() {
        long j = this.f21120e;
        if (this.f21116a >= j || this.f21119d >= j) {
            return null;
        }
        while (true) {
            Spliterator trySplit = this.f21118c.trySplit();
            if (trySplit == null) {
                return null;
            }
            long estimateSize = trySplit.estimateSize() + this.f21119d;
            long min = Math.min(estimateSize, this.f21117b);
            long j2 = this.f21116a;
            if (j2 >= min) {
                this.f21119d = min;
            } else {
                long j3 = this.f21117b;
                if (min < j3) {
                    long j4 = this.f21119d;
                    if (j4 < j2 || estimateSize > j3) {
                        this.f21119d = min;
                        return a(trySplit, j2, j3, j4, min);
                    }
                    this.f21119d = min;
                    return trySplit;
                }
                this.f21118c = trySplit;
                this.f21120e = min;
            }
        }
    }
}

package j$.util.stream;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import j$.util.Spliterator;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes2.dex */
public abstract class C3 {

    /* renamed from: a, reason: collision with root package name */
    public final Spliterator f20839a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f20840b;

    /* renamed from: c, reason: collision with root package name */
    public final int f20841c;

    /* renamed from: d, reason: collision with root package name */
    public final long f20842d;

    /* renamed from: e, reason: collision with root package name */
    public final AtomicLong f20843e;

    public C3(Spliterator spliterator, long j, long j2) {
        this.f20839a = spliterator;
        this.f20840b = j2 < 0;
        this.f20842d = j2 >= 0 ? j2 : 0L;
        this.f20841c = TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME;
        this.f20843e = new AtomicLong(j2 >= 0 ? j + j2 : j);
    }

    public C3(Spliterator spliterator, C3 c3) {
        this.f20839a = spliterator;
        this.f20840b = c3.f20840b;
        this.f20843e = c3.f20843e;
        this.f20842d = c3.f20842d;
        this.f20841c = c3.f20841c;
    }

    public final long a(long j) {
        long j2;
        boolean z;
        long min;
        do {
            j2 = this.f20843e.get();
            z = this.f20840b;
            if (j2 != 0) {
                min = Math.min(j2, j);
                if (min <= 0) {
                    break;
                }
            } else {
                if (z) {
                    return j;
                }
                return 0L;
            }
        } while (!this.f20843e.compareAndSet(j2, j2 - min));
        if (z) {
            return Math.max(j - min, 0L);
        }
        long j3 = this.f20842d;
        return j2 > j3 ? Math.max(min - (j2 - j3), 0L) : min;
    }

    public abstract Spliterator b(Spliterator spliterator);

    public final int characteristics() {
        return this.f20839a.characteristics() & (-16465);
    }

    public final long estimateSize() {
        return this.f20839a.estimateSize();
    }

    public final B3 f() {
        return this.f20843e.get() > 0 ? B3.MAYBE_MORE : this.f20840b ? B3.UNLIMITED : B3.NO_MORE;
    }

    public /* bridge */ /* synthetic */ j$.util.D trySplit() {
        return (j$.util.D) m25trySplit();
    }

    /* renamed from: trySplit, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ j$.util.G m22trySplit() {
        return (j$.util.G) m25trySplit();
    }

    /* renamed from: trySplit, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ j$.util.J m23trySplit() {
        return (j$.util.J) m25trySplit();
    }

    /* renamed from: trySplit, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ j$.util.M m24trySplit() {
        return (j$.util.M) m25trySplit();
    }

    /* renamed from: trySplit, reason: collision with other method in class */
    public final Spliterator m25trySplit() {
        Spliterator trySplit;
        if (this.f20843e.get() == 0 || (trySplit = this.f20839a.trySplit()) == null) {
            return null;
        }
        return b(trySplit);
    }
}

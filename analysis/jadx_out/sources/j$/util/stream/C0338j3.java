package j$.util.stream;

import j$.util.Spliterator;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Comparator;
import java.util.function.Consumer;

/* renamed from: j$.util.stream.j3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0338j3 implements Spliterator, Consumer {

    /* renamed from: d, reason: collision with root package name */
    public static final Object f21051d = new Object();

    /* renamed from: a, reason: collision with root package name */
    public final Spliterator f21052a;

    /* renamed from: b, reason: collision with root package name */
    public final ConcurrentHashMap f21053b;

    /* renamed from: c, reason: collision with root package name */
    public Object f21054c;

    public C0338j3(Spliterator spliterator, ConcurrentHashMap concurrentHashMap) {
        this.f21052a = spliterator;
        this.f21053b = concurrentHashMap;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void n(Object obj) {
        this.f21054c = obj;
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return j$.util.function.j.$default$andThen(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return (this.f21052a.characteristics() & (-16469)) | 1;
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        return this.f21052a.estimateSize();
    }

    @Override // j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        this.f21052a.forEachRemaining(new j$.util.concurrent.t(8, this, consumer));
    }

    @Override // j$.util.Spliterator
    public final Comparator getComparator() {
        return this.f21052a.getComparator();
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return j$.com.android.tools.r8.a.m(this);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return j$.com.android.tools.r8.a.o(this, i);
    }

    @Override // j$.util.Spliterator
    public final boolean tryAdvance(Consumer consumer) {
        while (this.f21052a.tryAdvance(this)) {
            Object obj = this.f21054c;
            if (obj == null) {
                obj = f21051d;
            }
            if (this.f21053b.putIfAbsent(obj, Boolean.TRUE) == null) {
                consumer.n(this.f21054c);
                this.f21054c = null;
                return true;
            }
        }
        return false;
    }

    @Override // j$.util.Spliterator
    public final Spliterator trySplit() {
        Spliterator trySplit = this.f21052a.trySplit();
        if (trySplit != null) {
            return new C0338j3(trySplit, this.f21053b);
        }
        return null;
    }
}

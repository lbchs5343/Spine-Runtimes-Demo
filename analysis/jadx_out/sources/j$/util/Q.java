package j$.util;

import java.util.NoSuchElementException;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* loaded from: classes2.dex */
public final class Q implements InterfaceC0423y, LongConsumer, InterfaceC0280j {

    /* renamed from: a, reason: collision with root package name */
    public boolean f20688a = false;

    /* renamed from: b, reason: collision with root package name */
    public long f20689b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ J f20690c;

    public Q(J j) {
        this.f20690c = j;
    }

    @Override // java.util.function.LongConsumer
    public final void accept(long j) {
        this.f20688a = true;
        this.f20689b = j;
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return j$.com.android.tools.r8.a.c(this, longConsumer);
    }

    @Override // j$.util.InterfaceC0423y, java.util.Iterator, j$.util.InterfaceC0280j
    public final void forEachRemaining(Consumer consumer) {
        if (consumer instanceof LongConsumer) {
            forEachRemaining((LongConsumer) consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        if (d0.f20790a) {
            d0.a(Q.class, "{0} calling PrimitiveIterator.OfLong.forEachRemainingLong(action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        forEachRemaining((LongConsumer) new C0420v(consumer, 0));
    }

    @Override // j$.util.InterfaceC0424z
    public final void forEachRemaining(LongConsumer longConsumer) {
        Objects.requireNonNull(longConsumer);
        while (hasNext()) {
            longConsumer.accept(nextLong());
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (!this.f20688a) {
            this.f20690c.tryAdvance((LongConsumer) this);
        }
        return this.f20688a;
    }

    @Override // java.util.Iterator
    public final Long next() {
        if (!d0.f20790a) {
            return Long.valueOf(nextLong());
        }
        d0.a(Q.class, "{0} calling PrimitiveIterator.OfLong.nextLong()");
        throw null;
    }

    @Override // j$.util.InterfaceC0423y
    public final long nextLong() {
        if (!this.f20688a && !hasNext()) {
            throw new NoSuchElementException();
        }
        this.f20688a = false;
        return this.f20689b;
    }
}

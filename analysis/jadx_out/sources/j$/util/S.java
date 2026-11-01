package j$.util;

import java.util.NoSuchElementException;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* loaded from: classes2.dex */
public final class S implements InterfaceC0287q, DoubleConsumer, InterfaceC0280j {

    /* renamed from: a, reason: collision with root package name */
    public boolean f20691a = false;

    /* renamed from: b, reason: collision with root package name */
    public double f20692b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ D f20693c;

    public S(D d2) {
        this.f20693c = d2;
    }

    @Override // java.util.function.DoubleConsumer
    public final void accept(double d2) {
        this.f20691a = true;
        this.f20692b = d2;
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return j$.com.android.tools.r8.a.b(this, doubleConsumer);
    }

    @Override // j$.util.InterfaceC0287q, java.util.Iterator, j$.util.InterfaceC0280j
    public final void forEachRemaining(Consumer consumer) {
        if (consumer instanceof DoubleConsumer) {
            forEachRemaining((DoubleConsumer) consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        if (d0.f20790a) {
            d0.a(S.class, "{0} calling PrimitiveIterator.OfDouble.forEachRemainingDouble(action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        forEachRemaining((DoubleConsumer) new C0284n(consumer, 0));
    }

    @Override // j$.util.InterfaceC0424z
    public final void forEachRemaining(DoubleConsumer doubleConsumer) {
        Objects.requireNonNull(doubleConsumer);
        while (hasNext()) {
            doubleConsumer.accept(nextDouble());
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (!this.f20691a) {
            this.f20693c.tryAdvance((DoubleConsumer) this);
        }
        return this.f20691a;
    }

    @Override // java.util.Iterator
    public final Double next() {
        if (!d0.f20790a) {
            return Double.valueOf(nextDouble());
        }
        d0.a(S.class, "{0} calling PrimitiveIterator.OfDouble.nextLong()");
        throw null;
    }

    @Override // j$.util.InterfaceC0287q
    public final double nextDouble() {
        if (!this.f20691a && !hasNext()) {
            throw new NoSuchElementException();
        }
        this.f20691a = false;
        return this.f20692b;
    }
}

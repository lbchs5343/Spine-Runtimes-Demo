package j$.util;

import java.util.NoSuchElementException;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* loaded from: classes2.dex */
public final class P implements InterfaceC0419u, IntConsumer, InterfaceC0280j {

    /* renamed from: a, reason: collision with root package name */
    public boolean f20685a = false;

    /* renamed from: b, reason: collision with root package name */
    public int f20686b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ G f20687c;

    public P(G g2) {
        this.f20687c = g2;
    }

    @Override // java.util.function.IntConsumer
    public final void accept(int i) {
        this.f20685a = true;
        this.f20686b = i;
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return j$.util.function.l.$default$andThen(this, intConsumer);
    }

    @Override // j$.util.InterfaceC0419u, java.util.Iterator, j$.util.InterfaceC0280j
    public final void forEachRemaining(Consumer consumer) {
        if (consumer instanceof IntConsumer) {
            forEachRemaining((IntConsumer) consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        if (d0.f20790a) {
            d0.a(P.class, "{0} calling PrimitiveIterator.OfInt.forEachRemainingInt(action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        forEachRemaining((IntConsumer) new r(consumer, 0));
    }

    @Override // j$.util.InterfaceC0424z
    public final void forEachRemaining(IntConsumer intConsumer) {
        Objects.requireNonNull(intConsumer);
        while (hasNext()) {
            intConsumer.accept(nextInt());
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (!this.f20685a) {
            this.f20687c.tryAdvance((IntConsumer) this);
        }
        return this.f20685a;
    }

    @Override // java.util.Iterator
    public final Integer next() {
        if (!d0.f20790a) {
            return Integer.valueOf(nextInt());
        }
        d0.a(P.class, "{0} calling PrimitiveIterator.OfInt.nextInt()");
        throw null;
    }

    @Override // j$.util.InterfaceC0419u
    public final int nextInt() {
        if (!this.f20685a && !hasNext()) {
            throw new NoSuchElementException();
        }
        this.f20685a = false;
        return this.f20686b;
    }
}

package j$.util;

import java.util.PrimitiveIterator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* renamed from: j$.util.o, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C0285o implements InterfaceC0287q, InterfaceC0280j {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ PrimitiveIterator.OfDouble f20823a;

    public /* synthetic */ C0285o(PrimitiveIterator.OfDouble ofDouble) {
        this.f20823a = ofDouble;
    }

    public final /* synthetic */ boolean equals(Object obj) {
        PrimitiveIterator.OfDouble ofDouble = this.f20823a;
        if (obj instanceof C0285o) {
            obj = ((C0285o) obj).f20823a;
        }
        return ofDouble.equals(obj);
    }

    @Override // j$.util.InterfaceC0424z
    public final /* synthetic */ void forEachRemaining(Object obj) {
        this.f20823a.forEachRemaining((PrimitiveIterator.OfDouble) obj);
    }

    @Override // j$.util.InterfaceC0287q, java.util.Iterator, j$.util.InterfaceC0280j
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f20823a.forEachRemaining((Consumer<? super Double>) consumer);
    }

    @Override // j$.util.InterfaceC0287q
    public final /* synthetic */ void forEachRemaining(DoubleConsumer doubleConsumer) {
        this.f20823a.forEachRemaining(doubleConsumer);
    }

    @Override // java.util.Iterator
    public final /* synthetic */ boolean hasNext() {
        return this.f20823a.hasNext();
    }

    public final /* synthetic */ int hashCode() {
        return this.f20823a.hashCode();
    }

    @Override // j$.util.InterfaceC0287q, java.util.Iterator
    public final /* synthetic */ Double next() {
        return this.f20823a.next();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.f20823a.next();
    }

    @Override // j$.util.InterfaceC0287q
    public final /* synthetic */ double nextDouble() {
        return this.f20823a.nextDouble();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ void remove() {
        this.f20823a.remove();
    }
}

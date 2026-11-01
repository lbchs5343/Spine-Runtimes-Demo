package j$.util;

import java.util.PrimitiveIterator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* renamed from: j$.util.s, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C0288s implements InterfaceC0419u, InterfaceC0280j {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ PrimitiveIterator.OfInt f20827a;

    public /* synthetic */ C0288s(PrimitiveIterator.OfInt ofInt) {
        this.f20827a = ofInt;
    }

    public final /* synthetic */ boolean equals(Object obj) {
        PrimitiveIterator.OfInt ofInt = this.f20827a;
        if (obj instanceof C0288s) {
            obj = ((C0288s) obj).f20827a;
        }
        return ofInt.equals(obj);
    }

    @Override // j$.util.InterfaceC0424z
    public final /* synthetic */ void forEachRemaining(Object obj) {
        this.f20827a.forEachRemaining((PrimitiveIterator.OfInt) obj);
    }

    @Override // j$.util.InterfaceC0419u, java.util.Iterator, j$.util.InterfaceC0280j
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f20827a.forEachRemaining((Consumer<? super Integer>) consumer);
    }

    @Override // j$.util.InterfaceC0419u
    public final /* synthetic */ void forEachRemaining(IntConsumer intConsumer) {
        this.f20827a.forEachRemaining(intConsumer);
    }

    @Override // java.util.Iterator
    public final /* synthetic */ boolean hasNext() {
        return this.f20827a.hasNext();
    }

    public final /* synthetic */ int hashCode() {
        return this.f20827a.hashCode();
    }

    @Override // j$.util.InterfaceC0419u, java.util.Iterator
    public final /* synthetic */ Integer next() {
        return this.f20827a.next();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.f20827a.next();
    }

    @Override // j$.util.InterfaceC0419u
    public final /* synthetic */ int nextInt() {
        return this.f20827a.nextInt();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ void remove() {
        this.f20827a.remove();
    }
}

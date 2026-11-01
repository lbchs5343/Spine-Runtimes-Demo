package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntConsumer;

/* loaded from: classes2.dex */
public final class Z extends AbstractC0300c0 {
    @Override // j$.util.stream.AbstractC0289a
    public final boolean O0() {
        throw new UnsupportedOperationException();
    }

    @Override // j$.util.stream.AbstractC0289a
    public final InterfaceC0362o2 P0(int i, InterfaceC0362o2 interfaceC0362o2) {
        throw new UnsupportedOperationException();
    }

    @Override // j$.util.stream.AbstractC0300c0, j$.util.stream.IntStream
    public final void forEach(IntConsumer intConsumer) {
        if (this.h.r) {
            super.forEach(intConsumer);
        } else {
            AbstractC0300c0.T0(R0()).forEachRemaining(intConsumer);
        }
    }

    @Override // j$.util.stream.AbstractC0300c0, j$.util.stream.IntStream
    public final void forEachOrdered(IntConsumer intConsumer) {
        if (this.h.r) {
            super.forEachOrdered(intConsumer);
        } else {
            AbstractC0300c0.T0(R0()).forEachRemaining(intConsumer);
        }
    }

    @Override // j$.util.stream.AbstractC0289a, j$.util.stream.BaseStream, j$.util.stream.E
    public final IntStream parallel() {
        this.h.r = true;
        return this;
    }

    @Override // j$.util.stream.AbstractC0289a, j$.util.stream.BaseStream, j$.util.stream.E
    public final IntStream sequential() {
        this.h.r = false;
        return this;
    }

    @Override // j$.util.stream.AbstractC0289a, j$.util.stream.BaseStream
    public final /* bridge */ /* synthetic */ Spliterator spliterator() {
        return spliterator();
    }

    @Override // j$.util.stream.BaseStream
    public final BaseStream unordered() {
        return !EnumC0293a3.ORDERED.l(this.m) ? this : new C0388u(this, EnumC0293a3.r, 2);
    }
}

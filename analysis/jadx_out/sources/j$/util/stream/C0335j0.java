package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.LongConsumer;

/* renamed from: j$.util.stream.j0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0335j0 extends AbstractC0350m0 {
    @Override // j$.util.stream.AbstractC0289a
    public final boolean O0() {
        throw new UnsupportedOperationException();
    }

    @Override // j$.util.stream.AbstractC0289a
    public final InterfaceC0362o2 P0(int i, InterfaceC0362o2 interfaceC0362o2) {
        throw new UnsupportedOperationException();
    }

    @Override // j$.util.stream.AbstractC0350m0, j$.util.stream.LongStream
    public final void forEach(LongConsumer longConsumer) {
        if (this.h.r) {
            super.forEach(longConsumer);
        } else {
            AbstractC0350m0.T0(R0()).forEachRemaining(longConsumer);
        }
    }

    @Override // j$.util.stream.AbstractC0350m0, j$.util.stream.LongStream
    public final void forEachOrdered(LongConsumer longConsumer) {
        if (this.h.r) {
            super.forEachOrdered(longConsumer);
        } else {
            AbstractC0350m0.T0(R0()).forEachRemaining(longConsumer);
        }
    }

    @Override // j$.util.stream.AbstractC0289a, j$.util.stream.BaseStream, j$.util.stream.E
    public final LongStream parallel() {
        this.h.r = true;
        return this;
    }

    @Override // j$.util.stream.AbstractC0289a, j$.util.stream.BaseStream, j$.util.stream.E
    public final LongStream sequential() {
        this.h.r = false;
        return this;
    }

    @Override // j$.util.stream.AbstractC0289a, j$.util.stream.BaseStream
    public final /* bridge */ /* synthetic */ Spliterator spliterator() {
        return spliterator();
    }

    @Override // j$.util.stream.BaseStream
    public final BaseStream unordered() {
        return !EnumC0293a3.ORDERED.l(this.m) ? this : new C0393v(this, EnumC0293a3.r, 4);
    }
}

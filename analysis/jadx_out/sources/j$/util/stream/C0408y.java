package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.DoubleConsumer;

/* renamed from: j$.util.stream.y, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0408y extends B {
    @Override // j$.util.stream.AbstractC0289a
    public final boolean O0() {
        throw new UnsupportedOperationException();
    }

    @Override // j$.util.stream.AbstractC0289a
    public final InterfaceC0362o2 P0(int i, InterfaceC0362o2 interfaceC0362o2) {
        throw new UnsupportedOperationException();
    }

    @Override // j$.util.stream.B, j$.util.stream.E
    public final void forEach(DoubleConsumer doubleConsumer) {
        if (this.h.r) {
            super.forEach(doubleConsumer);
        } else {
            B.T0(R0()).forEachRemaining(doubleConsumer);
        }
    }

    @Override // j$.util.stream.B, j$.util.stream.E
    public final void forEachOrdered(DoubleConsumer doubleConsumer) {
        if (this.h.r) {
            super.forEachOrdered(doubleConsumer);
        } else {
            B.T0(R0()).forEachRemaining(doubleConsumer);
        }
    }

    @Override // j$.util.stream.AbstractC0289a, j$.util.stream.BaseStream, j$.util.stream.E
    public final E parallel() {
        this.h.r = true;
        return this;
    }

    @Override // j$.util.stream.AbstractC0289a, j$.util.stream.BaseStream, j$.util.stream.E
    public final E sequential() {
        this.h.r = false;
        return this;
    }

    @Override // j$.util.stream.AbstractC0289a, j$.util.stream.BaseStream
    public final /* bridge */ /* synthetic */ Spliterator spliterator() {
        return spliterator();
    }

    @Override // j$.util.stream.BaseStream
    public final BaseStream unordered() {
        return !EnumC0293a3.ORDERED.l(this.m) ? this : new C0383t(this, EnumC0293a3.r, 1);
    }
}

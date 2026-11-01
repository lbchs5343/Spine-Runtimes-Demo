package j$.util.stream;

import java.util.function.Consumer;

/* renamed from: j$.util.stream.d2, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0307d2 extends AbstractC0322g2 {
    @Override // j$.util.stream.AbstractC0289a
    public final boolean O0() {
        throw new UnsupportedOperationException();
    }

    @Override // j$.util.stream.AbstractC0289a
    public final InterfaceC0362o2 P0(int i, InterfaceC0362o2 interfaceC0362o2) {
        throw new UnsupportedOperationException();
    }

    @Override // j$.util.stream.AbstractC0322g2, j$.util.stream.Stream
    public final void forEach(Consumer consumer) {
        if (this.h.r) {
            super.forEach(consumer);
        } else {
            R0().forEachRemaining(consumer);
        }
    }

    @Override // j$.util.stream.AbstractC0322g2, j$.util.stream.Stream
    public final void forEachOrdered(Consumer consumer) {
        if (this.h.r) {
            super.forEachOrdered(consumer);
        } else {
            R0().forEachRemaining(consumer);
        }
    }

    @Override // j$.util.stream.BaseStream
    public final BaseStream unordered() {
        return !EnumC0293a3.ORDERED.l(this.m) ? this : new C0297b2(this, EnumC0293a3.r);
    }
}

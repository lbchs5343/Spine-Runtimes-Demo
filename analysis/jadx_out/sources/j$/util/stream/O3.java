package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntFunction;

/* loaded from: classes2.dex */
public final class O3 extends AbstractC0290a0 implements W3 {
    @Override // j$.util.stream.AbstractC0289a
    public final I0 M0(AbstractC0405x1 abstractC0405x1, Spliterator spliterator, IntFunction intFunction) {
        return (I0) new Y3(this, abstractC0405x1, spliterator, intFunction).invoke();
    }

    @Override // j$.util.stream.AbstractC0289a
    public final Spliterator N0(AbstractC0289a abstractC0289a, Spliterator spliterator) {
        return EnumC0293a3.ORDERED.l(abstractC0289a.m) ? M0(abstractC0289a, spliterator, new C0310e0(27)).spliterator() : new b4((j$.util.G) abstractC0289a.G0(spliterator), 0);
    }

    @Override // j$.util.stream.AbstractC0289a
    public final InterfaceC0362o2 P0(int i, InterfaceC0362o2 interfaceC0362o2) {
        return new N3(this, interfaceC0362o2, false);
    }

    @Override // j$.util.stream.W3
    public final X3 h(A0 a0, boolean z) {
        return new N3(this, a0, z);
    }
}

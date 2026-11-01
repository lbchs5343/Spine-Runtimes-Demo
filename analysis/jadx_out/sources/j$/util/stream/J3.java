package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntFunction;
import java.util.function.Predicate;

/* loaded from: classes2.dex */
public final class J3 extends AbstractC0312e2 {
    public final /* synthetic */ Predicate s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public J3(AbstractC0322g2 abstractC0322g2, int i, Predicate predicate) {
        super(abstractC0322g2, i);
        this.s = predicate;
    }

    @Override // j$.util.stream.AbstractC0289a
    public final I0 M0(AbstractC0405x1 abstractC0405x1, Spliterator spliterator, IntFunction intFunction) {
        return (I0) new Z3(this, abstractC0405x1, spliterator, intFunction).invoke();
    }

    @Override // j$.util.stream.AbstractC0289a
    public final Spliterator N0(AbstractC0289a abstractC0289a, Spliterator spliterator) {
        return EnumC0293a3.ORDERED.l(abstractC0289a.m) ? M0(abstractC0289a, spliterator, new C0310e0(12)).spliterator() : new d4(abstractC0289a.G0(spliterator), this.s, 1);
    }

    @Override // j$.util.stream.AbstractC0289a
    public final InterfaceC0362o2 P0(int i, InterfaceC0362o2 interfaceC0362o2) {
        return new C0349m(this, interfaceC0362o2);
    }
}

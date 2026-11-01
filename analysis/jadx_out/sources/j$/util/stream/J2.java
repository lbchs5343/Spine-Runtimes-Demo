package j$.util.stream;

import j$.util.EnumC0275e;
import j$.util.Objects;
import j$.util.Spliterator;
import java.util.Arrays;
import java.util.Comparator;
import java.util.function.IntFunction;

/* loaded from: classes2.dex */
public final class J2 extends AbstractC0312e2 {
    public final boolean s;
    public final Comparator t;

    public J2(AbstractC0322g2 abstractC0322g2) {
        super(abstractC0322g2, EnumC0293a3.q | EnumC0293a3.o);
        this.s = true;
        this.t = EnumC0275e.INSTANCE;
    }

    public J2(AbstractC0322g2 abstractC0322g2, Comparator comparator) {
        super(abstractC0322g2, EnumC0293a3.q | EnumC0293a3.p);
        this.s = false;
        this.t = (Comparator) Objects.requireNonNull(comparator);
    }

    @Override // j$.util.stream.AbstractC0289a
    public final I0 M0(AbstractC0405x1 abstractC0405x1, Spliterator spliterator, IntFunction intFunction) {
        if (EnumC0293a3.SORTED.l(((AbstractC0289a) abstractC0405x1).m) && this.s) {
            return abstractC0405x1.j0(spliterator, false, intFunction);
        }
        Object[] m = abstractC0405x1.j0(spliterator, true, intFunction).m(intFunction);
        Arrays.sort(m, this.t);
        return new L0(m);
    }

    @Override // j$.util.stream.AbstractC0289a
    public final InterfaceC0362o2 P0(int i, InterfaceC0362o2 interfaceC0362o2) {
        Objects.requireNonNull(interfaceC0362o2);
        return (EnumC0293a3.SORTED.l(i) && this.s) ? interfaceC0362o2 : EnumC0293a3.SIZED.l(i) ? new O2(interfaceC0362o2, this.t) : new K2(interfaceC0362o2, this.t);
    }
}

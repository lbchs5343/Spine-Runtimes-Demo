package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntFunction;

/* renamed from: j$.util.stream.s2, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0381s2 extends AbstractC0290a0 {
    public final /* synthetic */ long s;
    public final /* synthetic */ long t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0381s2(AbstractC0300c0 abstractC0300c0, int i, long j, long j2) {
        super(abstractC0300c0, i);
        this.s = j;
        this.t = j2;
    }

    @Override // j$.util.stream.AbstractC0289a
    public final I0 M0(AbstractC0405x1 abstractC0405x1, Spliterator spliterator, IntFunction intFunction) {
        long j;
        long j2;
        long k0 = abstractC0405x1.k0(spliterator);
        if (k0 > 0 && spliterator.hasCharacteristics(16384)) {
            AbstractC0289a abstractC0289a = (AbstractC0289a) abstractC0405x1;
            while (abstractC0289a.l > 0) {
                abstractC0289a = abstractC0289a.i;
            }
            return AbstractC0405x1.c0(abstractC0405x1, AbstractC0405x1.X(abstractC0289a.L0(), spliterator, this.s, this.t), true);
        }
        if (EnumC0293a3.ORDERED.l(((AbstractC0289a) abstractC0405x1).m)) {
            return (I0) new C0411y2(this, abstractC0405x1, spliterator, intFunction, this.s, this.t).invoke();
        }
        j$.util.G g2 = (j$.util.G) abstractC0405x1.G0(spliterator);
        long j3 = this.s;
        long j4 = this.t;
        if (j3 <= k0) {
            long j5 = k0 - j3;
            j = j4 >= 0 ? Math.min(j4, j5) : j5;
            j2 = 0;
        } else {
            j = j4;
            j2 = j3;
        }
        return AbstractC0405x1.c0(this, new C0407x3(g2, j2, j), true);
    }

    @Override // j$.util.stream.AbstractC0289a
    public final Spliterator N0(AbstractC0289a abstractC0289a, Spliterator spliterator) {
        long k0 = abstractC0289a.k0(spliterator);
        if (k0 > 0 && spliterator.hasCharacteristics(16384)) {
            j$.util.G g2 = (j$.util.G) abstractC0289a.G0(spliterator);
            long j = this.s;
            return new C0377r3(g2, j, AbstractC0405x1.Z(j, this.t));
        }
        if (EnumC0293a3.ORDERED.l(abstractC0289a.m)) {
            return ((I0) new C0411y2(this, abstractC0289a, spliterator, new C0310e0(21), this.s, this.t).invoke()).spliterator();
        }
        j$.util.G g3 = (j$.util.G) abstractC0289a.G0(spliterator);
        long j2 = this.s;
        long j3 = this.t;
        if (j2 <= k0) {
            long j4 = k0 - j2;
            if (j3 >= 0) {
                j4 = Math.min(j3, j4);
            }
            j3 = j4;
            j2 = 0;
        }
        return new C0407x3(g3, j2, j3);
    }

    @Override // j$.util.stream.AbstractC0289a
    public final InterfaceC0362o2 P0(int i, InterfaceC0362o2 interfaceC0362o2) {
        return new C0376r2(this, interfaceC0362o2);
    }
}

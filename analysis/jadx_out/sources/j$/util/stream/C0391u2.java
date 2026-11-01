package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntFunction;

/* renamed from: j$.util.stream.u2, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0391u2 extends AbstractC0340k0 {
    public final /* synthetic */ long s;
    public final /* synthetic */ long t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0391u2(AbstractC0350m0 abstractC0350m0, int i, long j, long j2) {
        super(abstractC0350m0, i);
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
            return AbstractC0405x1.d0(abstractC0405x1, AbstractC0405x1.X(abstractC0289a.L0(), spliterator, this.s, this.t), true);
        }
        if (EnumC0293a3.ORDERED.l(((AbstractC0289a) abstractC0405x1).m)) {
            return (I0) new C0411y2(this, abstractC0405x1, spliterator, intFunction, this.s, this.t).invoke();
        }
        j$.util.J j3 = (j$.util.J) abstractC0405x1.G0(spliterator);
        long j4 = this.s;
        long j5 = this.t;
        if (j4 <= k0) {
            long j6 = k0 - j4;
            j = j5 >= 0 ? Math.min(j5, j6) : j6;
            j2 = 0;
        } else {
            j = j5;
            j2 = j4;
        }
        return AbstractC0405x1.d0(this, new C0412y3(j3, j2, j), true);
    }

    @Override // j$.util.stream.AbstractC0289a
    public final Spliterator N0(AbstractC0289a abstractC0289a, Spliterator spliterator) {
        long k0 = abstractC0289a.k0(spliterator);
        if (k0 > 0 && spliterator.hasCharacteristics(16384)) {
            j$.util.J j = (j$.util.J) abstractC0289a.G0(spliterator);
            long j2 = this.s;
            return new C0382s3(j, j2, AbstractC0405x1.Z(j2, this.t));
        }
        if (EnumC0293a3.ORDERED.l(abstractC0289a.m)) {
            return ((I0) new C0411y2(this, abstractC0289a, spliterator, new C0310e0(22), this.s, this.t).invoke()).spliterator();
        }
        j$.util.J j3 = (j$.util.J) abstractC0289a.G0(spliterator);
        long j4 = this.s;
        long j5 = this.t;
        if (j4 <= k0) {
            long j6 = k0 - j4;
            if (j5 >= 0) {
                j6 = Math.min(j5, j6);
            }
            j5 = j6;
            j4 = 0;
        }
        return new C0412y3(j3, j4, j5);
    }

    @Override // j$.util.stream.AbstractC0289a
    public final InterfaceC0362o2 P0(int i, InterfaceC0362o2 interfaceC0362o2) {
        return new C0386t2(this, interfaceC0362o2);
    }
}

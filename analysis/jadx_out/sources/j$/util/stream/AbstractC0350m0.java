package j$.util.stream;

import j$.util.C0281k;
import j$.util.C0282l;
import j$.util.C0283m;
import j$.util.C0420v;
import j$.util.InterfaceC0423y;
import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.BiConsumer;
import java.util.function.IntFunction;
import java.util.function.LongBinaryOperator;
import java.util.function.LongConsumer;
import java.util.function.LongFunction;
import java.util.function.ObjLongConsumer;
import java.util.function.Supplier;

/* renamed from: j$.util.stream.m0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0350m0 extends AbstractC0289a implements LongStream {
    public static j$.util.J T0(Spliterator spliterator) {
        if (spliterator instanceof j$.util.J) {
            return (j$.util.J) spliterator;
        }
        if (!I3.f20879a) {
            throw new UnsupportedOperationException("LongStream.adapt(Spliterator<Long> s)");
        }
        I3.a(AbstractC0289a.class, "using LongStream.adapt(Spliterator<Long> s)");
        throw null;
    }

    @Override // j$.util.stream.LongStream
    public final IntStream A() {
        Objects.requireNonNull(null);
        return new C0388u(this, EnumC0293a3.p | EnumC0293a3.n, 4);
    }

    @Override // j$.util.stream.AbstractC0405x1
    public final A0 A0(long j, IntFunction intFunction) {
        return AbstractC0405x1.t0(j);
    }

    @Override // j$.util.stream.AbstractC0289a
    public final I0 J0(AbstractC0289a abstractC0289a, Spliterator spliterator, boolean z, IntFunction intFunction) {
        return AbstractC0405x1.d0(abstractC0289a, spliterator, z);
    }

    @Override // j$.util.stream.AbstractC0289a
    public final boolean K0(Spliterator spliterator, InterfaceC0362o2 interfaceC0362o2) {
        LongConsumer c0420v;
        boolean e2;
        j$.util.J T0 = T0(spliterator);
        if (interfaceC0362o2 instanceof LongConsumer) {
            c0420v = (LongConsumer) interfaceC0362o2;
        } else {
            if (I3.f20879a) {
                I3.a(AbstractC0289a.class, "using LongStream.adapt(Sink<Long> s)");
                throw null;
            }
            Objects.requireNonNull(interfaceC0362o2);
            c0420v = new C0420v(interfaceC0362o2, 1);
        }
        do {
            e2 = interfaceC0362o2.e();
            if (e2) {
                break;
            }
        } while (T0.tryAdvance(c0420v));
        return e2;
    }

    @Override // j$.util.stream.AbstractC0289a
    public final EnumC0298b3 L0() {
        return EnumC0298b3.LONG_VALUE;
    }

    @Override // j$.util.stream.AbstractC0289a
    public final Spliterator S0(AbstractC0289a abstractC0289a, Supplier supplier, boolean z) {
        return new C0368p3(abstractC0289a, supplier, z);
    }

    @Override // j$.util.stream.LongStream
    public final LongStream a() {
        int i = f4.f21033a;
        Objects.requireNonNull(null);
        return new I2(this, f4.f21033a, 1);
    }

    @Override // j$.util.stream.LongStream
    public final E asDoubleStream() {
        return new C0383t(this, EnumC0293a3.n, 5);
    }

    @Override // j$.util.stream.LongStream
    public final C0282l average() {
        long j = ((long[]) collect(new C0310e0(6), new C0310e0(7), new C0310e0(8)))[0];
        return j > 0 ? new C0282l(r0[1] / j) : C0282l.f20815c;
    }

    @Override // j$.util.stream.LongStream
    public final LongStream b() {
        Objects.requireNonNull(null);
        return new C0393v(this, EnumC0293a3.t, 5);
    }

    @Override // j$.util.stream.LongStream
    public final Stream boxed() {
        return new C0378s(this, 0, new C0310e0(5), 2);
    }

    @Override // j$.util.stream.LongStream
    public final LongStream c() {
        int i = f4.f21033a;
        Objects.requireNonNull(null);
        return new R3(this, f4.f21034b);
    }

    @Override // j$.util.stream.LongStream
    public final Object collect(Supplier supplier, ObjLongConsumer objLongConsumer, BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        C0369q c0369q = new C0369q(biConsumer, 2);
        Objects.requireNonNull(supplier);
        Objects.requireNonNull(objLongConsumer);
        Objects.requireNonNull(c0369q);
        return H0(new C1(EnumC0298b3.LONG_VALUE, c0369q, objLongConsumer, supplier, 0));
    }

    @Override // j$.util.stream.LongStream
    public final long count() {
        return ((Long) H0(new E1(0))).longValue();
    }

    @Override // j$.util.stream.LongStream
    public final LongStream d() {
        Objects.requireNonNull(null);
        return new C0393v(this, EnumC0293a3.p | EnumC0293a3.n, 3);
    }

    @Override // j$.util.stream.LongStream
    public final LongStream distinct() {
        return ((AbstractC0322g2) boxed()).distinct().mapToLong(new C0310e0(2));
    }

    @Override // j$.util.stream.LongStream
    public final LongStream e(j$.util.function.g gVar) {
        Objects.requireNonNull(gVar);
        return new C0330i0(this, EnumC0293a3.p | EnumC0293a3.n | EnumC0293a3.t, gVar, 0);
    }

    @Override // j$.util.stream.LongStream
    public final C0283m findAny() {
        return (C0283m) H0(I.f20875d);
    }

    @Override // j$.util.stream.LongStream
    public final C0283m findFirst() {
        return (C0283m) H0(I.f20874c);
    }

    public void forEach(LongConsumer longConsumer) {
        Objects.requireNonNull(longConsumer);
        H0(new P(longConsumer, false));
    }

    public void forEachOrdered(LongConsumer longConsumer) {
        Objects.requireNonNull(longConsumer);
        H0(new P(longConsumer, true));
    }

    @Override // j$.util.stream.BaseStream, j$.util.stream.E
    public final InterfaceC0423y iterator() {
        j$.util.J spliterator = spliterator();
        Objects.requireNonNull(spliterator);
        return new j$.util.Q(spliterator);
    }

    @Override // j$.util.stream.LongStream
    public final E j() {
        Objects.requireNonNull(null);
        return new C0383t(this, EnumC0293a3.p | EnumC0293a3.n, 6);
    }

    @Override // j$.util.stream.LongStream
    public final boolean l() {
        return ((Boolean) H0(AbstractC0405x1.y0(EnumC0394v0.NONE))).booleanValue();
    }

    @Override // j$.util.stream.LongStream
    public final LongStream limit(long j) {
        if (j >= 0) {
            return AbstractC0405x1.z0(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // j$.util.stream.LongStream
    public final Stream mapToObj(LongFunction longFunction) {
        Objects.requireNonNull(longFunction);
        return new C0378s(this, EnumC0293a3.p | EnumC0293a3.n, longFunction, 2);
    }

    @Override // j$.util.stream.LongStream
    public final C0283m max() {
        return reduce(new C0310e0(9));
    }

    @Override // j$.util.stream.LongStream
    public final C0283m min() {
        return reduce(new C0310e0(1));
    }

    @Override // j$.util.stream.LongStream
    public final boolean o() {
        return ((Boolean) H0(AbstractC0405x1.y0(EnumC0394v0.ANY))).booleanValue();
    }

    @Override // j$.util.stream.LongStream
    public final LongStream peek(LongConsumer longConsumer) {
        Objects.requireNonNull(longConsumer);
        return new C0330i0(this, longConsumer);
    }

    @Override // j$.util.stream.LongStream
    public final long reduce(long j, LongBinaryOperator longBinaryOperator) {
        Objects.requireNonNull(longBinaryOperator);
        return ((Long) H0(new C0410y1(EnumC0298b3.LONG_VALUE, longBinaryOperator, j))).longValue();
    }

    @Override // j$.util.stream.LongStream
    public final C0283m reduce(LongBinaryOperator longBinaryOperator) {
        Objects.requireNonNull(longBinaryOperator);
        return (C0283m) H0(new A1(EnumC0298b3.LONG_VALUE, longBinaryOperator, 0));
    }

    @Override // j$.util.stream.LongStream
    public final LongStream skip(long j) {
        if (j >= 0) {
            return j == 0 ? this : AbstractC0405x1.z0(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // j$.util.stream.LongStream
    public final LongStream sorted() {
        return new I2(this, EnumC0293a3.q | EnumC0293a3.o, 0);
    }

    @Override // j$.util.stream.AbstractC0289a, j$.util.stream.BaseStream
    public final j$.util.J spliterator() {
        return T0(super.spliterator());
    }

    @Override // j$.util.stream.LongStream
    public final long sum() {
        return reduce(0L, new C0310e0(10));
    }

    @Override // j$.util.stream.LongStream
    public final C0281k summaryStatistics() {
        return (C0281k) collect(new j$.time.format.a(16), new C0310e0(0), new C0310e0(3));
    }

    @Override // j$.util.stream.LongStream
    public final long[] toArray() {
        return (long[]) AbstractC0405x1.p0((G0) I0(new C0310e0(4))).b();
    }

    @Override // j$.util.stream.LongStream
    public final boolean w() {
        return ((Boolean) H0(AbstractC0405x1.y0(EnumC0394v0.ALL))).booleanValue();
    }
}

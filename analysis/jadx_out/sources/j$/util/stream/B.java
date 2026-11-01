package j$.util.stream;

import j$.util.C0278h;
import j$.util.C0282l;
import j$.util.C0284n;
import j$.util.InterfaceC0287q;
import j$.util.Objects;
import j$.util.Spliterator;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.DoubleBinaryOperator;
import java.util.function.DoubleConsumer;
import java.util.function.DoubleFunction;
import java.util.function.IntFunction;
import java.util.function.ObjDoubleConsumer;
import java.util.function.Supplier;

/* loaded from: classes2.dex */
public abstract class B extends AbstractC0289a implements E {
    public static j$.util.D T0(Spliterator spliterator) {
        if (spliterator instanceof j$.util.D) {
            return (j$.util.D) spliterator;
        }
        if (!I3.f20879a) {
            throw new UnsupportedOperationException("DoubleStream.adapt(Spliterator<Double> s)");
        }
        I3.a(AbstractC0289a.class, "using DoubleStream.adapt(Spliterator<Double> s)");
        throw null;
    }

    @Override // j$.util.stream.AbstractC0405x1
    public final A0 A0(long j, IntFunction intFunction) {
        return AbstractC0405x1.h0(j);
    }

    @Override // j$.util.stream.E
    public final boolean B() {
        return ((Boolean) H0(AbstractC0405x1.u0(EnumC0394v0.NONE))).booleanValue();
    }

    @Override // j$.util.stream.AbstractC0289a
    public final I0 J0(AbstractC0289a abstractC0289a, Spliterator spliterator, boolean z, IntFunction intFunction) {
        return AbstractC0405x1.b0(abstractC0289a, spliterator, z);
    }

    @Override // j$.util.stream.AbstractC0289a
    public final boolean K0(Spliterator spliterator, InterfaceC0362o2 interfaceC0362o2) {
        DoubleConsumer c0284n;
        boolean e2;
        j$.util.D T0 = T0(spliterator);
        if (interfaceC0362o2 instanceof DoubleConsumer) {
            c0284n = (DoubleConsumer) interfaceC0362o2;
        } else {
            if (I3.f20879a) {
                I3.a(AbstractC0289a.class, "using DoubleStream.adapt(Sink<Double> s)");
                throw null;
            }
            Objects.requireNonNull(interfaceC0362o2);
            c0284n = new C0284n(interfaceC0362o2, 1);
        }
        do {
            e2 = interfaceC0362o2.e();
            if (e2) {
                break;
            }
        } while (T0.tryAdvance(c0284n));
        return e2;
    }

    @Override // j$.util.stream.AbstractC0289a
    public final EnumC0298b3 L0() {
        return EnumC0298b3.DOUBLE_VALUE;
    }

    @Override // j$.util.stream.AbstractC0289a
    public final Spliterator S0(AbstractC0289a abstractC0289a, Supplier supplier, boolean z) {
        return new C0348l3(abstractC0289a, supplier, z);
    }

    @Override // j$.util.stream.E
    public final E a() {
        int i = f4.f21033a;
        Objects.requireNonNull(null);
        return new G2(this, f4.f21033a, 1);
    }

    @Override // j$.util.stream.E
    public final C0282l average() {
        double[] dArr = (double[]) collect(new j$.time.format.a(29), new C0364p(0), new C0364p(1));
        if (dArr[2] <= 0.0d) {
            return C0282l.f20815c;
        }
        Set set = Collectors.f20844a;
        double d2 = dArr[0] + dArr[1];
        double d3 = dArr[dArr.length - 1];
        if (Double.isNaN(d2) && Double.isInfinite(d3)) {
            d2 = d3;
        }
        return new C0282l(d2 / dArr[2]);
    }

    @Override // j$.util.stream.E
    public final E b() {
        Objects.requireNonNull(null);
        return new C0383t(this, EnumC0293a3.t, 2);
    }

    @Override // j$.util.stream.E
    public final Stream boxed() {
        return new C0378s(this, 0, new C0364p(4), 0);
    }

    @Override // j$.util.stream.E
    public final E c() {
        int i = f4.f21033a;
        Objects.requireNonNull(null);
        return new V3(this, f4.f21034b);
    }

    @Override // j$.util.stream.E
    public final Object collect(Supplier supplier, ObjDoubleConsumer objDoubleConsumer, BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        C0369q c0369q = new C0369q(biConsumer, 0);
        Objects.requireNonNull(supplier);
        Objects.requireNonNull(objDoubleConsumer);
        Objects.requireNonNull(c0369q);
        return H0(new C1(EnumC0298b3.DOUBLE_VALUE, c0369q, objDoubleConsumer, supplier, 1));
    }

    @Override // j$.util.stream.E
    public final long count() {
        return ((Long) H0(new E1(1))).longValue();
    }

    @Override // j$.util.stream.E
    public final E d() {
        Objects.requireNonNull(null);
        return new C0383t(this, EnumC0293a3.p | EnumC0293a3.n, 0);
    }

    @Override // j$.util.stream.E
    public final E distinct() {
        return ((AbstractC0322g2) boxed()).distinct().mapToDouble(new C0364p(5));
    }

    @Override // j$.util.stream.E
    public final E e(j$.util.function.g gVar) {
        Objects.requireNonNull(gVar);
        return new C0403x(this, EnumC0293a3.p | EnumC0293a3.n | EnumC0293a3.t, gVar, 0);
    }

    @Override // j$.util.stream.E
    public final C0282l findAny() {
        return (C0282l) H0(G.f20868d);
    }

    @Override // j$.util.stream.E
    public final C0282l findFirst() {
        return (C0282l) H0(G.f20867c);
    }

    @Override // j$.util.stream.E
    public void forEach(DoubleConsumer doubleConsumer) {
        Objects.requireNonNull(doubleConsumer);
        H0(new N(doubleConsumer, false));
    }

    @Override // j$.util.stream.E
    public void forEachOrdered(DoubleConsumer doubleConsumer) {
        Objects.requireNonNull(doubleConsumer);
        H0(new N(doubleConsumer, true));
    }

    @Override // j$.util.stream.BaseStream, j$.util.stream.E
    public final InterfaceC0287q iterator() {
        j$.util.D spliterator = spliterator();
        Objects.requireNonNull(spliterator);
        return new j$.util.S(spliterator);
    }

    @Override // j$.util.stream.E
    public final E limit(long j) {
        if (j >= 0) {
            return AbstractC0405x1.v0(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // j$.util.stream.E
    public final boolean m() {
        return ((Boolean) H0(AbstractC0405x1.u0(EnumC0394v0.ANY))).booleanValue();
    }

    @Override // j$.util.stream.E
    public final Stream mapToObj(DoubleFunction doubleFunction) {
        Objects.requireNonNull(doubleFunction);
        return new C0378s(this, EnumC0293a3.p | EnumC0293a3.n, doubleFunction, 0);
    }

    @Override // j$.util.stream.E
    public final C0282l max() {
        return reduce(new C0364p(7));
    }

    @Override // j$.util.stream.E
    public final C0282l min() {
        return reduce(new j$.time.format.a(28));
    }

    @Override // j$.util.stream.E
    public final E peek(DoubleConsumer doubleConsumer) {
        Objects.requireNonNull(doubleConsumer);
        return new C0403x(this, doubleConsumer);
    }

    @Override // j$.util.stream.E
    public final double reduce(double d2, DoubleBinaryOperator doubleBinaryOperator) {
        Objects.requireNonNull(doubleBinaryOperator);
        return ((Double) H0(new G1(EnumC0298b3.DOUBLE_VALUE, doubleBinaryOperator, d2))).doubleValue();
    }

    @Override // j$.util.stream.E
    public final C0282l reduce(DoubleBinaryOperator doubleBinaryOperator) {
        Objects.requireNonNull(doubleBinaryOperator);
        return (C0282l) H0(new A1(EnumC0298b3.DOUBLE_VALUE, doubleBinaryOperator, 1));
    }

    @Override // j$.util.stream.E
    public final E skip(long j) {
        if (j >= 0) {
            return j == 0 ? this : AbstractC0405x1.v0(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // j$.util.stream.E
    public final E sorted() {
        return new G2(this, EnumC0293a3.q | EnumC0293a3.o, 0);
    }

    @Override // j$.util.stream.AbstractC0289a, j$.util.stream.BaseStream
    public final j$.util.D spliterator() {
        return T0(super.spliterator());
    }

    @Override // j$.util.stream.E
    public final double sum() {
        double[] dArr = (double[]) collect(new C0364p(8), new C0364p(9), new j$.time.format.a(27));
        Set set = Collectors.f20844a;
        double d2 = dArr[0] + dArr[1];
        double d3 = dArr[dArr.length - 1];
        return (Double.isNaN(d2) && Double.isInfinite(d3)) ? d3 : d2;
    }

    @Override // j$.util.stream.E
    public final C0278h summaryStatistics() {
        return (C0278h) collect(new j$.time.format.a(10), new C0364p(2), new C0364p(3));
    }

    @Override // j$.util.stream.E
    public final boolean t() {
        return ((Boolean) H0(AbstractC0405x1.u0(EnumC0394v0.ALL))).booleanValue();
    }

    @Override // j$.util.stream.E
    public final double[] toArray() {
        return (double[]) AbstractC0405x1.n0((C0) I0(new C0364p(6))).b();
    }

    @Override // j$.util.stream.E
    public final LongStream u() {
        Objects.requireNonNull(null);
        return new C0393v(this, EnumC0293a3.p | EnumC0293a3.n, 0);
    }

    @Override // j$.util.stream.E
    public final IntStream y() {
        Objects.requireNonNull(null);
        return new C0388u(this, EnumC0293a3.p | EnumC0293a3.n, 0);
    }
}

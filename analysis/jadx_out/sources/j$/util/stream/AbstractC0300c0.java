package j$.util.stream;

import j$.util.C0279i;
import j$.util.C0282l;
import j$.util.InterfaceC0419u;
import j$.util.Objects;
import j$.util.OptionalInt;
import j$.util.Spliterator;
import java.util.function.BiConsumer;
import java.util.function.IntBinaryOperator;
import java.util.function.IntConsumer;
import java.util.function.IntFunction;
import java.util.function.ObjIntConsumer;
import java.util.function.Supplier;

/* renamed from: j$.util.stream.c0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0300c0 extends AbstractC0289a implements IntStream {
    public static j$.util.G T0(Spliterator spliterator) {
        if (spliterator instanceof j$.util.G) {
            return (j$.util.G) spliterator;
        }
        if (!I3.f20879a) {
            throw new UnsupportedOperationException("IntStream.adapt(Spliterator<Integer> s)");
        }
        I3.a(AbstractC0289a.class, "using IntStream.adapt(Spliterator<Integer> s)");
        throw null;
    }

    @Override // j$.util.stream.AbstractC0405x1
    public final A0 A0(long j, IntFunction intFunction) {
        return AbstractC0405x1.s0(j);
    }

    @Override // j$.util.stream.AbstractC0289a
    public final I0 J0(AbstractC0289a abstractC0289a, Spliterator spliterator, boolean z, IntFunction intFunction) {
        return AbstractC0405x1.c0(abstractC0289a, spliterator, z);
    }

    @Override // j$.util.stream.AbstractC0289a
    public final boolean K0(Spliterator spliterator, InterfaceC0362o2 interfaceC0362o2) {
        IntConsumer rVar;
        boolean e2;
        j$.util.G T0 = T0(spliterator);
        if (interfaceC0362o2 instanceof IntConsumer) {
            rVar = (IntConsumer) interfaceC0362o2;
        } else {
            if (I3.f20879a) {
                I3.a(AbstractC0289a.class, "using IntStream.adapt(Sink<Integer> s)");
                throw null;
            }
            Objects.requireNonNull(interfaceC0362o2);
            rVar = new j$.util.r(interfaceC0362o2, 1);
        }
        do {
            e2 = interfaceC0362o2.e();
            if (e2) {
                break;
            }
        } while (T0.tryAdvance(rVar));
        return e2;
    }

    @Override // j$.util.stream.AbstractC0289a
    public final EnumC0298b3 L0() {
        return EnumC0298b3.INT_VALUE;
    }

    @Override // j$.util.stream.AbstractC0289a
    public final Spliterator S0(AbstractC0289a abstractC0289a, Supplier supplier, boolean z) {
        return new C0358n3(abstractC0289a, supplier, z);
    }

    @Override // j$.util.stream.IntStream
    public final IntStream a() {
        int i = f4.f21033a;
        Objects.requireNonNull(null);
        return new H2(this, f4.f21033a, 1);
    }

    @Override // j$.util.stream.IntStream
    public final E asDoubleStream() {
        return new C0383t(this, 0, 3);
    }

    @Override // j$.util.stream.IntStream
    public final LongStream asLongStream() {
        return new C0393v(this, 0, 1);
    }

    @Override // j$.util.stream.IntStream
    public final C0282l average() {
        long j = ((long[]) collect(new C0364p(27), new C0364p(28), new C0364p(29)))[0];
        return j > 0 ? new C0282l(r0[1] / j) : C0282l.f20815c;
    }

    @Override // j$.util.stream.IntStream
    public final IntStream b() {
        Objects.requireNonNull(null);
        return new C0388u(this, EnumC0293a3.t, 3);
    }

    @Override // j$.util.stream.IntStream
    public final Stream boxed() {
        return new C0378s(this, 0, new C0364p(21), 1);
    }

    @Override // j$.util.stream.IntStream
    public final IntStream c() {
        int i = f4.f21033a;
        Objects.requireNonNull(null);
        return new O3(this, f4.f21034b);
    }

    @Override // j$.util.stream.IntStream
    public final Object collect(Supplier supplier, ObjIntConsumer objIntConsumer, BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        C0369q c0369q = new C0369q(biConsumer, 1);
        Objects.requireNonNull(supplier);
        Objects.requireNonNull(objIntConsumer);
        Objects.requireNonNull(c0369q);
        return H0(new C1(EnumC0298b3.INT_VALUE, c0369q, objIntConsumer, supplier, 4));
    }

    @Override // j$.util.stream.IntStream
    public final long count() {
        return ((Long) H0(new E1(3))).longValue();
    }

    @Override // j$.util.stream.IntStream
    public final IntStream d() {
        Objects.requireNonNull(null);
        return new C0388u(this, EnumC0293a3.p | EnumC0293a3.n, 1);
    }

    @Override // j$.util.stream.IntStream
    public final IntStream distinct() {
        return ((AbstractC0322g2) boxed()).distinct().mapToInt(new C0364p(20));
    }

    @Override // j$.util.stream.IntStream
    public final OptionalInt findAny() {
        return (OptionalInt) H0(H.f20870d);
    }

    @Override // j$.util.stream.IntStream
    public final OptionalInt findFirst() {
        return (OptionalInt) H0(H.f20869c);
    }

    public void forEach(IntConsumer intConsumer) {
        Objects.requireNonNull(intConsumer);
        H0(new O(intConsumer, false));
    }

    public void forEachOrdered(IntConsumer intConsumer) {
        Objects.requireNonNull(intConsumer);
        H0(new O(intConsumer, true));
    }

    @Override // j$.util.stream.IntStream
    public final E g() {
        Objects.requireNonNull(null);
        return new C0383t(this, EnumC0293a3.p | EnumC0293a3.n, 4);
    }

    @Override // j$.util.stream.BaseStream, j$.util.stream.E
    public final InterfaceC0419u iterator() {
        j$.util.G spliterator = spliterator();
        Objects.requireNonNull(spliterator);
        return new j$.util.P(spliterator);
    }

    @Override // j$.util.stream.IntStream
    public final LongStream k() {
        Objects.requireNonNull(null);
        return new C0393v(this, EnumC0293a3.p | EnumC0293a3.n, 2);
    }

    @Override // j$.util.stream.IntStream
    public final IntStream limit(long j) {
        if (j >= 0) {
            return AbstractC0405x1.x0(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // j$.util.stream.IntStream
    public final Stream mapToObj(IntFunction intFunction) {
        Objects.requireNonNull(intFunction);
        return new C0378s(this, EnumC0293a3.p | EnumC0293a3.n, intFunction, 1);
    }

    @Override // j$.util.stream.IntStream
    public final OptionalInt max() {
        return reduce(new C0364p(26));
    }

    @Override // j$.util.stream.IntStream
    public final OptionalInt min() {
        return reduce(new C0364p(22));
    }

    @Override // j$.util.stream.IntStream
    public final boolean n() {
        return ((Boolean) H0(AbstractC0405x1.w0(EnumC0394v0.ALL))).booleanValue();
    }

    @Override // j$.util.stream.IntStream
    public final IntStream p(M m) {
        Objects.requireNonNull(m);
        return new W(this, EnumC0293a3.p | EnumC0293a3.n | EnumC0293a3.t, m, 1);
    }

    @Override // j$.util.stream.IntStream
    public final IntStream peek(IntConsumer intConsumer) {
        Objects.requireNonNull(intConsumer);
        return new W(this, intConsumer);
    }

    @Override // j$.util.stream.IntStream
    public final int reduce(int i, IntBinaryOperator intBinaryOperator) {
        Objects.requireNonNull(intBinaryOperator);
        return ((Integer) H0(new N1(EnumC0298b3.INT_VALUE, intBinaryOperator, i))).intValue();
    }

    @Override // j$.util.stream.IntStream
    public final OptionalInt reduce(IntBinaryOperator intBinaryOperator) {
        Objects.requireNonNull(intBinaryOperator);
        return (OptionalInt) H0(new A1(EnumC0298b3.INT_VALUE, intBinaryOperator, 3));
    }

    @Override // j$.util.stream.IntStream
    public final boolean s() {
        return ((Boolean) H0(AbstractC0405x1.w0(EnumC0394v0.NONE))).booleanValue();
    }

    @Override // j$.util.stream.IntStream
    public final IntStream skip(long j) {
        if (j >= 0) {
            return j == 0 ? this : AbstractC0405x1.x0(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // j$.util.stream.IntStream
    public final IntStream sorted() {
        return new H2(this, EnumC0293a3.q | EnumC0293a3.o, 0);
    }

    @Override // j$.util.stream.AbstractC0289a, j$.util.stream.BaseStream
    public final j$.util.G spliterator() {
        return T0(super.spliterator());
    }

    @Override // j$.util.stream.IntStream
    public final int sum() {
        return reduce(0, new C0364p(25));
    }

    @Override // j$.util.stream.IntStream
    public final C0279i summaryStatistics() {
        return (C0279i) collect(new j$.time.format.a(13), new C0364p(23), new C0364p(24));
    }

    @Override // j$.util.stream.IntStream
    public final int[] toArray() {
        return (int[]) AbstractC0405x1.o0((E0) I0(new C0364p(19))).b();
    }

    @Override // j$.util.stream.IntStream
    public final boolean x() {
        return ((Boolean) H0(AbstractC0405x1.w0(EnumC0394v0.ANY))).booleanValue();
    }
}

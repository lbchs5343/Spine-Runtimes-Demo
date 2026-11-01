package j$.util.stream;

import j$.util.C0276f;
import j$.util.Objects;
import j$.util.Spliterator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import java.util.function.Function;
import java.util.function.IntConsumer;
import java.util.function.IntFunction;
import java.util.function.LongConsumer;
import java.util.function.Predicate;
import java.util.stream.Collector;

/* renamed from: j$.util.stream.x1, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0405x1 implements G3 {

    /* renamed from: a, reason: collision with root package name */
    public static final C0291a1 f21129a = new C0291a1();

    /* renamed from: b, reason: collision with root package name */
    public static final Y0 f21130b = new Y0();

    /* renamed from: c, reason: collision with root package name */
    public static final Z0 f21131c = new Z0();

    /* renamed from: d, reason: collision with root package name */
    public static final X0 f21132d = new X0();

    /* renamed from: e, reason: collision with root package name */
    public static final int[] f21133e = new int[0];

    /* renamed from: f, reason: collision with root package name */
    public static final long[] f21134f = new long[0];

    /* renamed from: g, reason: collision with root package name */
    public static final double[] f21135g = new double[0];

    public static j$.util.concurrent.t B0(EnumC0394v0 enumC0394v0, Predicate predicate) {
        Objects.requireNonNull(predicate);
        Objects.requireNonNull(enumC0394v0);
        return new j$.util.concurrent.t(EnumC0298b3.REFERENCE, enumC0394v0, new j$.util.concurrent.t(5, enumC0394v0, predicate));
    }

    public static void C() {
        throw new IllegalStateException("called wrong accept method");
    }

    public static C0372q2 C0(AbstractC0322g2 abstractC0322g2, long j, long j2) {
        if (j >= 0) {
            return new C0372q2(abstractC0322g2, l0(j2), j, j2);
        }
        throw new IllegalArgumentException("Skip must be non-negative: " + j);
    }

    public static void D(InterfaceC0347l2 interfaceC0347l2, Double d2) {
        if (I3.f20879a) {
            I3.a(interfaceC0347l2.getClass(), "{0} calling Sink.OfDouble.accept(Double)");
            throw null;
        }
        interfaceC0347l2.accept(d2.doubleValue());
    }

    public static void F(InterfaceC0352m2 interfaceC0352m2, Integer num) {
        if (I3.f20879a) {
            I3.a(interfaceC0352m2.getClass(), "{0} calling Sink.OfInt.accept(Integer)");
            throw null;
        }
        interfaceC0352m2.accept(num.intValue());
    }

    public static void H(InterfaceC0357n2 interfaceC0357n2, Long l) {
        if (I3.f20879a) {
            I3.a(interfaceC0357n2.getClass(), "{0} calling Sink.OfLong.accept(Long)");
            throw null;
        }
        interfaceC0357n2.accept(l.longValue());
    }

    public static void J() {
        throw new IllegalStateException("called wrong accept method");
    }

    public static void K() {
        throw new IllegalStateException("called wrong accept method");
    }

    public static Object[] L(H0 h0, IntFunction intFunction) {
        if (I3.f20879a) {
            I3.a(h0.getClass(), "{0} calling Node.OfPrimitive.asArray");
            throw null;
        }
        if (h0.count() >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        Object[] objArr = (Object[]) intFunction.apply((int) h0.count());
        h0.k(objArr, 0);
        return objArr;
    }

    public static void M(C0 c0, Double[] dArr, int i) {
        if (I3.f20879a) {
            I3.a(c0.getClass(), "{0} calling Node.OfDouble.copyInto(Double[], int)");
            throw null;
        }
        double[] dArr2 = (double[]) c0.b();
        for (int i2 = 0; i2 < dArr2.length; i2++) {
            dArr[i + i2] = Double.valueOf(dArr2[i2]);
        }
    }

    public static void N(E0 e0, Integer[] numArr, int i) {
        if (I3.f20879a) {
            I3.a(e0.getClass(), "{0} calling Node.OfInt.copyInto(Integer[], int)");
            throw null;
        }
        int[] iArr = (int[]) e0.b();
        for (int i2 = 0; i2 < iArr.length; i2++) {
            numArr[i + i2] = Integer.valueOf(iArr[i2]);
        }
    }

    public static void O(G0 g0, Long[] lArr, int i) {
        if (I3.f20879a) {
            I3.a(g0.getClass(), "{0} calling Node.OfInt.copyInto(Long[], int)");
            throw null;
        }
        long[] jArr = (long[]) g0.b();
        for (int i2 = 0; i2 < jArr.length; i2++) {
            lArr[i + i2] = Long.valueOf(jArr[i2]);
        }
    }

    public static void P(C0 c0, Consumer consumer) {
        if (consumer instanceof DoubleConsumer) {
            c0.g((DoubleConsumer) consumer);
        } else {
            if (I3.f20879a) {
                I3.a(c0.getClass(), "{0} calling Node.OfLong.forEachRemaining(Consumer)");
                throw null;
            }
            ((j$.util.D) c0.spliterator()).forEachRemaining(consumer);
        }
    }

    public static void Q(E0 e0, Consumer consumer) {
        if (consumer instanceof IntConsumer) {
            e0.g((IntConsumer) consumer);
        } else {
            if (I3.f20879a) {
                I3.a(e0.getClass(), "{0} calling Node.OfInt.forEachRemaining(Consumer)");
                throw null;
            }
            ((j$.util.G) e0.spliterator()).forEachRemaining(consumer);
        }
    }

    public static void R(G0 g0, Consumer consumer) {
        if (consumer instanceof LongConsumer) {
            g0.g((LongConsumer) consumer);
        } else {
            if (I3.f20879a) {
                I3.a(g0.getClass(), "{0} calling Node.OfLong.forEachRemaining(Consumer)");
                throw null;
            }
            ((j$.util.J) g0.spliterator()).forEachRemaining(consumer);
        }
    }

    public static C0 S(C0 c0, long j, long j2) {
        if (j == 0 && j2 == c0.count()) {
            return c0;
        }
        long j3 = j2 - j;
        j$.util.D d2 = (j$.util.D) c0.spliterator();
        InterfaceC0404x0 h0 = h0(j3);
        h0.c(j3);
        for (int i = 0; i < j && d2.tryAdvance((DoubleConsumer) new B0(0)); i++) {
        }
        if (j2 == c0.count()) {
            d2.forEachRemaining((DoubleConsumer) h0);
        } else {
            for (int i2 = 0; i2 < j3 && d2.tryAdvance((DoubleConsumer) h0); i2++) {
            }
        }
        h0.end();
        return h0.build();
    }

    public static E0 T(E0 e0, long j, long j2) {
        if (j == 0 && j2 == e0.count()) {
            return e0;
        }
        long j3 = j2 - j;
        j$.util.G g2 = (j$.util.G) e0.spliterator();
        InterfaceC0409y0 s0 = s0(j3);
        s0.c(j3);
        for (int i = 0; i < j && g2.tryAdvance((IntConsumer) new D0(0)); i++) {
        }
        if (j2 == e0.count()) {
            g2.forEachRemaining((IntConsumer) s0);
        } else {
            for (int i2 = 0; i2 < j3 && g2.tryAdvance((IntConsumer) s0); i2++) {
            }
        }
        s0.end();
        return s0.build();
    }

    public static G0 U(G0 g0, long j, long j2) {
        if (j == 0 && j2 == g0.count()) {
            return g0;
        }
        long j3 = j2 - j;
        j$.util.J j4 = (j$.util.J) g0.spliterator();
        InterfaceC0414z0 t0 = t0(j3);
        t0.c(j3);
        for (int i = 0; i < j && j4.tryAdvance((LongConsumer) new F0(0)); i++) {
        }
        if (j2 == g0.count()) {
            j4.forEachRemaining((LongConsumer) t0);
        } else {
            for (int i2 = 0; i2 < j3 && j4.tryAdvance((LongConsumer) t0); i2++) {
            }
        }
        t0.end();
        return t0.build();
    }

    public static I0 V(I0 i0, long j, long j2, IntFunction intFunction) {
        if (j == 0 && j2 == i0.count()) {
            return i0;
        }
        Spliterator spliterator = i0.spliterator();
        long j3 = j2 - j;
        A0 Y = Y(j3, intFunction);
        Y.c(j3);
        for (int i = 0; i < j && spliterator.tryAdvance(new C0310e0(11)); i++) {
        }
        if (j2 == i0.count()) {
            spliterator.forEachRemaining(Y);
        } else {
            for (int i2 = 0; i2 < j3 && spliterator.tryAdvance(Y); i2++) {
            }
        }
        Y.end();
        return Y.build();
    }

    public static long W(long j, long j2, long j3) {
        if (j >= 0) {
            return Math.max(-1L, Math.min(j - j2, j3));
        }
        return -1L;
    }

    public static Spliterator X(EnumC0298b3 enumC0298b3, Spliterator spliterator, long j, long j2) {
        long Z = Z(j, j2);
        int i = AbstractC0406x2.f21136a[enumC0298b3.ordinal()];
        if (i == 1) {
            return new C0392u3(spliterator, j, Z);
        }
        if (i == 2) {
            return new C0377r3((j$.util.G) spliterator, j, Z);
        }
        if (i == 3) {
            return new C0382s3((j$.util.J) spliterator, j, Z);
        }
        if (i == 4) {
            return new C0373q3((j$.util.D) spliterator, j, Z);
        }
        throw new IllegalStateException("Unknown shape " + enumC0298b3);
    }

    public static A0 Y(long j, IntFunction intFunction) {
        return (j < 0 || j >= 2147483639) ? new C0390u1() : new C0301c1(j, intFunction);
    }

    public static long Z(long j, long j2) {
        long j3 = j2 >= 0 ? j + j2 : Long.MAX_VALUE;
        if (j3 >= 0) {
            return j3;
        }
        return Long.MAX_VALUE;
    }

    public static I0 a0(AbstractC0405x1 abstractC0405x1, Spliterator spliterator, boolean z, IntFunction intFunction) {
        long k0 = abstractC0405x1.k0(spliterator);
        if (k0 < 0 || !spliterator.hasCharacteristics(16384)) {
            M m = new M();
            m.f20904a = intFunction;
            I0 i0 = (I0) new N0(abstractC0405x1, spliterator, m, new C0310e0(19), 3).invoke();
            return z ? m0(i0, intFunction) : i0;
        }
        if (k0 >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        Object[] objArr = (Object[]) intFunction.apply((int) k0);
        new C0380s1(spliterator, abstractC0405x1, objArr).invoke();
        return new L0(objArr);
    }

    public static C0 b0(AbstractC0405x1 abstractC0405x1, Spliterator spliterator, boolean z) {
        long k0 = abstractC0405x1.k0(spliterator);
        if (k0 < 0 || !spliterator.hasCharacteristics(16384)) {
            C0 c0 = (C0) new N0(abstractC0405x1, spliterator, new C0310e0(13), new C0310e0(14), 0).invoke();
            return z ? n0(c0) : c0;
        }
        if (k0 >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        double[] dArr = new double[(int) k0];
        new C0366p1(spliterator, abstractC0405x1, dArr).invoke();
        return new U0(dArr);
    }

    public static E0 c0(AbstractC0405x1 abstractC0405x1, Spliterator spliterator, boolean z) {
        long k0 = abstractC0405x1.k0(spliterator);
        if (k0 < 0 || !spliterator.hasCharacteristics(16384)) {
            E0 e0 = (E0) new N0(abstractC0405x1, spliterator, new C0310e0(15), new C0310e0(16), 1).invoke();
            return z ? o0(e0) : e0;
        }
        if (k0 >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        int[] iArr = new int[(int) k0];
        new C0371q1(spliterator, abstractC0405x1, iArr).invoke();
        return new C0306d1(iArr);
    }

    public static G0 d0(AbstractC0405x1 abstractC0405x1, Spliterator spliterator, boolean z) {
        long k0 = abstractC0405x1.k0(spliterator);
        if (k0 < 0 || !spliterator.hasCharacteristics(16384)) {
            G0 g0 = (G0) new N0(abstractC0405x1, spliterator, new C0310e0(17), new C0310e0(18), 2).invoke();
            return z ? p0(g0) : g0;
        }
        if (k0 >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        long[] jArr = new long[(int) k0];
        new C0375r1(spliterator, abstractC0405x1, jArr).invoke();
        return new C0351m1(jArr);
    }

    public static K0 e0(EnumC0298b3 enumC0298b3, I0 i0, I0 i02) {
        int i = J0.f20883a[enumC0298b3.ordinal()];
        if (i == 1) {
            return new T0(i0, i02);
        }
        if (i == 2) {
            return new Q0((E0) i0, (E0) i02);
        }
        if (i == 3) {
            return new R0((G0) i0, (G0) i02);
        }
        if (i == 4) {
            return new P0((C0) i0, (C0) i02);
        }
        throw new IllegalStateException("Unknown shape " + enumC0298b3);
    }

    public static InterfaceC0404x0 h0(long j) {
        return (j < 0 || j >= 2147483639) ? new W0() : new V0(j);
    }

    public static AbstractC0296b1 i0(EnumC0298b3 enumC0298b3) {
        int i = J0.f20883a[enumC0298b3.ordinal()];
        if (i == 1) {
            return f21129a;
        }
        if (i == 2) {
            return f21130b;
        }
        if (i == 3) {
            return f21131c;
        }
        if (i == 4) {
            return f21132d;
        }
        throw new IllegalStateException("Unknown shape " + enumC0298b3);
    }

    public static int l0(long j) {
        return (j != -1 ? EnumC0293a3.u : 0) | EnumC0293a3.t;
    }

    public static I0 m0(I0 i0, IntFunction intFunction) {
        if (i0.o() <= 0) {
            return i0;
        }
        long count = i0.count();
        if (count >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        Object[] objArr = (Object[]) intFunction.apply((int) count);
        new C0400w1(i0, objArr, 1).invoke();
        return new L0(objArr);
    }

    public static C0 n0(C0 c0) {
        if (c0.o() <= 0) {
            return c0;
        }
        long count = c0.count();
        if (count >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        double[] dArr = new double[(int) count];
        new C0395v1(c0, dArr, 0).invoke();
        return new U0(dArr);
    }

    public static E0 o0(E0 e0) {
        if (e0.o() <= 0) {
            return e0;
        }
        long count = e0.count();
        if (count >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        int[] iArr = new int[(int) count];
        new C0395v1(e0, iArr, 0).invoke();
        return new C0306d1(iArr);
    }

    public static G0 p0(G0 g0) {
        if (g0.o() <= 0) {
            return g0;
        }
        long count = g0.count();
        if (count >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        long[] jArr = new long[(int) count];
        new C0395v1(g0, jArr, 0).invoke();
        return new C0351m1(jArr);
    }

    public static Set q0(Set set) {
        if (set == null || set.isEmpty()) {
            return set;
        }
        HashSet hashSet = new HashSet();
        Object next = set.iterator().next();
        if (next instanceof EnumC0319g) {
            Iterator it = set.iterator();
            while (it.hasNext()) {
                try {
                    EnumC0319g enumC0319g = (EnumC0319g) it.next();
                    hashSet.add(enumC0319g == null ? null : enumC0319g == EnumC0319g.CONCURRENT ? Collector.Characteristics.CONCURRENT : enumC0319g == EnumC0319g.UNORDERED ? Collector.Characteristics.UNORDERED : Collector.Characteristics.IDENTITY_FINISH);
                } catch (ClassCastException e2) {
                    C0276f.a(e2, "java.util.stream.Collector.Characteristics");
                    throw null;
                }
            }
        } else {
            if (!(next instanceof Collector.Characteristics)) {
                C0276f.a(next.getClass(), "java.util.stream.Collector.Characteristics");
                throw null;
            }
            Iterator it2 = set.iterator();
            while (it2.hasNext()) {
                try {
                    Collector.Characteristics characteristics = (Collector.Characteristics) it2.next();
                    hashSet.add(characteristics == null ? null : characteristics == Collector.Characteristics.CONCURRENT ? EnumC0319g.CONCURRENT : characteristics == Collector.Characteristics.UNORDERED ? EnumC0319g.UNORDERED : EnumC0319g.IDENTITY_FINISH);
                } catch (ClassCastException e3) {
                    C0276f.a(e3, "java.util.stream.Collector.Characteristics");
                    throw null;
                }
            }
        }
        return hashSet;
    }

    public static C0339k r0(Function function) {
        C0339k c0339k = new C0339k();
        c0339k.f21056b = function;
        return c0339k;
    }

    public static InterfaceC0409y0 s0(long j) {
        return (j < 0 || j >= 2147483639) ? new C0316f1() : new C0311e1(j);
    }

    public static InterfaceC0414z0 t0(long j) {
        return (j < 0 || j >= 2147483639) ? new C0361o1() : new C0356n1(j);
    }

    public static j$.util.concurrent.t u0(EnumC0394v0 enumC0394v0) {
        Objects.requireNonNull(null);
        Objects.requireNonNull(enumC0394v0);
        return new j$.util.concurrent.t(EnumC0298b3.DOUBLE_VALUE, enumC0394v0, new C0365p0(enumC0394v0, 2));
    }

    public static C0401w2 v0(B b2, long j, long j2) {
        if (j >= 0) {
            return new C0401w2(b2, l0(j2), j, j2);
        }
        throw new IllegalArgumentException("Skip must be non-negative: " + j);
    }

    public static j$.util.concurrent.t w0(EnumC0394v0 enumC0394v0) {
        Objects.requireNonNull(null);
        Objects.requireNonNull(enumC0394v0);
        return new j$.util.concurrent.t(EnumC0298b3.INT_VALUE, enumC0394v0, new C0365p0(enumC0394v0, 1));
    }

    public static C0381s2 x0(AbstractC0300c0 abstractC0300c0, long j, long j2) {
        if (j >= 0) {
            return new C0381s2(abstractC0300c0, l0(j2), j, j2);
        }
        throw new IllegalArgumentException("Skip must be non-negative: " + j);
    }

    public static j$.util.concurrent.t y0(EnumC0394v0 enumC0394v0) {
        Objects.requireNonNull(null);
        Objects.requireNonNull(enumC0394v0);
        return new j$.util.concurrent.t(EnumC0298b3.LONG_VALUE, enumC0394v0, new C0365p0(enumC0394v0, 0));
    }

    public static C0391u2 z0(AbstractC0350m0 abstractC0350m0, long j, long j2) {
        if (j >= 0) {
            return new C0391u2(abstractC0350m0, l0(j2), j, j2);
        }
        throw new IllegalArgumentException("Skip must be non-negative: " + j);
    }

    public abstract A0 A0(long j, IntFunction intFunction);

    public abstract S1 D0();

    public abstract InterfaceC0362o2 E0(Spliterator spliterator, InterfaceC0362o2 interfaceC0362o2);

    public abstract InterfaceC0362o2 F0(InterfaceC0362o2 interfaceC0362o2);

    public abstract Spliterator G0(Spliterator spliterator);

    @Override // j$.util.stream.G3
    public Object f(AbstractC0289a abstractC0289a, Spliterator spliterator) {
        S1 D0 = D0();
        abstractC0289a.E0(spliterator, D0);
        return D0.get();
    }

    public abstract void f0(Spliterator spliterator, InterfaceC0362o2 interfaceC0362o2);

    public abstract boolean g0(Spliterator spliterator, InterfaceC0362o2 interfaceC0362o2);

    @Override // j$.util.stream.G3
    public Object i(AbstractC0405x1 abstractC0405x1, Spliterator spliterator) {
        return ((S1) new Z1(this, abstractC0405x1, spliterator).invoke()).get();
    }

    public abstract I0 j0(Spliterator spliterator, boolean z, IntFunction intFunction);

    public abstract long k0(Spliterator spliterator);

    @Override // j$.util.stream.G3
    public /* synthetic */ int v() {
        return 0;
    }
}

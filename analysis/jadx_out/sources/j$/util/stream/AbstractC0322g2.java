package j$.util.stream;

import j$.util.Objects;
import j$.util.Optional;
import j$.util.Spliterator;
import java.util.Comparator;
import java.util.Iterator;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.function.ToDoubleFunction;
import java.util.function.ToIntFunction;
import java.util.function.ToLongFunction;

/* renamed from: j$.util.stream.g2, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0322g2 extends AbstractC0289a implements Stream {
    @Override // j$.util.stream.AbstractC0405x1
    public final A0 A0(long j, IntFunction intFunction) {
        return AbstractC0405x1.Y(j, intFunction);
    }

    @Override // j$.util.stream.AbstractC0289a
    public final I0 J0(AbstractC0289a abstractC0289a, Spliterator spliterator, boolean z, IntFunction intFunction) {
        return AbstractC0405x1.a0(abstractC0289a, spliterator, z, intFunction);
    }

    @Override // j$.util.stream.AbstractC0289a
    public final boolean K0(Spliterator spliterator, InterfaceC0362o2 interfaceC0362o2) {
        boolean e2;
        do {
            e2 = interfaceC0362o2.e();
            if (e2) {
                break;
            }
        } while (spliterator.tryAdvance(interfaceC0362o2));
        return e2;
    }

    @Override // j$.util.stream.AbstractC0289a
    public final EnumC0298b3 L0() {
        return EnumC0298b3.REFERENCE;
    }

    @Override // j$.util.stream.AbstractC0289a
    public final Spliterator S0(AbstractC0289a abstractC0289a, Supplier supplier, boolean z) {
        return new E3(abstractC0289a, supplier, z);
    }

    @Override // j$.util.stream.Stream
    public final boolean allMatch(Predicate predicate) {
        return ((Boolean) H0(AbstractC0405x1.B0(EnumC0394v0.ALL, predicate))).booleanValue();
    }

    @Override // j$.util.stream.Stream
    public final boolean anyMatch(Predicate predicate) {
        return ((Boolean) H0(AbstractC0405x1.B0(EnumC0394v0.ANY, predicate))).booleanValue();
    }

    @Override // j$.util.stream.Stream
    public final Object collect(Collector collector) {
        Collector collector2;
        Object H0;
        if (this.h.r && collector.characteristics().contains(EnumC0319g.CONCURRENT) && (!EnumC0293a3.ORDERED.l(this.m) || collector.characteristics().contains(EnumC0319g.UNORDERED))) {
            H0 = collector.supplier().get();
            forEach(new j$.util.concurrent.t(7, collector.accumulator(), H0));
            collector2 = collector;
        } else {
            Supplier supplier = ((Collector) Objects.requireNonNull(collector)).supplier();
            collector2 = collector;
            H0 = H0(new J1(EnumC0298b3.REFERENCE, collector.combiner(), collector.accumulator(), supplier, collector2));
        }
        return collector2.characteristics().contains(EnumC0319g.IDENTITY_FINISH) ? H0 : collector2.finisher().apply(H0);
    }

    @Override // j$.util.stream.Stream
    public final Object collect(Supplier supplier, BiConsumer biConsumer, BiConsumer biConsumer2) {
        Objects.requireNonNull(supplier);
        Objects.requireNonNull(biConsumer);
        Objects.requireNonNull(biConsumer2);
        return H0(new C1(EnumC0298b3.REFERENCE, biConsumer2, biConsumer, supplier, 3));
    }

    @Override // j$.util.stream.Stream
    public final long count() {
        return ((Long) H0(new E1(2))).longValue();
    }

    @Override // j$.util.stream.Stream
    public final Stream distinct() {
        return new C0359o(this, EnumC0293a3.m | EnumC0293a3.t);
    }

    @Override // j$.util.stream.Stream
    public final Stream dropWhile(Predicate predicate) {
        int i = f4.f21033a;
        Objects.requireNonNull(predicate);
        return new L3(this, f4.f21034b, predicate);
    }

    @Override // j$.util.stream.Stream
    public final Stream filter(Predicate predicate) {
        Objects.requireNonNull(predicate);
        return new C0378s(this, EnumC0293a3.t, predicate, 4);
    }

    @Override // j$.util.stream.Stream
    public final Optional findAny() {
        return (Optional) H0(J.f20882d);
    }

    @Override // j$.util.stream.Stream
    public final Optional findFirst() {
        return (Optional) H0(J.f20881c);
    }

    @Override // j$.util.stream.Stream
    public final Stream flatMap(Function function) {
        Objects.requireNonNull(function);
        return new C0302c2(this, EnumC0293a3.p | EnumC0293a3.n | EnumC0293a3.t, function, 1);
    }

    public void forEach(Consumer consumer) {
        Objects.requireNonNull(consumer);
        H0(new Q(consumer, false));
    }

    public void forEachOrdered(Consumer consumer) {
        Objects.requireNonNull(consumer);
        H0(new Q(consumer, true));
    }

    @Override // j$.util.stream.BaseStream, j$.util.stream.E
    public final Iterator iterator() {
        Spliterator spliterator = spliterator();
        Objects.requireNonNull(spliterator);
        return new j$.util.O(spliterator);
    }

    @Override // j$.util.stream.Stream
    public final Stream limit(long j) {
        if (j >= 0) {
            return AbstractC0405x1.C0(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // j$.util.stream.Stream
    public final Stream map(Function function) {
        Objects.requireNonNull(function);
        return new C0302c2(this, EnumC0293a3.p | EnumC0293a3.n, function, 0);
    }

    @Override // j$.util.stream.Stream
    public final E mapToDouble(ToDoubleFunction toDoubleFunction) {
        Objects.requireNonNull(toDoubleFunction);
        return new C0403x(this, EnumC0293a3.p | EnumC0293a3.n, toDoubleFunction, 2);
    }

    @Override // j$.util.stream.Stream
    public final IntStream mapToInt(ToIntFunction toIntFunction) {
        Objects.requireNonNull(toIntFunction);
        return new W(this, EnumC0293a3.p | EnumC0293a3.n, toIntFunction, 2);
    }

    @Override // j$.util.stream.Stream
    public final LongStream mapToLong(ToLongFunction toLongFunction) {
        Objects.requireNonNull(toLongFunction);
        return new C0330i0(this, EnumC0293a3.p | EnumC0293a3.n, toLongFunction, 3);
    }

    @Override // j$.util.stream.Stream
    public final Optional max(Comparator comparator) {
        Objects.requireNonNull(comparator);
        return reduce(new j$.util.function.a(comparator, 0));
    }

    @Override // j$.util.stream.Stream
    public final Optional min(Comparator comparator) {
        Objects.requireNonNull(comparator);
        return reduce(new j$.util.function.a(comparator, 1));
    }

    @Override // j$.util.stream.Stream
    public final boolean noneMatch(Predicate predicate) {
        return ((Boolean) H0(AbstractC0405x1.B0(EnumC0394v0.NONE, predicate))).booleanValue();
    }

    @Override // j$.util.stream.Stream
    public final Stream peek(Consumer consumer) {
        Objects.requireNonNull(consumer);
        return new C0378s(this, consumer);
    }

    @Override // j$.util.stream.Stream
    public final E q(C0339k c0339k) {
        Objects.requireNonNull(c0339k);
        return new C0403x(this, EnumC0293a3.p | EnumC0293a3.n | EnumC0293a3.t, c0339k, 3);
    }

    @Override // j$.util.stream.Stream
    public final IntStream r(C0339k c0339k) {
        Objects.requireNonNull(c0339k);
        return new W(this, EnumC0293a3.p | EnumC0293a3.n | EnumC0293a3.t, c0339k, 3);
    }

    @Override // j$.util.stream.Stream
    public final Optional reduce(BinaryOperator binaryOperator) {
        Objects.requireNonNull(binaryOperator);
        return (Optional) H0(new A1(EnumC0298b3.REFERENCE, binaryOperator, 2));
    }

    @Override // j$.util.stream.Stream
    public final Object reduce(Object obj, BiFunction biFunction, BinaryOperator binaryOperator) {
        Objects.requireNonNull(biFunction);
        Objects.requireNonNull(binaryOperator);
        return H0(new C1(EnumC0298b3.REFERENCE, binaryOperator, biFunction, obj, 2));
    }

    @Override // j$.util.stream.Stream
    public final Object reduce(Object obj, BinaryOperator binaryOperator) {
        Objects.requireNonNull(binaryOperator);
        Objects.requireNonNull(binaryOperator);
        return H0(new C1(EnumC0298b3.REFERENCE, binaryOperator, binaryOperator, obj, 2));
    }

    @Override // j$.util.stream.Stream
    public final Stream skip(long j) {
        if (j >= 0) {
            return j == 0 ? this : AbstractC0405x1.C0(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // j$.util.stream.Stream
    public final Stream sorted() {
        return new J2(this);
    }

    @Override // j$.util.stream.Stream
    public final Stream sorted(Comparator comparator) {
        return new J2(this, comparator);
    }

    @Override // j$.util.stream.Stream
    public final Stream takeWhile(Predicate predicate) {
        int i = f4.f21033a;
        Objects.requireNonNull(predicate);
        return new J3(this, f4.f21033a, predicate);
    }

    @Override // j$.util.stream.Stream
    public final Object[] toArray() {
        return toArray(new C0310e0(20));
    }

    @Override // j$.util.stream.Stream
    public final Object[] toArray(IntFunction intFunction) {
        return AbstractC0405x1.m0(I0(intFunction), intFunction).m(intFunction);
    }

    @Override // j$.util.stream.Stream
    public final LongStream z(C0339k c0339k) {
        Objects.requireNonNull(c0339k);
        return new C0330i0(this, EnumC0293a3.p | EnumC0293a3.n | EnumC0293a3.t, c0339k, 2);
    }
}

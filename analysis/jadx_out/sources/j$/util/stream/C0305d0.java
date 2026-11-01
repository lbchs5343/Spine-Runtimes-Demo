package j$.util.stream;

import j$.util.C0288s;
import j$.util.C0418t;
import j$.util.InterfaceC0419u;
import j$.util.Spliterator;
import j$.util.stream.IntStream;
import j$.util.stream.Stream;
import java.util.IntSummaryStatistics;
import java.util.Iterator;
import java.util.OptionalDouble;
import java.util.OptionalInt;
import java.util.Spliterator;
import java.util.function.BiConsumer;
import java.util.function.IntBinaryOperator;
import java.util.function.IntConsumer;
import java.util.function.IntFunction;
import java.util.function.IntPredicate;
import java.util.function.IntToDoubleFunction;
import java.util.function.IntToLongFunction;
import java.util.function.IntUnaryOperator;
import java.util.function.ObjIntConsumer;
import java.util.function.Supplier;
import java.util.stream.DoubleStream;

/* renamed from: j$.util.stream.d0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C0305d0 implements java.util.stream.IntStream {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ IntStream f21015a;

    public /* synthetic */ C0305d0(IntStream intStream) {
        this.f21015a = intStream;
    }

    public static /* synthetic */ java.util.stream.IntStream f(IntStream intStream) {
        if (intStream == null) {
            return null;
        }
        return intStream instanceof IntStream.VivifiedWrapper ? ((IntStream.VivifiedWrapper) intStream).f20880a : new C0305d0(intStream);
    }

    @Override // java.util.stream.IntStream
    public final /* synthetic */ boolean allMatch(IntPredicate intPredicate) {
        return this.f21015a.n();
    }

    @Override // java.util.stream.IntStream
    public final /* synthetic */ boolean anyMatch(IntPredicate intPredicate) {
        return this.f21015a.x();
    }

    @Override // java.util.stream.IntStream
    public final /* synthetic */ DoubleStream asDoubleStream() {
        return D.f(this.f21015a.asDoubleStream());
    }

    @Override // java.util.stream.IntStream
    public final /* synthetic */ java.util.stream.LongStream asLongStream() {
        return C0360o0.f(this.f21015a.asLongStream());
    }

    @Override // java.util.stream.IntStream
    public final /* synthetic */ OptionalDouble average() {
        return j$.com.android.tools.r8.a.F(this.f21015a.average());
    }

    @Override // java.util.stream.IntStream
    public final /* synthetic */ java.util.stream.Stream boxed() {
        return Stream.Wrapper.convert(this.f21015a.boxed());
    }

    @Override // java.util.stream.BaseStream, java.lang.AutoCloseable
    public final /* synthetic */ void close() {
        this.f21015a.close();
    }

    @Override // java.util.stream.IntStream
    public final /* synthetic */ Object collect(Supplier supplier, ObjIntConsumer objIntConsumer, BiConsumer biConsumer) {
        return this.f21015a.collect(supplier, objIntConsumer, biConsumer);
    }

    @Override // java.util.stream.IntStream
    public final /* synthetic */ long count() {
        return this.f21015a.count();
    }

    @Override // java.util.stream.IntStream
    public final /* synthetic */ java.util.stream.IntStream distinct() {
        return f(this.f21015a.distinct());
    }

    public final /* synthetic */ java.util.stream.IntStream dropWhile(IntPredicate intPredicate) {
        return f(this.f21015a.c());
    }

    public final /* synthetic */ boolean equals(Object obj) {
        IntStream intStream = this.f21015a;
        if (obj instanceof C0305d0) {
            obj = ((C0305d0) obj).f21015a;
        }
        return intStream.equals(obj);
    }

    @Override // java.util.stream.IntStream
    public final /* synthetic */ java.util.stream.IntStream filter(IntPredicate intPredicate) {
        return f(this.f21015a.b());
    }

    @Override // java.util.stream.IntStream
    public final /* synthetic */ OptionalInt findAny() {
        return j$.com.android.tools.r8.a.G(this.f21015a.findAny());
    }

    @Override // java.util.stream.IntStream
    public final /* synthetic */ OptionalInt findFirst() {
        return j$.com.android.tools.r8.a.G(this.f21015a.findFirst());
    }

    @Override // java.util.stream.IntStream
    public final java.util.stream.IntStream flatMap(IntFunction intFunction) {
        IntStream intStream = this.f21015a;
        M m = new M();
        m.f20904a = intFunction;
        return f(intStream.p(m));
    }

    @Override // java.util.stream.IntStream
    public final /* synthetic */ void forEach(IntConsumer intConsumer) {
        this.f21015a.forEach(intConsumer);
    }

    @Override // java.util.stream.IntStream
    public final /* synthetic */ void forEachOrdered(IntConsumer intConsumer) {
        this.f21015a.forEachOrdered(intConsumer);
    }

    public final /* synthetic */ int hashCode() {
        return this.f21015a.hashCode();
    }

    @Override // java.util.stream.BaseStream
    public final /* synthetic */ boolean isParallel() {
        return this.f21015a.isParallel();
    }

    @Override // java.util.stream.IntStream, java.util.stream.BaseStream
    public final /* synthetic */ Iterator<Integer> iterator() {
        return this.f21015a.iterator();
    }

    @Override // java.util.stream.IntStream, java.util.stream.BaseStream
    /* renamed from: iterator, reason: avoid collision after fix types in other method */
    public final /* synthetic */ Iterator<Integer> iterator2() {
        InterfaceC0419u it = this.f21015a.iterator();
        if (it == null) {
            return null;
        }
        return it instanceof C0288s ? ((C0288s) it).f20827a : new C0418t(it);
    }

    @Override // java.util.stream.IntStream
    public final /* synthetic */ java.util.stream.IntStream limit(long j) {
        return f(this.f21015a.limit(j));
    }

    @Override // java.util.stream.IntStream
    public final /* synthetic */ java.util.stream.IntStream map(IntUnaryOperator intUnaryOperator) {
        return f(this.f21015a.d());
    }

    @Override // java.util.stream.IntStream
    public final /* synthetic */ DoubleStream mapToDouble(IntToDoubleFunction intToDoubleFunction) {
        return D.f(this.f21015a.g());
    }

    @Override // java.util.stream.IntStream
    public final /* synthetic */ java.util.stream.LongStream mapToLong(IntToLongFunction intToLongFunction) {
        return C0360o0.f(this.f21015a.k());
    }

    @Override // java.util.stream.IntStream
    public final /* synthetic */ java.util.stream.Stream mapToObj(IntFunction intFunction) {
        return Stream.Wrapper.convert(this.f21015a.mapToObj(intFunction));
    }

    @Override // java.util.stream.IntStream
    public final /* synthetic */ OptionalInt max() {
        return j$.com.android.tools.r8.a.G(this.f21015a.max());
    }

    @Override // java.util.stream.IntStream
    public final /* synthetic */ OptionalInt min() {
        return j$.com.android.tools.r8.a.G(this.f21015a.min());
    }

    @Override // java.util.stream.IntStream
    public final /* synthetic */ boolean noneMatch(IntPredicate intPredicate) {
        return this.f21015a.s();
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [java.util.stream.BaseStream, java.util.stream.IntStream] */
    @Override // java.util.stream.BaseStream
    public final /* synthetic */ java.util.stream.IntStream onClose(Runnable runnable) {
        return C0314f.f(this.f21015a.onClose(runnable));
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.stream.BaseStream, java.util.stream.IntStream] */
    @Override // java.util.stream.IntStream, java.util.stream.BaseStream
    public final /* synthetic */ java.util.stream.IntStream parallel() {
        return C0314f.f(this.f21015a.parallel());
    }

    @Override // java.util.stream.IntStream, java.util.stream.BaseStream
    /* renamed from: parallel, reason: avoid collision after fix types in other method */
    public final /* synthetic */ java.util.stream.IntStream parallel2() {
        return f(this.f21015a.parallel());
    }

    @Override // java.util.stream.IntStream
    public final /* synthetic */ java.util.stream.IntStream peek(IntConsumer intConsumer) {
        return f(this.f21015a.peek(intConsumer));
    }

    @Override // java.util.stream.IntStream
    public final /* synthetic */ int reduce(int i, IntBinaryOperator intBinaryOperator) {
        return this.f21015a.reduce(i, intBinaryOperator);
    }

    @Override // java.util.stream.IntStream
    public final /* synthetic */ OptionalInt reduce(IntBinaryOperator intBinaryOperator) {
        return j$.com.android.tools.r8.a.G(this.f21015a.reduce(intBinaryOperator));
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.stream.BaseStream, java.util.stream.IntStream] */
    @Override // java.util.stream.IntStream, java.util.stream.BaseStream
    public final /* synthetic */ java.util.stream.IntStream sequential() {
        return C0314f.f(this.f21015a.sequential());
    }

    @Override // java.util.stream.IntStream, java.util.stream.BaseStream
    /* renamed from: sequential, reason: avoid collision after fix types in other method */
    public final /* synthetic */ java.util.stream.IntStream sequential2() {
        return f(this.f21015a.sequential());
    }

    @Override // java.util.stream.IntStream
    public final /* synthetic */ java.util.stream.IntStream skip(long j) {
        return f(this.f21015a.skip(j));
    }

    @Override // java.util.stream.IntStream
    public final /* synthetic */ java.util.stream.IntStream sorted() {
        return f(this.f21015a.sorted());
    }

    @Override // java.util.stream.IntStream, java.util.stream.BaseStream
    public final /* synthetic */ Spliterator<Integer> spliterator() {
        return j$.util.F.a(this.f21015a.spliterator());
    }

    @Override // java.util.stream.IntStream, java.util.stream.BaseStream
    /* renamed from: spliterator, reason: avoid collision after fix types in other method */
    public final /* synthetic */ Spliterator<Integer> spliterator2() {
        return Spliterator.Wrapper.convert(this.f21015a.spliterator());
    }

    @Override // java.util.stream.IntStream
    public final /* synthetic */ int sum() {
        return this.f21015a.sum();
    }

    @Override // java.util.stream.IntStream
    public final IntSummaryStatistics summaryStatistics() {
        this.f21015a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert to java.util.IntSummaryStatistics");
    }

    public final /* synthetic */ java.util.stream.IntStream takeWhile(IntPredicate intPredicate) {
        return f(this.f21015a.a());
    }

    @Override // java.util.stream.IntStream
    public final /* synthetic */ int[] toArray() {
        return this.f21015a.toArray();
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.stream.BaseStream, java.util.stream.IntStream] */
    @Override // java.util.stream.BaseStream
    public final /* synthetic */ java.util.stream.IntStream unordered() {
        return C0314f.f(this.f21015a.unordered());
    }
}

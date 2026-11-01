package j$.util.stream;

import j$.util.C0281k;
import j$.util.C0282l;
import j$.util.C0283m;
import j$.util.C0421w;
import j$.util.C0422x;
import j$.util.InterfaceC0423y;
import j$.util.Spliterator;
import j$.util.stream.IntStream;
import j$.util.stream.Stream;
import java.util.Iterator;
import java.util.function.BiConsumer;
import java.util.function.LongBinaryOperator;
import java.util.function.LongConsumer;
import java.util.function.LongFunction;
import java.util.function.ObjLongConsumer;
import java.util.function.Supplier;

/* renamed from: j$.util.stream.n0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C0355n0 implements LongStream {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ java.util.stream.LongStream f21079a;

    public /* synthetic */ C0355n0(java.util.stream.LongStream longStream) {
        this.f21079a = longStream;
    }

    public static /* synthetic */ LongStream f(java.util.stream.LongStream longStream) {
        if (longStream == null) {
            return null;
        }
        return longStream instanceof C0360o0 ? ((C0360o0) longStream).f21080a : new C0355n0(longStream);
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ IntStream A() {
        return IntStream.VivifiedWrapper.convert(this.f21079a.mapToInt(null));
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ LongStream a() {
        return f(this.f21079a.takeWhile(null));
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ E asDoubleStream() {
        return C.f(this.f21079a.asDoubleStream());
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ C0282l average() {
        return j$.com.android.tools.r8.a.B(this.f21079a.average());
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ LongStream b() {
        return f(this.f21079a.filter(null));
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ Stream boxed() {
        return Stream.VivifiedWrapper.convert(this.f21079a.boxed());
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ LongStream c() {
        return f(this.f21079a.dropWhile(null));
    }

    @Override // j$.util.stream.BaseStream, java.lang.AutoCloseable
    public final /* synthetic */ void close() {
        this.f21079a.close();
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ Object collect(Supplier supplier, ObjLongConsumer objLongConsumer, BiConsumer biConsumer) {
        return this.f21079a.collect(supplier, objLongConsumer, biConsumer);
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ long count() {
        return this.f21079a.count();
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ LongStream d() {
        return f(this.f21079a.map(null));
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ LongStream distinct() {
        return f(this.f21079a.distinct());
    }

    @Override // j$.util.stream.LongStream
    public final LongStream e(j$.util.function.g gVar) {
        java.util.stream.LongStream longStream = this.f21079a;
        j$.util.function.g gVar2 = new j$.util.function.g(6);
        gVar2.f20807b = gVar;
        return f(longStream.flatMap(gVar2));
    }

    public final /* synthetic */ boolean equals(Object obj) {
        java.util.stream.LongStream longStream = this.f21079a;
        if (obj instanceof C0355n0) {
            obj = ((C0355n0) obj).f21079a;
        }
        return longStream.equals(obj);
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ C0283m findAny() {
        return j$.com.android.tools.r8.a.D(this.f21079a.findAny());
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ C0283m findFirst() {
        return j$.com.android.tools.r8.a.D(this.f21079a.findFirst());
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ void forEach(LongConsumer longConsumer) {
        this.f21079a.forEach(longConsumer);
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ void forEachOrdered(LongConsumer longConsumer) {
        this.f21079a.forEachOrdered(longConsumer);
    }

    public final /* synthetic */ int hashCode() {
        return this.f21079a.hashCode();
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ boolean isParallel() {
        return this.f21079a.isParallel();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.PrimitiveIterator$OfLong] */
    @Override // j$.util.stream.LongStream, j$.util.stream.BaseStream, j$.util.stream.E
    public final /* synthetic */ InterfaceC0423y iterator() {
        ?? it = this.f21079a.iterator();
        if (it == 0) {
            return null;
        }
        return it instanceof C0422x ? ((C0422x) it).f21147a : new C0421w(it);
    }

    @Override // j$.util.stream.BaseStream, j$.util.stream.E
    public final /* synthetic */ Iterator iterator() {
        return this.f21079a.iterator();
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ E j() {
        return C.f(this.f21079a.mapToDouble(null));
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ boolean l() {
        return this.f21079a.noneMatch(null);
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ LongStream limit(long j) {
        return f(this.f21079a.limit(j));
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ Stream mapToObj(LongFunction longFunction) {
        return Stream.VivifiedWrapper.convert(this.f21079a.mapToObj(longFunction));
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ C0283m max() {
        return j$.com.android.tools.r8.a.D(this.f21079a.max());
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ C0283m min() {
        return j$.com.android.tools.r8.a.D(this.f21079a.min());
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ boolean o() {
        return this.f21079a.anyMatch(null);
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ BaseStream onClose(Runnable runnable) {
        return C0309e.f(this.f21079a.onClose(runnable));
    }

    @Override // j$.util.stream.BaseStream, j$.util.stream.E
    public final /* synthetic */ BaseStream parallel() {
        return C0309e.f(this.f21079a.parallel());
    }

    @Override // j$.util.stream.LongStream, j$.util.stream.BaseStream, j$.util.stream.E
    public final /* synthetic */ LongStream parallel() {
        return f(this.f21079a.parallel());
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ LongStream peek(LongConsumer longConsumer) {
        return f(this.f21079a.peek(longConsumer));
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ long reduce(long j, LongBinaryOperator longBinaryOperator) {
        return this.f21079a.reduce(j, longBinaryOperator);
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ C0283m reduce(LongBinaryOperator longBinaryOperator) {
        return j$.com.android.tools.r8.a.D(this.f21079a.reduce(longBinaryOperator));
    }

    @Override // j$.util.stream.BaseStream, j$.util.stream.E
    public final /* synthetic */ BaseStream sequential() {
        return C0309e.f(this.f21079a.sequential());
    }

    @Override // j$.util.stream.LongStream, j$.util.stream.BaseStream, j$.util.stream.E
    public final /* synthetic */ LongStream sequential() {
        return f(this.f21079a.sequential());
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ LongStream skip(long j) {
        return f(this.f21079a.skip(j));
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ LongStream sorted() {
        return f(this.f21079a.sorted());
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.Spliterator$OfLong] */
    @Override // j$.util.stream.LongStream, j$.util.stream.BaseStream
    public final /* synthetic */ j$.util.J spliterator() {
        return j$.util.H.a(this.f21079a.spliterator());
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ Spliterator spliterator() {
        return j$.util.N.a(this.f21079a.spliterator());
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ long sum() {
        return this.f21079a.sum();
    }

    @Override // j$.util.stream.LongStream
    public final C0281k summaryStatistics() {
        this.f21079a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert from java.util.LongSummaryStatistics");
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ long[] toArray() {
        return this.f21079a.toArray();
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ BaseStream unordered() {
        return C0309e.f(this.f21079a.unordered());
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ boolean w() {
        return this.f21079a.allMatch(null);
    }
}

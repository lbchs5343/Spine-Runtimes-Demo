package j$.util.stream;

import j$.util.C0278h;
import j$.util.C0282l;
import j$.util.C0285o;
import j$.util.C0286p;
import j$.util.InterfaceC0287q;
import j$.util.Spliterator;
import j$.util.stream.IntStream;
import j$.util.stream.Stream;
import java.util.Iterator;
import java.util.function.BiConsumer;
import java.util.function.DoubleBinaryOperator;
import java.util.function.DoubleConsumer;
import java.util.function.DoubleFunction;
import java.util.function.ObjDoubleConsumer;
import java.util.function.Supplier;
import java.util.stream.DoubleStream;

/* loaded from: classes2.dex */
public final /* synthetic */ class C implements E {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ DoubleStream f20836a;

    public /* synthetic */ C(DoubleStream doubleStream) {
        this.f20836a = doubleStream;
    }

    public static /* synthetic */ E f(DoubleStream doubleStream) {
        if (doubleStream == null) {
            return null;
        }
        return doubleStream instanceof D ? ((D) doubleStream).f20847a : new C(doubleStream);
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ boolean B() {
        return this.f20836a.noneMatch(null);
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ E a() {
        return f(this.f20836a.takeWhile(null));
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ C0282l average() {
        return j$.com.android.tools.r8.a.B(this.f20836a.average());
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ E b() {
        return f(this.f20836a.filter(null));
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ Stream boxed() {
        return Stream.VivifiedWrapper.convert(this.f20836a.boxed());
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ E c() {
        return f(this.f20836a.dropWhile(null));
    }

    @Override // j$.util.stream.BaseStream, java.lang.AutoCloseable
    public final /* synthetic */ void close() {
        this.f20836a.close();
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ Object collect(Supplier supplier, ObjDoubleConsumer objDoubleConsumer, BiConsumer biConsumer) {
        return this.f20836a.collect(supplier, objDoubleConsumer, biConsumer);
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ long count() {
        return this.f20836a.count();
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ E d() {
        return f(this.f20836a.map(null));
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ E distinct() {
        return f(this.f20836a.distinct());
    }

    @Override // j$.util.stream.E
    public final E e(j$.util.function.g gVar) {
        DoubleStream doubleStream = this.f20836a;
        j$.util.function.g gVar2 = new j$.util.function.g(5);
        gVar2.f20807b = gVar;
        return f(doubleStream.flatMap(gVar2));
    }

    public final /* synthetic */ boolean equals(Object obj) {
        DoubleStream doubleStream = this.f20836a;
        if (obj instanceof C) {
            obj = ((C) obj).f20836a;
        }
        return doubleStream.equals(obj);
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ C0282l findAny() {
        return j$.com.android.tools.r8.a.B(this.f20836a.findAny());
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ C0282l findFirst() {
        return j$.com.android.tools.r8.a.B(this.f20836a.findFirst());
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ void forEach(DoubleConsumer doubleConsumer) {
        this.f20836a.forEach(doubleConsumer);
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ void forEachOrdered(DoubleConsumer doubleConsumer) {
        this.f20836a.forEachOrdered(doubleConsumer);
    }

    public final /* synthetic */ int hashCode() {
        return this.f20836a.hashCode();
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ boolean isParallel() {
        return this.f20836a.isParallel();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.PrimitiveIterator$OfDouble] */
    @Override // j$.util.stream.E
    public final /* synthetic */ InterfaceC0287q iterator() {
        ?? it = this.f20836a.iterator();
        if (it == 0) {
            return null;
        }
        return it instanceof C0286p ? ((C0286p) it).f20824a : new C0285o(it);
    }

    @Override // j$.util.stream.BaseStream, j$.util.stream.E
    public final /* synthetic */ Iterator iterator() {
        return this.f20836a.iterator();
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ E limit(long j) {
        return f(this.f20836a.limit(j));
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ boolean m() {
        return this.f20836a.anyMatch(null);
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ Stream mapToObj(DoubleFunction doubleFunction) {
        return Stream.VivifiedWrapper.convert(this.f20836a.mapToObj(doubleFunction));
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ C0282l max() {
        return j$.com.android.tools.r8.a.B(this.f20836a.max());
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ C0282l min() {
        return j$.com.android.tools.r8.a.B(this.f20836a.min());
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ BaseStream onClose(Runnable runnable) {
        return C0309e.f(this.f20836a.onClose(runnable));
    }

    @Override // j$.util.stream.BaseStream, j$.util.stream.E
    public final /* synthetic */ BaseStream parallel() {
        return C0309e.f(this.f20836a.parallel());
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ E parallel() {
        return f(this.f20836a.parallel());
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ E peek(DoubleConsumer doubleConsumer) {
        return f(this.f20836a.peek(doubleConsumer));
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ double reduce(double d2, DoubleBinaryOperator doubleBinaryOperator) {
        return this.f20836a.reduce(d2, doubleBinaryOperator);
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ C0282l reduce(DoubleBinaryOperator doubleBinaryOperator) {
        return j$.com.android.tools.r8.a.B(this.f20836a.reduce(doubleBinaryOperator));
    }

    @Override // j$.util.stream.BaseStream, j$.util.stream.E
    public final /* synthetic */ BaseStream sequential() {
        return C0309e.f(this.f20836a.sequential());
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ E sequential() {
        return f(this.f20836a.sequential());
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ E skip(long j) {
        return f(this.f20836a.skip(j));
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ E sorted() {
        return f(this.f20836a.sorted());
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.Spliterator$OfDouble] */
    @Override // j$.util.stream.E, j$.util.stream.BaseStream
    public final /* synthetic */ j$.util.D spliterator() {
        return j$.util.B.a(this.f20836a.spliterator());
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ Spliterator spliterator() {
        return j$.util.N.a(this.f20836a.spliterator());
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ double sum() {
        return this.f20836a.sum();
    }

    @Override // j$.util.stream.E
    public final C0278h summaryStatistics() {
        this.f20836a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert from java.util.DoubleSummaryStatistics");
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ boolean t() {
        return this.f20836a.allMatch(null);
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ double[] toArray() {
        return this.f20836a.toArray();
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ LongStream u() {
        return C0355n0.f(this.f20836a.mapToLong(null));
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ BaseStream unordered() {
        return C0309e.f(this.f20836a.unordered());
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ IntStream y() {
        return IntStream.VivifiedWrapper.convert(this.f20836a.mapToInt(null));
    }
}

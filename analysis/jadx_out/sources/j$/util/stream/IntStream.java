package j$.util.stream;

import j$.util.C0279i;
import j$.util.C0282l;
import j$.util.C0288s;
import j$.util.C0418t;
import j$.util.InterfaceC0419u;
import j$.util.OptionalInt;
import j$.util.Spliterator;
import j$.util.stream.Stream;
import java.util.Iterator;
import java.util.function.BiConsumer;
import java.util.function.IntBinaryOperator;
import java.util.function.IntConsumer;
import java.util.function.IntFunction;
import java.util.function.ObjIntConsumer;
import java.util.function.Supplier;

/* loaded from: classes2.dex */
public interface IntStream extends BaseStream<Integer, IntStream> {

    public final /* synthetic */ class VivifiedWrapper implements IntStream {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ java.util.stream.IntStream f20880a;

        public /* synthetic */ VivifiedWrapper(java.util.stream.IntStream intStream) {
            this.f20880a = intStream;
        }

        public static /* synthetic */ IntStream convert(java.util.stream.IntStream intStream) {
            if (intStream == null) {
                return null;
            }
            return intStream instanceof C0305d0 ? ((C0305d0) intStream).f21015a : new VivifiedWrapper(intStream);
        }

        @Override // j$.util.stream.IntStream
        public final /* synthetic */ IntStream a() {
            return convert(this.f20880a.takeWhile(null));
        }

        @Override // j$.util.stream.IntStream
        public final /* synthetic */ E asDoubleStream() {
            return C.f(this.f20880a.asDoubleStream());
        }

        @Override // j$.util.stream.IntStream
        public final /* synthetic */ LongStream asLongStream() {
            return C0355n0.f(this.f20880a.asLongStream());
        }

        @Override // j$.util.stream.IntStream
        public final /* synthetic */ C0282l average() {
            return j$.com.android.tools.r8.a.B(this.f20880a.average());
        }

        @Override // j$.util.stream.IntStream
        public final /* synthetic */ IntStream b() {
            return convert(this.f20880a.filter(null));
        }

        @Override // j$.util.stream.IntStream
        public final /* synthetic */ Stream boxed() {
            return Stream.VivifiedWrapper.convert(this.f20880a.boxed());
        }

        @Override // j$.util.stream.IntStream
        public final /* synthetic */ IntStream c() {
            return convert(this.f20880a.dropWhile(null));
        }

        @Override // j$.util.stream.BaseStream, java.lang.AutoCloseable
        public final /* synthetic */ void close() {
            this.f20880a.close();
        }

        @Override // j$.util.stream.IntStream
        public final /* synthetic */ Object collect(Supplier supplier, ObjIntConsumer objIntConsumer, BiConsumer biConsumer) {
            return this.f20880a.collect(supplier, objIntConsumer, biConsumer);
        }

        @Override // j$.util.stream.IntStream
        public final /* synthetic */ long count() {
            return this.f20880a.count();
        }

        @Override // j$.util.stream.IntStream
        public final /* synthetic */ IntStream d() {
            return convert(this.f20880a.map(null));
        }

        @Override // j$.util.stream.IntStream
        public final /* synthetic */ IntStream distinct() {
            return convert(this.f20880a.distinct());
        }

        public final /* synthetic */ boolean equals(Object obj) {
            java.util.stream.IntStream intStream = this.f20880a;
            if (obj instanceof VivifiedWrapper) {
                obj = ((VivifiedWrapper) obj).f20880a;
            }
            return intStream.equals(obj);
        }

        @Override // j$.util.stream.IntStream
        public final /* synthetic */ OptionalInt findAny() {
            return j$.com.android.tools.r8.a.C(this.f20880a.findAny());
        }

        @Override // j$.util.stream.IntStream
        public final /* synthetic */ OptionalInt findFirst() {
            return j$.com.android.tools.r8.a.C(this.f20880a.findFirst());
        }

        @Override // j$.util.stream.IntStream
        public final /* synthetic */ void forEach(IntConsumer intConsumer) {
            this.f20880a.forEach(intConsumer);
        }

        @Override // j$.util.stream.IntStream
        public final /* synthetic */ void forEachOrdered(IntConsumer intConsumer) {
            this.f20880a.forEachOrdered(intConsumer);
        }

        @Override // j$.util.stream.IntStream
        public final /* synthetic */ E g() {
            return C.f(this.f20880a.mapToDouble(null));
        }

        public final /* synthetic */ int hashCode() {
            return this.f20880a.hashCode();
        }

        @Override // j$.util.stream.BaseStream
        public final /* synthetic */ boolean isParallel() {
            return this.f20880a.isParallel();
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.util.PrimitiveIterator$OfInt] */
        @Override // j$.util.stream.IntStream, j$.util.stream.BaseStream, j$.util.stream.E
        public final /* synthetic */ InterfaceC0419u iterator() {
            ?? it = this.f20880a.iterator();
            if (it == 0) {
                return null;
            }
            return it instanceof C0418t ? ((C0418t) it).f21143a : new C0288s(it);
        }

        @Override // j$.util.stream.BaseStream, j$.util.stream.E
        public final /* synthetic */ Iterator iterator() {
            return this.f20880a.iterator();
        }

        @Override // j$.util.stream.IntStream
        public final /* synthetic */ LongStream k() {
            return C0355n0.f(this.f20880a.mapToLong(null));
        }

        @Override // j$.util.stream.IntStream
        public final /* synthetic */ IntStream limit(long j) {
            return convert(this.f20880a.limit(j));
        }

        @Override // j$.util.stream.IntStream
        public final /* synthetic */ Stream mapToObj(IntFunction intFunction) {
            return Stream.VivifiedWrapper.convert(this.f20880a.mapToObj(intFunction));
        }

        @Override // j$.util.stream.IntStream
        public final /* synthetic */ OptionalInt max() {
            return j$.com.android.tools.r8.a.C(this.f20880a.max());
        }

        @Override // j$.util.stream.IntStream
        public final /* synthetic */ OptionalInt min() {
            return j$.com.android.tools.r8.a.C(this.f20880a.min());
        }

        @Override // j$.util.stream.IntStream
        public final /* synthetic */ boolean n() {
            return this.f20880a.allMatch(null);
        }

        @Override // j$.util.stream.BaseStream
        public final /* synthetic */ BaseStream onClose(Runnable runnable) {
            return C0309e.f(this.f20880a.onClose(runnable));
        }

        @Override // j$.util.stream.IntStream
        public final IntStream p(M m) {
            java.util.stream.IntStream intStream = this.f20880a;
            M m2 = new M();
            m2.f20904a = m;
            return convert(intStream.flatMap(m2));
        }

        @Override // j$.util.stream.BaseStream, j$.util.stream.E
        public final /* synthetic */ BaseStream parallel() {
            return C0309e.f(this.f20880a.parallel());
        }

        @Override // j$.util.stream.IntStream, j$.util.stream.BaseStream, j$.util.stream.E
        public final /* synthetic */ IntStream parallel() {
            return convert(this.f20880a.parallel());
        }

        @Override // j$.util.stream.IntStream
        public final /* synthetic */ IntStream peek(IntConsumer intConsumer) {
            return convert(this.f20880a.peek(intConsumer));
        }

        @Override // j$.util.stream.IntStream
        public final /* synthetic */ int reduce(int i, IntBinaryOperator intBinaryOperator) {
            return this.f20880a.reduce(i, intBinaryOperator);
        }

        @Override // j$.util.stream.IntStream
        public final /* synthetic */ OptionalInt reduce(IntBinaryOperator intBinaryOperator) {
            return j$.com.android.tools.r8.a.C(this.f20880a.reduce(intBinaryOperator));
        }

        @Override // j$.util.stream.IntStream
        public final /* synthetic */ boolean s() {
            return this.f20880a.noneMatch(null);
        }

        @Override // j$.util.stream.BaseStream, j$.util.stream.E
        public final /* synthetic */ BaseStream sequential() {
            return C0309e.f(this.f20880a.sequential());
        }

        @Override // j$.util.stream.IntStream, j$.util.stream.BaseStream, j$.util.stream.E
        public final /* synthetic */ IntStream sequential() {
            return convert(this.f20880a.sequential());
        }

        @Override // j$.util.stream.IntStream
        public final /* synthetic */ IntStream skip(long j) {
            return convert(this.f20880a.skip(j));
        }

        @Override // j$.util.stream.IntStream
        public final /* synthetic */ IntStream sorted() {
            return convert(this.f20880a.sorted());
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.util.Spliterator$OfInt] */
        @Override // j$.util.stream.IntStream, j$.util.stream.BaseStream
        public final /* synthetic */ j$.util.G spliterator() {
            return j$.util.E.a(this.f20880a.spliterator());
        }

        @Override // j$.util.stream.BaseStream
        public final /* synthetic */ Spliterator spliterator() {
            return j$.util.N.a(this.f20880a.spliterator());
        }

        @Override // j$.util.stream.IntStream
        public final /* synthetic */ int sum() {
            return this.f20880a.sum();
        }

        @Override // j$.util.stream.IntStream
        public final C0279i summaryStatistics() {
            this.f20880a.summaryStatistics();
            throw new Error("Java 8+ API desugaring (library desugaring) cannot convert from java.util.IntSummaryStatistics");
        }

        @Override // j$.util.stream.IntStream
        public final /* synthetic */ int[] toArray() {
            return this.f20880a.toArray();
        }

        @Override // j$.util.stream.BaseStream
        public final /* synthetic */ BaseStream unordered() {
            return C0309e.f(this.f20880a.unordered());
        }

        @Override // j$.util.stream.IntStream
        public final /* synthetic */ boolean x() {
            return this.f20880a.anyMatch(null);
        }
    }

    IntStream a();

    E asDoubleStream();

    LongStream asLongStream();

    C0282l average();

    IntStream b();

    Stream boxed();

    IntStream c();

    Object collect(Supplier supplier, ObjIntConsumer objIntConsumer, BiConsumer biConsumer);

    long count();

    IntStream d();

    IntStream distinct();

    OptionalInt findAny();

    OptionalInt findFirst();

    void forEach(IntConsumer intConsumer);

    void forEachOrdered(IntConsumer intConsumer);

    E g();

    @Override // j$.util.stream.BaseStream, j$.util.stream.E
    InterfaceC0419u iterator();

    LongStream k();

    IntStream limit(long j);

    Stream mapToObj(IntFunction intFunction);

    OptionalInt max();

    OptionalInt min();

    boolean n();

    IntStream p(M m);

    @Override // j$.util.stream.BaseStream, j$.util.stream.E
    IntStream parallel();

    IntStream peek(IntConsumer intConsumer);

    int reduce(int i, IntBinaryOperator intBinaryOperator);

    OptionalInt reduce(IntBinaryOperator intBinaryOperator);

    boolean s();

    @Override // j$.util.stream.BaseStream, j$.util.stream.E
    IntStream sequential();

    IntStream skip(long j);

    IntStream sorted();

    @Override // j$.util.stream.BaseStream
    j$.util.G spliterator();

    int sum();

    C0279i summaryStatistics();

    int[] toArray();

    boolean x();
}

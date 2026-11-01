package j$.util.stream;

import j$.util.C0281k;
import j$.util.C0282l;
import j$.util.C0283m;
import j$.util.InterfaceC0423y;
import java.util.function.BiConsumer;
import java.util.function.LongBinaryOperator;
import java.util.function.LongConsumer;
import java.util.function.LongFunction;
import java.util.function.ObjLongConsumer;
import java.util.function.Supplier;

/* loaded from: classes2.dex */
public interface LongStream extends BaseStream<Long, LongStream> {
    IntStream A();

    LongStream a();

    E asDoubleStream();

    C0282l average();

    LongStream b();

    Stream boxed();

    LongStream c();

    Object collect(Supplier supplier, ObjLongConsumer objLongConsumer, BiConsumer biConsumer);

    long count();

    LongStream d();

    LongStream distinct();

    LongStream e(j$.util.function.g gVar);

    C0283m findAny();

    C0283m findFirst();

    void forEach(LongConsumer longConsumer);

    void forEachOrdered(LongConsumer longConsumer);

    @Override // j$.util.stream.BaseStream, j$.util.stream.E
    InterfaceC0423y iterator();

    E j();

    boolean l();

    LongStream limit(long j);

    Stream mapToObj(LongFunction longFunction);

    C0283m max();

    C0283m min();

    boolean o();

    @Override // j$.util.stream.BaseStream, j$.util.stream.E
    LongStream parallel();

    LongStream peek(LongConsumer longConsumer);

    long reduce(long j, LongBinaryOperator longBinaryOperator);

    C0283m reduce(LongBinaryOperator longBinaryOperator);

    @Override // j$.util.stream.BaseStream, j$.util.stream.E
    LongStream sequential();

    LongStream skip(long j);

    LongStream sorted();

    @Override // j$.util.stream.BaseStream
    j$.util.J spliterator();

    long sum();

    C0281k summaryStatistics();

    long[] toArray();

    boolean w();
}

package j$.util.stream;

import j$.util.C0278h;
import j$.util.C0282l;
import j$.util.InterfaceC0287q;
import java.util.function.BiConsumer;
import java.util.function.DoubleBinaryOperator;
import java.util.function.DoubleConsumer;
import java.util.function.DoubleFunction;
import java.util.function.ObjDoubleConsumer;
import java.util.function.Supplier;

/* loaded from: classes2.dex */
public interface E extends BaseStream {
    boolean B();

    E a();

    C0282l average();

    E b();

    Stream boxed();

    E c();

    Object collect(Supplier supplier, ObjDoubleConsumer objDoubleConsumer, BiConsumer biConsumer);

    long count();

    E d();

    E distinct();

    E e(j$.util.function.g gVar);

    C0282l findAny();

    C0282l findFirst();

    void forEach(DoubleConsumer doubleConsumer);

    void forEachOrdered(DoubleConsumer doubleConsumer);

    InterfaceC0287q iterator();

    E limit(long j);

    boolean m();

    Stream mapToObj(DoubleFunction doubleFunction);

    C0282l max();

    C0282l min();

    E parallel();

    E peek(DoubleConsumer doubleConsumer);

    double reduce(double d2, DoubleBinaryOperator doubleBinaryOperator);

    C0282l reduce(DoubleBinaryOperator doubleBinaryOperator);

    E sequential();

    E skip(long j);

    E sorted();

    @Override // j$.util.stream.BaseStream
    j$.util.D spliterator();

    double sum();

    C0278h summaryStatistics();

    boolean t();

    double[] toArray();

    LongStream u();

    IntStream y();
}

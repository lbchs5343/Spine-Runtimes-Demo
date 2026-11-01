package j$.util.function;

import j$.util.C0276f;
import j$.util.Map;
import j$.util.Spliterator;
import j$.util.stream.AbstractC0289a;
import j$.util.stream.C;
import j$.util.stream.C0348l3;
import j$.util.stream.C0355n0;
import j$.util.stream.C0358n3;
import j$.util.stream.C0360o0;
import j$.util.stream.C0368p3;
import j$.util.stream.Collectors;
import j$.util.stream.D;
import j$.util.stream.E;
import j$.util.stream.E3;
import j$.util.stream.InterfaceC0362o2;
import j$.util.stream.LongStream;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.BooleanSupplier;
import java.util.function.Consumer;
import java.util.function.DoubleFunction;
import java.util.function.Function;
import java.util.function.LongFunction;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.stream.DoubleStream;

/* loaded from: classes2.dex */
public final /* synthetic */ class g implements Predicate, Supplier, Function, BinaryOperator, DoubleFunction, LongFunction, Consumer, BooleanSupplier {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f20806a;

    /* renamed from: b, reason: collision with root package name */
    public Object f20807b;

    public /* synthetic */ g(int i) {
        this.f20806a = i;
    }

    public /* synthetic */ g(Object obj, int i) {
        this.f20806a = i;
        this.f20807b = obj;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public void n(Object obj) {
        switch (this.f20806a) {
            case 7:
                ((InterfaceC0362o2) this.f20807b).n((InterfaceC0362o2) obj);
                break;
            default:
                ((List) this.f20807b).add(obj);
                break;
        }
    }

    public /* synthetic */ Predicate and(Predicate predicate) {
        return m.$default$and(this, predicate);
    }

    public /* synthetic */ BiFunction andThen(Function function) {
        return i.$default$andThen(this, function);
    }

    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f20806a) {
        }
        return j.$default$andThen(this, consumer);
    }

    /* renamed from: andThen, reason: collision with other method in class */
    public /* synthetic */ Function m21andThen(Function function) {
        return k.$default$andThen(this, function);
    }

    @Override // java.util.function.DoubleFunction
    public Object apply(double d2) {
        Object apply = ((DoubleFunction) this.f20807b).apply(d2);
        if (apply == null) {
            return null;
        }
        if (apply instanceof E) {
            return D.f((E) apply);
        }
        if (apply instanceof DoubleStream) {
            return C.f((DoubleStream) apply);
        }
        C0276f.a(apply.getClass(), "java.util.stream.DoubleStream");
        throw null;
    }

    @Override // java.util.function.LongFunction
    public Object apply(long j) {
        Object apply = ((LongFunction) this.f20807b).apply(j);
        if (apply == null) {
            return null;
        }
        if (apply instanceof LongStream) {
            return C0360o0.f((LongStream) apply);
        }
        if (apply instanceof java.util.stream.LongStream) {
            return C0355n0.f((java.util.stream.LongStream) apply);
        }
        C0276f.a(apply.getClass(), "java.util.stream.LongStream");
        throw null;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        Supplier supplier = (Supplier) this.f20807b;
        Set set = Collectors.f20844a;
        return supplier.get();
    }

    @Override // java.util.function.BiFunction
    public Object apply(Object obj, Object obj2) {
        BinaryOperator binaryOperator = (BinaryOperator) this.f20807b;
        Map map = (Map) obj;
        Set set = Collectors.f20844a;
        for (Map.Entry entry : ((Map) obj2).entrySet()) {
            Map.b.merge(map, entry.getKey(), entry.getValue(), binaryOperator);
        }
        return map;
    }

    public /* synthetic */ Function compose(Function function) {
        return k.$default$compose(this, function);
    }

    @Override // java.util.function.Supplier
    public Object get() {
        switch (this.f20806a) {
            case 1:
                return ((AbstractC0289a) this.f20807b).Q0(0);
            default:
                return (Spliterator) this.f20807b;
        }
    }

    @Override // java.util.function.BooleanSupplier
    public boolean getAsBoolean() {
        switch (this.f20806a) {
            case 9:
                C0348l3 c0348l3 = (C0348l3) this.f20807b;
                return c0348l3.f21002d.tryAdvance(c0348l3.f21003e);
            case 10:
                C0358n3 c0358n3 = (C0358n3) this.f20807b;
                return c0358n3.f21002d.tryAdvance(c0358n3.f21003e);
            case 11:
                C0368p3 c0368p3 = (C0368p3) this.f20807b;
                return c0368p3.f21002d.tryAdvance(c0368p3.f21003e);
            default:
                E3 e3 = (E3) this.f20807b;
                return e3.f21002d.tryAdvance(e3.f21003e);
        }
    }

    public /* synthetic */ Predicate negate() {
        return m.$default$negate(this);
    }

    public /* synthetic */ Predicate or(Predicate predicate) {
        return m.$default$or(this, predicate);
    }

    @Override // java.util.function.Predicate
    public boolean test(Object obj) {
        return !((Predicate) this.f20807b).test(obj);
    }
}

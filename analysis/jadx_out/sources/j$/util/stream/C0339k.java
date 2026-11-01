package j$.util.stream;

import j$.util.C0276f;
import j$.util.Map;
import j$.util.stream.IntStream;
import j$.util.stream.Stream;
import java.util.Map;
import java.util.Set;
import java.util.function.BiFunction;
import java.util.function.Function;
import java.util.stream.DoubleStream;

/* renamed from: j$.util.stream.k, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C0339k implements BiFunction, Function {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f21055a;

    /* renamed from: b, reason: collision with root package name */
    public Function f21056b;

    public /* synthetic */ C0339k() {
        this.f21055a = 2;
    }

    public /* synthetic */ C0339k(Function function, int i) {
        this.f21055a = i;
        this.f21056b = function;
    }

    public /* synthetic */ BiFunction andThen(Function function) {
        return j$.util.function.i.$default$andThen(this, function);
    }

    /* renamed from: andThen, reason: collision with other method in class */
    public /* synthetic */ Function m26andThen(Function function) {
        switch (this.f21055a) {
        }
        return j$.util.function.k.$default$andThen(this, function);
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        switch (this.f21055a) {
            case 1:
                Function function = this.f21056b;
                Map map = (Map) obj;
                Set set = Collectors.f20844a;
                Map.b.a(map, new C0339k(function, 0));
                return map;
            default:
                Object apply = this.f21056b.apply(obj);
                if (apply == null) {
                    return null;
                }
                if (apply instanceof Stream) {
                    return Stream.Wrapper.convert((Stream) apply);
                }
                if (apply instanceof java.util.stream.Stream) {
                    return Stream.VivifiedWrapper.convert((java.util.stream.Stream) apply);
                }
                if (apply instanceof IntStream) {
                    return C0305d0.f((IntStream) apply);
                }
                if (apply instanceof java.util.stream.IntStream) {
                    return IntStream.VivifiedWrapper.convert((java.util.stream.IntStream) apply);
                }
                if (apply instanceof E) {
                    return D.f((E) apply);
                }
                if (apply instanceof DoubleStream) {
                    return C.f((DoubleStream) apply);
                }
                if (apply instanceof LongStream) {
                    return C0360o0.f((LongStream) apply);
                }
                if (apply instanceof java.util.stream.LongStream) {
                    return C0355n0.f((java.util.stream.LongStream) apply);
                }
                C0276f.a(apply.getClass(), "java.util.stream.*Stream");
                throw null;
        }
    }

    @Override // java.util.function.BiFunction
    public Object apply(Object obj, Object obj2) {
        Function function = this.f21056b;
        Set set = Collectors.f20844a;
        return function.apply(obj2);
    }

    public /* synthetic */ Function compose(Function function) {
        switch (this.f21055a) {
        }
        return j$.util.function.k.$default$compose(this, function);
    }
}

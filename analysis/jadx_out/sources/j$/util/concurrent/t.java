package j$.util.concurrent;

import j$.util.Spliterator;
import j$.util.stream.AbstractC0289a;
import j$.util.stream.AbstractC0389u0;
import j$.util.stream.AbstractC0405x1;
import j$.util.stream.C0338j3;
import j$.util.stream.C0370q0;
import j$.util.stream.C0399w0;
import j$.util.stream.EnumC0293a3;
import j$.util.stream.EnumC0298b3;
import j$.util.stream.EnumC0394v0;
import j$.util.stream.G3;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;

/* loaded from: classes2.dex */
public final /* synthetic */ class t implements BiConsumer, BiFunction, Consumer, Supplier, G3 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f20772a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f20773b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f20774c;

    public /* synthetic */ t(int i, Object obj, Object obj2) {
        this.f20772a = i;
        this.f20773b = obj;
        this.f20774c = obj2;
    }

    public t(EnumC0298b3 enumC0298b3, EnumC0394v0 enumC0394v0, Supplier supplier) {
        this.f20772a = 6;
        this.f20773b = enumC0394v0;
        this.f20774c = supplier;
    }

    public /* synthetic */ t(BiFunction biFunction, Function function) {
        this.f20772a = 2;
        this.f20774c = biFunction;
        this.f20773b = function;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public void n(Object obj) {
        switch (this.f20772a) {
            case 3:
                Consumer consumer = (Consumer) this.f20773b;
                Consumer consumer2 = (Consumer) this.f20774c;
                consumer.n(obj);
                consumer2.n(obj);
                break;
            case 4:
                AtomicBoolean atomicBoolean = (AtomicBoolean) this.f20773b;
                ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) this.f20774c;
                if (obj != null) {
                    concurrentHashMap.putIfAbsent(obj, Boolean.TRUE);
                    break;
                } else {
                    atomicBoolean.set(true);
                    break;
                }
            case 5:
            case 6:
            default:
                C0338j3 c0338j3 = (C0338j3) this.f20773b;
                Consumer consumer3 = (Consumer) this.f20774c;
                if (c0338j3.f21053b.putIfAbsent(obj != null ? obj : C0338j3.f21051d, Boolean.TRUE) == null) {
                    consumer3.n(obj);
                    break;
                }
                break;
            case 7:
                ((BiConsumer) this.f20773b).accept(this.f20774c, obj);
                break;
        }
    }

    @Override // java.util.function.BiConsumer
    public void accept(Object obj, Object obj2) {
        switch (this.f20772a) {
            case 0:
                ConcurrentMap concurrentMap = (ConcurrentMap) this.f20773b;
                BiFunction biFunction = (BiFunction) this.f20774c;
                while (!concurrentMap.replace(obj, obj2, biFunction.apply(obj, obj2)) && (obj2 = concurrentMap.get(obj)) != null) {
                }
            default:
                BiConsumer biConsumer = (BiConsumer) this.f20773b;
                BiConsumer biConsumer2 = (BiConsumer) this.f20774c;
                biConsumer.accept(obj, obj2);
                biConsumer2.accept(obj, obj2);
                break;
        }
    }

    public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
        switch (this.f20772a) {
        }
        return j$.util.function.h.$default$andThen(this, biConsumer);
    }

    public /* synthetic */ BiFunction andThen(Function function) {
        return j$.util.function.i.$default$andThen(this, function);
    }

    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f20772a) {
        }
        return j$.util.function.j.$default$andThen(this, consumer);
    }

    @Override // java.util.function.BiFunction
    public Object apply(Object obj, Object obj2) {
        return ((Function) this.f20773b).apply(((BiFunction) this.f20774c).apply(obj, obj2));
    }

    @Override // j$.util.stream.G3
    public Object f(AbstractC0289a abstractC0289a, Spliterator spliterator) {
        AbstractC0389u0 abstractC0389u0 = (AbstractC0389u0) ((Supplier) this.f20774c).get();
        abstractC0289a.E0(spliterator, abstractC0389u0);
        return Boolean.valueOf(abstractC0389u0.f21109b);
    }

    @Override // java.util.function.Supplier
    public Object get() {
        return new C0370q0((EnumC0394v0) this.f20773b, (Predicate) this.f20774c);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // j$.util.stream.G3
    public Object i(AbstractC0405x1 abstractC0405x1, Spliterator spliterator) {
        return (Boolean) new C0399w0(this, (AbstractC0289a) abstractC0405x1, spliterator).invoke();
    }

    @Override // j$.util.stream.G3
    public int v() {
        return EnumC0293a3.u | EnumC0293a3.r;
    }
}

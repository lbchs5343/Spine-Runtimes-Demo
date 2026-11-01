package j$.util.stream;

import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.function.Supplier;

/* renamed from: j$.util.stream.l, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0344l implements Collector {

    /* renamed from: a, reason: collision with root package name */
    public final Supplier f21060a;

    /* renamed from: b, reason: collision with root package name */
    public final BiConsumer f21061b;

    /* renamed from: c, reason: collision with root package name */
    public final BinaryOperator f21062c;

    /* renamed from: d, reason: collision with root package name */
    public final Function f21063d;

    /* renamed from: e, reason: collision with root package name */
    public final Set f21064e;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C0344l(Supplier supplier, BiConsumer biConsumer, BinaryOperator binaryOperator, Set set) {
        this(supplier, biConsumer, binaryOperator, new j$.time.format.a(18), set);
        Set set2 = Collectors.f20844a;
    }

    public C0344l(Supplier supplier, BiConsumer biConsumer, BinaryOperator binaryOperator, Function function, Set set) {
        this.f21060a = supplier;
        this.f21061b = biConsumer;
        this.f21062c = binaryOperator;
        this.f21063d = function;
        this.f21064e = set;
    }

    @Override // j$.util.stream.Collector
    public final BiConsumer accumulator() {
        return this.f21061b;
    }

    @Override // j$.util.stream.Collector
    public final Set characteristics() {
        return this.f21064e;
    }

    @Override // j$.util.stream.Collector
    public final BinaryOperator combiner() {
        return this.f21062c;
    }

    @Override // j$.util.stream.Collector
    public final Function finisher() {
        return this.f21063d;
    }

    @Override // j$.util.stream.Collector
    public final Supplier supplier() {
        return this.f21060a;
    }
}

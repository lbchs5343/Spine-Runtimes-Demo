package j$.util.stream;

import java.util.Collections;
import java.util.EnumSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.BinaryOperator;
import java.util.function.Function;

/* loaded from: classes2.dex */
public final class Collectors {

    /* renamed from: a, reason: collision with root package name */
    public static final Set f20844a;

    /* renamed from: b, reason: collision with root package name */
    public static final Set f20845b;

    /* renamed from: c, reason: collision with root package name */
    public static final Set f20846c;

    static {
        EnumC0319g enumC0319g = EnumC0319g.CONCURRENT;
        EnumC0319g enumC0319g2 = EnumC0319g.UNORDERED;
        EnumC0319g enumC0319g3 = EnumC0319g.IDENTITY_FINISH;
        Collections.unmodifiableSet(EnumSet.of(enumC0319g, enumC0319g2, enumC0319g3));
        Collections.unmodifiableSet(EnumSet.of(enumC0319g, enumC0319g2));
        f20844a = Collections.unmodifiableSet(EnumSet.of(enumC0319g3));
        f20845b = Collections.unmodifiableSet(EnumSet.of(enumC0319g2, enumC0319g3));
        f20846c = Collections.EMPTY_SET;
        Collections.unmodifiableSet(EnumSet.of(enumC0319g2));
    }

    public static void a(double[] dArr, double d2) {
        double d3 = d2 - dArr[1];
        double d4 = dArr[0];
        double d5 = d4 + d3;
        dArr[1] = (d5 - d4) - d3;
        dArr[0] = d5;
    }

    public static <T, K> Collector<T, ?, Map<K, List<T>>> groupingBy(Function<? super T, ? extends K> function) {
        Collector list = toList();
        j$.time.format.a aVar = new j$.time.format.a(23);
        C0334j c0334j = new C0334j(function, list.supplier(), list.accumulator(), 1);
        j$.util.function.g gVar = new j$.util.function.g(list.combiner(), 4);
        return list.characteristics().contains(EnumC0319g.IDENTITY_FINISH) ? new C0344l(aVar, c0334j, gVar, f20844a) : new C0344l(aVar, c0334j, gVar, new C0339k(list.finisher(), 1), f20846c);
    }

    public static Collector<CharSequence, ?, String> joining(CharSequence charSequence) {
        return joining(charSequence, "", "");
    }

    public static Collector<CharSequence, ?, String> joining(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3) {
        return new C0344l(new C0334j(charSequence, charSequence2, charSequence3, 2), new j$.time.format.a(19), new j$.time.format.a(20), new j$.time.format.a(21), f20846c);
    }

    public static <T> Collector<T, ?, List<T>> toList() {
        return new C0344l(new j$.time.format.a(11), new j$.time.format.a(12), new j$.time.format.a(17), f20844a);
    }

    public static <T, K, U> Collector<T, ?, Map<K, U>> toMap(Function<? super T, ? extends K> function, Function<? super T, ? extends U> function2) {
        return new C0344l(new j$.time.format.a(23), new j$.util.function.c(function, function2, 2), new j$.time.format.a(9), f20844a);
    }

    public static <T, K, U> Collector<T, ?, Map<K, U>> toMap(Function<? super T, ? extends K> function, Function<? super T, ? extends U> function2, BinaryOperator<U> binaryOperator) {
        return new C0344l(new j$.time.format.a(23), new C0334j(function, function2, binaryOperator, 0), new j$.util.function.g(binaryOperator, 4), f20844a);
    }

    public static <T> Collector<T, ?, Set<T>> toSet() {
        return new C0344l(new j$.time.format.a(14), new j$.time.format.a(15), new j$.time.format.a(22), f20845b);
    }
}

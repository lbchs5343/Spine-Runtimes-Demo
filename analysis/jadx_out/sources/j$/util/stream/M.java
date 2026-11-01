package j$.util.stream;

import j$.util.C0276f;
import j$.util.stream.IntStream;
import java.util.function.IntFunction;
import java.util.function.LongFunction;

/* loaded from: classes2.dex */
public final class M implements IntFunction, LongFunction {

    /* renamed from: a, reason: collision with root package name */
    public IntFunction f20904a;

    @Override // java.util.function.IntFunction
    public Object apply(int i) {
        Object apply = this.f20904a.apply(i);
        if (apply == null) {
            return null;
        }
        if (apply instanceof IntStream) {
            return C0305d0.f((IntStream) apply);
        }
        if (apply instanceof java.util.stream.IntStream) {
            return IntStream.VivifiedWrapper.convert((java.util.stream.IntStream) apply);
        }
        C0276f.a(apply.getClass(), "java.util.stream.IntStream");
        throw null;
    }

    @Override // java.util.function.LongFunction
    public Object apply(long j) {
        return AbstractC0405x1.Y(j, this.f20904a);
    }
}

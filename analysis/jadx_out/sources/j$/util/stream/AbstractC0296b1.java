package j$.util.stream;

import java.util.function.IntFunction;

/* renamed from: j$.util.stream.b1, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0296b1 implements I0 {
    @Override // j$.util.stream.I0
    public I0 a(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // j$.util.stream.I0
    public final long count() {
        return 0L;
    }

    public final void f(Object obj, int i) {
    }

    public final void g(Object obj) {
    }

    @Override // j$.util.stream.I0
    public /* synthetic */ I0 i(long j, long j2, IntFunction intFunction) {
        return AbstractC0405x1.V(this, j, j2, intFunction);
    }

    @Override // j$.util.stream.I0
    public final Object[] m(IntFunction intFunction) {
        return (Object[]) intFunction.apply(0);
    }

    @Override // j$.util.stream.I0
    public final /* synthetic */ int o() {
        return 0;
    }
}

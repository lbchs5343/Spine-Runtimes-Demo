package j$.util.stream;

import java.util.function.IntFunction;

/* loaded from: classes2.dex */
public abstract class S0 extends K0 implements H0 {
    @Override // j$.util.stream.H0
    public final Object b() {
        long j = this.f20888c;
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        Object newArray = newArray((int) j);
        f(newArray, 0);
        return newArray;
    }

    @Override // j$.util.stream.H0
    public final void f(Object obj, int i) {
        I0 i0 = this.f20886a;
        ((H0) i0).f(obj, i);
        ((H0) this.f20887b).f(obj, i + ((int) ((H0) i0).count()));
    }

    @Override // j$.util.stream.H0
    public final void g(Object obj) {
        ((H0) this.f20886a).g(obj);
        ((H0) this.f20887b).g(obj);
    }

    @Override // j$.util.stream.I0
    public final /* synthetic */ Object[] m(IntFunction intFunction) {
        return AbstractC0405x1.L(this, intFunction);
    }

    public final String toString() {
        long j = this.f20888c;
        return j < 32 ? String.format("%s[%s.%s]", getClass().getName(), this.f20886a, this.f20887b) : String.format("%s[size=%d]", getClass().getName(), Long.valueOf(j));
    }
}

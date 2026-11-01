package j$.util.stream;

import java.util.function.IntPredicate;

/* loaded from: classes2.dex */
public final class N3 extends AbstractC0332i2 implements X3 {
    public N3(O3 o3, InterfaceC0362o2 interfaceC0362o2, boolean z) {
        super(interfaceC0362o2);
    }

    @Override // j$.util.stream.InterfaceC0352m2, j$.util.stream.InterfaceC0362o2
    public final void accept(int i) {
        IntPredicate intPredicate = null;
        intPredicate.test(i);
        throw null;
    }

    @Override // j$.util.stream.X3
    public final long h() {
        return 0L;
    }
}

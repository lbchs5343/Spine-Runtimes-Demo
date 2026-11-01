package j$.util.stream;

import java.util.function.DoublePredicate;

/* loaded from: classes2.dex */
public final class U3 extends AbstractC0327h2 implements X3 {
    public U3(V3 v3, InterfaceC0362o2 interfaceC0362o2, boolean z) {
        super(interfaceC0362o2);
    }

    @Override // j$.util.stream.InterfaceC0347l2, java.util.function.DoubleConsumer
    public final void accept(double d2) {
        DoublePredicate doublePredicate = null;
        doublePredicate.test(d2);
        throw null;
    }

    @Override // j$.util.stream.X3
    public final long h() {
        return 0L;
    }
}

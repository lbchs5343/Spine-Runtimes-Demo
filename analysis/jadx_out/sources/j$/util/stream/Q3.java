package j$.util.stream;

import java.util.function.LongPredicate;

/* loaded from: classes2.dex */
public final class Q3 extends AbstractC0337j2 implements X3 {
    public Q3(R3 r3, InterfaceC0362o2 interfaceC0362o2, boolean z) {
        super(interfaceC0362o2);
    }

    @Override // j$.util.stream.InterfaceC0357n2, j$.util.stream.InterfaceC0362o2
    public final void accept(long j) {
        LongPredicate longPredicate = null;
        longPredicate.test(j);
        throw null;
    }

    @Override // j$.util.stream.X3
    public final long h() {
        return 0L;
    }
}

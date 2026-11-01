package j$.util.stream;

import java.util.function.IntBinaryOperator;

/* loaded from: classes2.dex */
public final class N1 extends AbstractC0405x1 {
    public final /* synthetic */ IntBinaryOperator h;
    public final /* synthetic */ int i;

    public N1(EnumC0298b3 enumC0298b3, IntBinaryOperator intBinaryOperator, int i) {
        this.h = intBinaryOperator;
        this.i = i;
    }

    @Override // j$.util.stream.AbstractC0405x1
    public final S1 D0() {
        return new M1(this.i, this.h);
    }
}

package j$.util.stream;

import java.util.function.BinaryOperator;
import java.util.function.DoubleBinaryOperator;
import java.util.function.IntBinaryOperator;
import java.util.function.LongBinaryOperator;

/* loaded from: classes2.dex */
public final class A1 extends AbstractC0405x1 {
    public final /* synthetic */ int h;
    public final /* synthetic */ Object i;

    public /* synthetic */ A1(EnumC0298b3 enumC0298b3, Object obj, int i) {
        this.h = i;
        this.i = obj;
    }

    @Override // j$.util.stream.AbstractC0405x1
    public final S1 D0() {
        switch (this.h) {
            case 0:
                return new R1((LongBinaryOperator) this.i);
            case 1:
                return new D1((DoubleBinaryOperator) this.i);
            case 2:
                return new I1((BinaryOperator) this.i);
            default:
                return new O1((IntBinaryOperator) this.i);
        }
    }
}

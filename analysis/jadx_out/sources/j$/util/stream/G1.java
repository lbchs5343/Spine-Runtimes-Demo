package j$.util.stream;

import java.util.function.DoubleBinaryOperator;

/* loaded from: classes2.dex */
public final class G1 extends AbstractC0405x1 {
    public final /* synthetic */ DoubleBinaryOperator h;
    public final /* synthetic */ double i;

    public G1(EnumC0298b3 enumC0298b3, DoubleBinaryOperator doubleBinaryOperator, double d2) {
        this.h = doubleBinaryOperator;
        this.i = d2;
    }

    @Override // j$.util.stream.AbstractC0405x1
    public final S1 D0() {
        return new B1(this.i, this.h);
    }
}

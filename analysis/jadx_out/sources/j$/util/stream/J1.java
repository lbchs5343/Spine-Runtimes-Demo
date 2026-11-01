package j$.util.stream;

import java.util.function.BiConsumer;
import java.util.function.BinaryOperator;
import java.util.function.Supplier;

/* loaded from: classes2.dex */
public final class J1 extends AbstractC0405x1 {
    public final /* synthetic */ BinaryOperator h;
    public final /* synthetic */ BiConsumer i;
    public final /* synthetic */ Supplier j;
    public final /* synthetic */ Collector k;

    public J1(EnumC0298b3 enumC0298b3, BinaryOperator binaryOperator, BiConsumer biConsumer, Supplier supplier, Collector collector) {
        this.h = binaryOperator;
        this.i = biConsumer;
        this.j = supplier;
        this.k = collector;
    }

    @Override // j$.util.stream.AbstractC0405x1
    public final S1 D0() {
        return new K1(this.j, this.i, this.h);
    }

    @Override // j$.util.stream.AbstractC0405x1, j$.util.stream.G3
    public final int v() {
        if (this.k.characteristics().contains(EnumC0319g.UNORDERED)) {
            return EnumC0293a3.r;
        }
        return 0;
    }
}

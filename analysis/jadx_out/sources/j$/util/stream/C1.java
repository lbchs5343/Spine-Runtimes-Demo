package j$.util.stream;

import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.ObjDoubleConsumer;
import java.util.function.ObjIntConsumer;
import java.util.function.ObjLongConsumer;
import java.util.function.Supplier;

/* loaded from: classes2.dex */
public final class C1 extends AbstractC0405x1 {
    public final /* synthetic */ int h;
    public final /* synthetic */ Object i;
    public final /* synthetic */ Object j;
    public final /* synthetic */ Object k;

    public /* synthetic */ C1(EnumC0298b3 enumC0298b3, Object obj, Object obj2, Object obj3, int i) {
        this.h = i;
        this.j = obj;
        this.k = obj2;
        this.i = obj3;
    }

    @Override // j$.util.stream.AbstractC0405x1
    public final S1 D0() {
        switch (this.h) {
            case 0:
                return new C0415z1((Supplier) this.i, (ObjLongConsumer) this.k, (C0369q) this.j);
            case 1:
                return new F1((Supplier) this.i, (ObjDoubleConsumer) this.k, (C0369q) this.j);
            case 2:
                return new H1(this.i, (BiFunction) this.k, (BinaryOperator) this.j);
            case 3:
                return new L1((Supplier) this.i, (BiConsumer) this.k, (BiConsumer) this.j);
            default:
                return new P1((Supplier) this.i, (ObjIntConsumer) this.k, (C0369q) this.j);
        }
    }
}

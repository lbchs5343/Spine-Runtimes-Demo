package j$.util.stream;

import java.util.function.IntConsumer;
import java.util.function.IntPredicate;

/* renamed from: j$.util.stream.r0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0374r0 extends AbstractC0389u0 implements InterfaceC0352m2 {
    @Override // j$.util.stream.AbstractC0389u0, j$.util.stream.InterfaceC0362o2
    public final void accept(int i) {
        if (this.f21108a) {
            return;
        }
        IntPredicate intPredicate = null;
        intPredicate.test(i);
        throw null;
    }

    @Override // java.util.function.Consumer
    public final /* bridge */ /* synthetic */ void accept(Object obj) {
        d((Integer) obj);
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return j$.util.function.l.$default$andThen(this, intConsumer);
    }

    @Override // j$.util.stream.InterfaceC0352m2
    public final /* synthetic */ void d(Integer num) {
        AbstractC0405x1.F(this, num);
    }
}

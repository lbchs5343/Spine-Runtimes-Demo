package j$.util.stream;

import java.util.function.DoubleConsumer;
import java.util.function.DoublePredicate;

/* renamed from: j$.util.stream.t0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0384t0 extends AbstractC0389u0 implements InterfaceC0347l2 {
    @Override // j$.util.stream.AbstractC0389u0, j$.util.stream.InterfaceC0362o2, j$.util.stream.InterfaceC0347l2, java.util.function.DoubleConsumer
    public final void accept(double d2) {
        if (this.f21108a) {
            return;
        }
        DoublePredicate doublePredicate = null;
        doublePredicate.test(d2);
        throw null;
    }

    @Override // java.util.function.Consumer
    public final /* bridge */ /* synthetic */ void accept(Object obj) {
        n((Double) obj);
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return j$.com.android.tools.r8.a.b(this, doubleConsumer);
    }

    @Override // j$.util.stream.InterfaceC0347l2
    public final /* synthetic */ void n(Double d2) {
        AbstractC0405x1.D(this, d2);
    }
}

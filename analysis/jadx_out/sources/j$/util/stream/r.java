package j$.util.stream;

import java.util.function.DoubleConsumer;
import java.util.function.DoubleFunction;
import java.util.function.DoublePredicate;
import java.util.function.DoubleToIntFunction;
import java.util.function.DoubleToLongFunction;
import java.util.function.DoubleUnaryOperator;

/* loaded from: classes2.dex */
public final class r extends AbstractC0327h2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21093b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AbstractC0289a f21094c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ r(AbstractC0289a abstractC0289a, InterfaceC0362o2 interfaceC0362o2, int i) {
        super(interfaceC0362o2);
        this.f21093b = i;
        this.f21094c = abstractC0289a;
    }

    @Override // j$.util.stream.InterfaceC0347l2, java.util.function.DoubleConsumer
    public final void accept(double d2) {
        switch (this.f21093b) {
            case 0:
                this.f21041a.accept((InterfaceC0362o2) ((DoubleFunction) ((C0378s) this.f21094c).t).apply(d2));
                return;
            case 1:
                ((C0383t) this.f21094c).getClass();
                DoubleUnaryOperator doubleUnaryOperator = null;
                doubleUnaryOperator.applyAsDouble(d2);
                throw null;
            case 2:
                ((C0388u) this.f21094c).getClass();
                DoubleToIntFunction doubleToIntFunction = null;
                doubleToIntFunction.applyAsInt(d2);
                throw null;
            case 3:
                ((C0393v) this.f21094c).getClass();
                DoubleToLongFunction doubleToLongFunction = null;
                doubleToLongFunction.applyAsLong(d2);
                throw null;
            case 4:
                ((C0383t) this.f21094c).getClass();
                DoublePredicate doublePredicate = null;
                doublePredicate.test(d2);
                throw null;
            default:
                ((DoubleConsumer) ((C0403x) this.f21094c).t).accept(d2);
                this.f21041a.accept(d2);
                return;
        }
    }

    @Override // j$.util.stream.AbstractC0327h2, j$.util.stream.InterfaceC0362o2
    public void c(long j) {
        switch (this.f21093b) {
            case 4:
                this.f21041a.c(-1L);
                break;
            default:
                super.c(j);
                break;
        }
    }
}

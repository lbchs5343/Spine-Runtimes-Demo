package j$.util.stream;

import java.util.function.IntConsumer;
import java.util.function.IntFunction;
import java.util.function.IntPredicate;
import java.util.function.IntToDoubleFunction;
import java.util.function.IntToLongFunction;
import java.util.function.IntUnaryOperator;

/* loaded from: classes2.dex */
public final class V extends AbstractC0332i2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f20961b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AbstractC0289a f20962c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ V(AbstractC0289a abstractC0289a, InterfaceC0362o2 interfaceC0362o2, int i) {
        super(interfaceC0362o2);
        this.f20961b = i;
        this.f20962c = abstractC0289a;
    }

    @Override // j$.util.stream.InterfaceC0352m2, j$.util.stream.InterfaceC0362o2
    public final void accept(int i) {
        switch (this.f20961b) {
            case 0:
                this.f21044a.accept((InterfaceC0362o2) ((IntFunction) ((C0378s) this.f20962c).t).apply(i));
                return;
            case 1:
                ((IntConsumer) ((W) this.f20962c).t).accept(i);
                this.f21044a.accept(i);
                return;
            case 2:
                ((C0388u) this.f20962c).getClass();
                IntUnaryOperator intUnaryOperator = null;
                intUnaryOperator.applyAsInt(i);
                throw null;
            case 3:
                ((C0393v) this.f20962c).getClass();
                IntToLongFunction intToLongFunction = null;
                intToLongFunction.applyAsLong(i);
                throw null;
            case 4:
                ((C0383t) this.f20962c).getClass();
                IntToDoubleFunction intToDoubleFunction = null;
                intToDoubleFunction.applyAsDouble(i);
                throw null;
            default:
                ((C0388u) this.f20962c).getClass();
                IntPredicate intPredicate = null;
                intPredicate.test(i);
                throw null;
        }
    }

    @Override // j$.util.stream.AbstractC0332i2, j$.util.stream.InterfaceC0362o2
    public void c(long j) {
        switch (this.f20961b) {
            case 5:
                this.f21044a.c(-1L);
                break;
            default:
                super.c(j);
                break;
        }
    }
}

package j$.util.stream;

import java.util.function.LongConsumer;
import java.util.function.LongFunction;
import java.util.function.LongPredicate;
import java.util.function.LongToDoubleFunction;
import java.util.function.LongToIntFunction;
import java.util.function.LongUnaryOperator;

/* renamed from: j$.util.stream.f0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0315f0 extends AbstractC0337j2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21030b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AbstractC0289a f21031c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0315f0(AbstractC0289a abstractC0289a, InterfaceC0362o2 interfaceC0362o2, int i) {
        super(interfaceC0362o2);
        this.f21030b = i;
        this.f21031c = abstractC0289a;
    }

    @Override // j$.util.stream.InterfaceC0357n2, j$.util.stream.InterfaceC0362o2
    public final void accept(long j) {
        switch (this.f21030b) {
            case 0:
                this.f21050a.accept((InterfaceC0362o2) ((LongFunction) ((C0378s) this.f21031c).t).apply(j));
                return;
            case 1:
                ((C0393v) this.f21031c).getClass();
                LongUnaryOperator longUnaryOperator = null;
                longUnaryOperator.applyAsLong(j);
                throw null;
            case 2:
                ((C0388u) this.f21031c).getClass();
                LongToIntFunction longToIntFunction = null;
                longToIntFunction.applyAsInt(j);
                throw null;
            case 3:
                ((C0383t) this.f21031c).getClass();
                LongToDoubleFunction longToDoubleFunction = null;
                longToDoubleFunction.applyAsDouble(j);
                throw null;
            case 4:
                ((C0393v) this.f21031c).getClass();
                LongPredicate longPredicate = null;
                longPredicate.test(j);
                throw null;
            default:
                ((LongConsumer) ((C0330i0) this.f21031c).t).accept(j);
                this.f21050a.accept(j);
                return;
        }
    }

    @Override // j$.util.stream.AbstractC0337j2, j$.util.stream.InterfaceC0362o2
    public void c(long j) {
        switch (this.f21030b) {
            case 4:
                this.f21050a.c(-1L);
                break;
            default:
                super.c(j);
                break;
        }
    }
}

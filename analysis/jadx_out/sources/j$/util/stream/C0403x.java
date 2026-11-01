package j$.util.stream;

import java.util.function.DoubleConsumer;

/* renamed from: j$.util.stream.x, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0403x extends A {
    public final /* synthetic */ int s;
    public final /* synthetic */ Object t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0403x(B b2, DoubleConsumer doubleConsumer) {
        super(b2, 0);
        this.s = 1;
        this.t = doubleConsumer;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0403x(AbstractC0289a abstractC0289a, int i, Object obj, int i2) {
        super(abstractC0289a, i);
        this.s = i2;
        this.t = obj;
    }

    @Override // j$.util.stream.AbstractC0289a
    public final InterfaceC0362o2 P0(int i, InterfaceC0362o2 interfaceC0362o2) {
        switch (this.s) {
            case 0:
                return new C0398w(this, interfaceC0362o2);
            case 1:
                return new r(this, interfaceC0362o2, 5);
            case 2:
                return new C0354n(this, interfaceC0362o2, 6);
            default:
                return new C0292a2(this, interfaceC0362o2);
        }
    }
}

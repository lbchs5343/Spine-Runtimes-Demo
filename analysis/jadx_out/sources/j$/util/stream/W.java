package j$.util.stream;

import java.util.function.IntConsumer;

/* loaded from: classes2.dex */
public final class W extends AbstractC0295b0 {
    public final /* synthetic */ int s;
    public final /* synthetic */ Object t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ W(AbstractC0289a abstractC0289a, int i, Object obj, int i2) {
        super(abstractC0289a, i);
        this.s = i2;
        this.t = obj;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public W(AbstractC0300c0 abstractC0300c0, IntConsumer intConsumer) {
        super(abstractC0300c0, 0);
        this.s = 0;
        this.t = intConsumer;
    }

    @Override // j$.util.stream.AbstractC0289a
    public final InterfaceC0362o2 P0(int i, InterfaceC0362o2 interfaceC0362o2) {
        switch (this.s) {
            case 0:
                return new V(this, interfaceC0362o2, 1);
            case 1:
                return new Y(this, interfaceC0362o2);
            case 2:
                return new C0354n(this, interfaceC0362o2, 4);
            default:
                return new C0292a2(this, interfaceC0362o2);
        }
    }
}

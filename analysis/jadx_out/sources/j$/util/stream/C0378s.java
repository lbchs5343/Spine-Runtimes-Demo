package j$.util.stream;

import java.util.function.Consumer;

/* renamed from: j$.util.stream.s, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0378s extends AbstractC0317f2 {
    public final /* synthetic */ int s;
    public final /* synthetic */ Object t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0378s(AbstractC0289a abstractC0289a, int i, Object obj, int i2) {
        super(abstractC0289a, i);
        this.s = i2;
        this.t = obj;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0378s(AbstractC0322g2 abstractC0322g2, Consumer consumer) {
        super(abstractC0322g2, 0);
        this.s = 3;
        this.t = consumer;
    }

    @Override // j$.util.stream.AbstractC0289a
    public final InterfaceC0362o2 P0(int i, InterfaceC0362o2 interfaceC0362o2) {
        switch (this.s) {
            case 0:
                return new r(this, interfaceC0362o2, 0);
            case 1:
                return new V(this, interfaceC0362o2, 0);
            case 2:
                return new C0315f0(this, interfaceC0362o2, 0);
            case 3:
                return new C0354n(this, interfaceC0362o2, 1);
            default:
                return new C0354n(this, interfaceC0362o2, 2);
        }
    }
}

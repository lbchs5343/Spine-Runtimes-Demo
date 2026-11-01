package j$.util.stream;

/* renamed from: j$.util.stream.v, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0393v extends AbstractC0345l0 {
    public final /* synthetic */ int s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0393v(AbstractC0289a abstractC0289a, int i, int i2) {
        super(abstractC0289a, i);
        this.s = i2;
    }

    @Override // j$.util.stream.AbstractC0289a
    public final InterfaceC0362o2 P0(int i, InterfaceC0362o2 interfaceC0362o2) {
        switch (this.s) {
            case 0:
                return new r(this, interfaceC0362o2, 3);
            case 1:
                return new X(0, interfaceC0362o2);
            case 2:
                return new V(this, interfaceC0362o2, 3);
            case 3:
                return new C0315f0(this, interfaceC0362o2, 1);
            case 4:
                return interfaceC0362o2;
            default:
                return new C0315f0(this, interfaceC0362o2, 4);
        }
    }
}

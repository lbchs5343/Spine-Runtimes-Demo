package j$.util.stream;

/* loaded from: classes2.dex */
public final class X extends AbstractC0332i2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f20969b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ X(int i, InterfaceC0362o2 interfaceC0362o2) {
        super(interfaceC0362o2);
        this.f20969b = i;
    }

    @Override // j$.util.stream.InterfaceC0352m2, j$.util.stream.InterfaceC0362o2
    public final void accept(int i) {
        switch (this.f20969b) {
            case 0:
                this.f21044a.accept(i);
                break;
            default:
                this.f21044a.accept(i);
                break;
        }
    }
}

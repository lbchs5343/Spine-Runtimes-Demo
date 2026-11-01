package j$.util.stream;

import java.util.function.Function;

/* renamed from: j$.util.stream.c2, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0302c2 extends AbstractC0317f2 {
    public final /* synthetic */ int s;
    public final /* synthetic */ Function t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0302c2(AbstractC0322g2 abstractC0322g2, int i, Function function, int i2) {
        super(abstractC0322g2, i);
        this.s = i2;
        this.t = function;
    }

    @Override // j$.util.stream.AbstractC0289a
    public final InterfaceC0362o2 P0(int i, InterfaceC0362o2 interfaceC0362o2) {
        switch (this.s) {
            case 0:
                return new C0354n(this, interfaceC0362o2, 3);
            default:
                return new C0349m(this, interfaceC0362o2);
        }
    }
}

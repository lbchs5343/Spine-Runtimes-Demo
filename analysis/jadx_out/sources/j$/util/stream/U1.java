package j$.util.stream;

import java.util.function.DoubleConsumer;

/* loaded from: classes2.dex */
public final class U1 extends Y1 implements InterfaceC0347l2 {
    @Override // j$.util.stream.Y1, j$.util.stream.InterfaceC0362o2, j$.util.stream.InterfaceC0347l2, java.util.function.DoubleConsumer
    public final void accept(double d2) {
        this.f20975b++;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void n(Object obj) {
        n((Double) obj);
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return j$.com.android.tools.r8.a.b(this, doubleConsumer);
    }

    @Override // j$.util.stream.T1, java.util.function.Supplier
    public final Object get() {
        return Long.valueOf(this.f20975b);
    }

    @Override // j$.util.stream.S1
    public final void j(S1 s1) {
        this.f20975b += ((Y1) s1).f20975b;
    }

    @Override // j$.util.stream.InterfaceC0347l2
    public final /* synthetic */ void n(Double d2) {
        AbstractC0405x1.D(this, d2);
    }
}

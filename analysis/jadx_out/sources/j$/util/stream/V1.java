package j$.util.stream;

import java.util.function.IntConsumer;

/* loaded from: classes2.dex */
public final class V1 extends Y1 implements InterfaceC0352m2 {
    @Override // j$.util.stream.Y1, j$.util.stream.InterfaceC0362o2
    public final void accept(int i) {
        this.f20975b++;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void n(Object obj) {
        d((Integer) obj);
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return j$.util.function.l.$default$andThen(this, intConsumer);
    }

    @Override // j$.util.stream.InterfaceC0352m2
    public final /* synthetic */ void d(Integer num) {
        AbstractC0405x1.F(this, num);
    }

    @Override // j$.util.stream.T1, java.util.function.Supplier
    public final Object get() {
        return Long.valueOf(this.f20975b);
    }

    @Override // j$.util.stream.S1
    public final void j(S1 s1) {
        this.f20975b += ((Y1) s1).f20975b;
    }
}

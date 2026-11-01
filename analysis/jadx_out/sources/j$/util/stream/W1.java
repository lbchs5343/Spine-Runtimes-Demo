package j$.util.stream;

import java.util.function.LongConsumer;

/* loaded from: classes2.dex */
public final class W1 extends Y1 implements InterfaceC0357n2 {
    @Override // j$.util.stream.Y1, j$.util.stream.InterfaceC0362o2
    public final void accept(long j) {
        this.f20975b++;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void n(Object obj) {
        l((Long) obj);
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return j$.com.android.tools.r8.a.c(this, longConsumer);
    }

    @Override // j$.util.stream.T1, java.util.function.Supplier
    public final Object get() {
        return Long.valueOf(this.f20975b);
    }

    @Override // j$.util.stream.S1
    public final void j(S1 s1) {
        this.f20975b += ((Y1) s1).f20975b;
    }

    @Override // j$.util.stream.InterfaceC0357n2
    public final /* synthetic */ void l(Long l) {
        AbstractC0405x1.H(this, l);
    }
}

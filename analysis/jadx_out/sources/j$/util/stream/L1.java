package j$.util.stream;

import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Supplier;

/* loaded from: classes2.dex */
public final class L1 extends T1 implements S1 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Supplier f20899b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ BiConsumer f20900c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ BiConsumer f20901d;

    public L1(Supplier supplier, BiConsumer biConsumer, BiConsumer biConsumer2) {
        this.f20899b = supplier;
        this.f20900c = biConsumer;
        this.f20901d = biConsumer2;
    }

    @Override // j$.util.stream.InterfaceC0362o2, j$.util.stream.InterfaceC0347l2, java.util.function.DoubleConsumer
    public final /* synthetic */ void accept(double d2) {
        AbstractC0405x1.C();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC0362o2
    public final /* synthetic */ void accept(int i) {
        AbstractC0405x1.J();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC0362o2
    public final /* synthetic */ void accept(long j) {
        AbstractC0405x1.K();
        throw null;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void n(Object obj) {
        this.f20900c.accept(this.f20952a, obj);
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return j$.util.function.j.$default$andThen(this, consumer);
    }

    @Override // j$.util.stream.InterfaceC0362o2
    public final void c(long j) {
        this.f20952a = this.f20899b.get();
    }

    @Override // j$.util.stream.InterfaceC0362o2
    public final /* synthetic */ boolean e() {
        return false;
    }

    @Override // j$.util.stream.InterfaceC0362o2
    public final /* synthetic */ void end() {
    }

    @Override // j$.util.stream.S1
    public final void j(S1 s1) {
        this.f20901d.accept(this.f20952a, ((L1) s1).f20952a);
    }
}

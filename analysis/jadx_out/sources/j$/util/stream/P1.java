package j$.util.stream;

import java.util.function.Consumer;
import java.util.function.IntConsumer;
import java.util.function.ObjIntConsumer;
import java.util.function.Supplier;

/* loaded from: classes2.dex */
public final class P1 extends T1 implements S1, InterfaceC0352m2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Supplier f20922b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ObjIntConsumer f20923c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ C0369q f20924d;

    public P1(Supplier supplier, ObjIntConsumer objIntConsumer, C0369q c0369q) {
        this.f20922b = supplier;
        this.f20923c = objIntConsumer;
        this.f20924d = c0369q;
    }

    @Override // j$.util.stream.InterfaceC0362o2, j$.util.stream.InterfaceC0347l2, java.util.function.DoubleConsumer
    public final /* synthetic */ void accept(double d2) {
        AbstractC0405x1.C();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC0362o2
    public final void accept(int i) {
        this.f20923c.accept(this.f20952a, i);
    }

    @Override // j$.util.stream.InterfaceC0362o2
    public final /* synthetic */ void accept(long j) {
        AbstractC0405x1.K();
        throw null;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void n(Object obj) {
        d((Integer) obj);
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return j$.util.function.j.$default$andThen(this, consumer);
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return j$.util.function.l.$default$andThen(this, intConsumer);
    }

    @Override // j$.util.stream.InterfaceC0362o2
    public final void c(long j) {
        this.f20952a = this.f20922b.get();
    }

    @Override // j$.util.stream.InterfaceC0352m2
    public final /* synthetic */ void d(Integer num) {
        AbstractC0405x1.F(this, num);
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
        this.f20952a = this.f20924d.apply(this.f20952a, ((P1) s1).f20952a);
    }
}

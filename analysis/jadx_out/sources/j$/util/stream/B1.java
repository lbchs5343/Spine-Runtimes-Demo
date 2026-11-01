package j$.util.stream;

import java.util.function.Consumer;
import java.util.function.DoubleBinaryOperator;
import java.util.function.DoubleConsumer;

/* loaded from: classes2.dex */
public final class B1 implements S1, InterfaceC0347l2 {

    /* renamed from: a, reason: collision with root package name */
    public double f20831a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ double f20832b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DoubleBinaryOperator f20833c;

    public B1(double d2, DoubleBinaryOperator doubleBinaryOperator) {
        this.f20832b = d2;
        this.f20833c = doubleBinaryOperator;
    }

    @Override // j$.util.stream.InterfaceC0362o2, j$.util.stream.InterfaceC0347l2, java.util.function.DoubleConsumer
    public final void accept(double d2) {
        this.f20831a = this.f20833c.applyAsDouble(this.f20831a, d2);
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
    public final /* bridge */ /* synthetic */ void n(Object obj) {
        n((Double) obj);
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return j$.util.function.j.$default$andThen(this, consumer);
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return j$.com.android.tools.r8.a.b(this, doubleConsumer);
    }

    @Override // j$.util.stream.InterfaceC0362o2
    public final void c(long j) {
        this.f20831a = this.f20832b;
    }

    @Override // j$.util.stream.InterfaceC0362o2
    public final /* synthetic */ boolean e() {
        return false;
    }

    @Override // j$.util.stream.InterfaceC0362o2
    public final /* synthetic */ void end() {
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        return Double.valueOf(this.f20831a);
    }

    @Override // j$.util.stream.S1
    public final void j(S1 s1) {
        accept(((B1) s1).f20831a);
    }

    @Override // j$.util.stream.InterfaceC0347l2
    public final /* synthetic */ void n(Double d2) {
        AbstractC0405x1.D(this, d2);
    }
}

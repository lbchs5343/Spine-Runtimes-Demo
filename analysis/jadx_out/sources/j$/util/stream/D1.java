package j$.util.stream;

import j$.util.C0282l;
import java.util.function.Consumer;
import java.util.function.DoubleBinaryOperator;
import java.util.function.DoubleConsumer;

/* loaded from: classes2.dex */
public final class D1 implements S1, InterfaceC0347l2 {

    /* renamed from: a, reason: collision with root package name */
    public boolean f20849a;

    /* renamed from: b, reason: collision with root package name */
    public double f20850b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DoubleBinaryOperator f20851c;

    public D1(DoubleBinaryOperator doubleBinaryOperator) {
        this.f20851c = doubleBinaryOperator;
    }

    @Override // j$.util.stream.InterfaceC0362o2, j$.util.stream.InterfaceC0347l2, java.util.function.DoubleConsumer
    public final void accept(double d2) {
        if (!this.f20849a) {
            this.f20850b = this.f20851c.applyAsDouble(this.f20850b, d2);
        } else {
            this.f20849a = false;
            this.f20850b = d2;
        }
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
        this.f20849a = true;
        this.f20850b = 0.0d;
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
        return this.f20849a ? C0282l.f20815c : new C0282l(this.f20850b);
    }

    @Override // j$.util.stream.S1
    public final void j(S1 s1) {
        D1 d1 = (D1) s1;
        if (d1.f20849a) {
            return;
        }
        accept(d1.f20850b);
    }

    @Override // j$.util.stream.InterfaceC0347l2
    public final /* synthetic */ void n(Double d2) {
        AbstractC0405x1.D(this, d2);
    }
}

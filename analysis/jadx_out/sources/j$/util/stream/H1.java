package j$.util.stream;

import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.Consumer;

/* loaded from: classes2.dex */
public final class H1 extends T1 implements S1 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f20871b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ BiFunction f20872c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ BinaryOperator f20873d;

    public H1(Object obj, BiFunction biFunction, BinaryOperator binaryOperator) {
        this.f20871b = obj;
        this.f20872c = biFunction;
        this.f20873d = binaryOperator;
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
        this.f20952a = this.f20872c.apply(this.f20952a, obj);
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return j$.util.function.j.$default$andThen(this, consumer);
    }

    @Override // j$.util.stream.InterfaceC0362o2
    public final void c(long j) {
        this.f20952a = this.f20871b;
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
        this.f20952a = this.f20873d.apply(this.f20952a, ((H1) s1).f20952a);
    }
}

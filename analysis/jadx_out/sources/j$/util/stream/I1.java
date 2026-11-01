package j$.util.stream;

import j$.util.Optional;
import java.util.function.BinaryOperator;
import java.util.function.Consumer;

/* loaded from: classes2.dex */
public final class I1 implements S1 {

    /* renamed from: a, reason: collision with root package name */
    public boolean f20876a;

    /* renamed from: b, reason: collision with root package name */
    public Object f20877b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ BinaryOperator f20878c;

    public I1(BinaryOperator binaryOperator) {
        this.f20878c = binaryOperator;
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
        if (!this.f20876a) {
            this.f20877b = this.f20878c.apply(this.f20877b, obj);
        } else {
            this.f20876a = false;
            this.f20877b = obj;
        }
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return j$.util.function.j.$default$andThen(this, consumer);
    }

    @Override // j$.util.stream.InterfaceC0362o2
    public final void c(long j) {
        this.f20876a = true;
        this.f20877b = null;
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
        return this.f20876a ? Optional.empty() : Optional.of(this.f20877b);
    }

    @Override // j$.util.stream.S1
    public final void j(S1 s1) {
        I1 i1 = (I1) s1;
        if (i1.f20876a) {
            return;
        }
        n(i1.f20877b);
    }
}

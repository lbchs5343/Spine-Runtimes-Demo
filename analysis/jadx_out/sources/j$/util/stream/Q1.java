package j$.util.stream;

import java.util.function.Consumer;
import java.util.function.LongBinaryOperator;
import java.util.function.LongConsumer;

/* loaded from: classes2.dex */
public final class Q1 implements S1, InterfaceC0357n2 {

    /* renamed from: a, reason: collision with root package name */
    public long f20933a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ long f20934b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LongBinaryOperator f20935c;

    public Q1(long j, LongBinaryOperator longBinaryOperator) {
        this.f20934b = j;
        this.f20935c = longBinaryOperator;
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
    public final void accept(long j) {
        this.f20933a = this.f20935c.applyAsLong(this.f20933a, j);
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void n(Object obj) {
        l((Long) obj);
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return j$.util.function.j.$default$andThen(this, consumer);
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return j$.com.android.tools.r8.a.c(this, longConsumer);
    }

    @Override // j$.util.stream.InterfaceC0362o2
    public final void c(long j) {
        this.f20933a = this.f20934b;
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
        return Long.valueOf(this.f20933a);
    }

    @Override // j$.util.stream.S1
    public final void j(S1 s1) {
        accept(((Q1) s1).f20933a);
    }

    @Override // j$.util.stream.InterfaceC0357n2
    public final /* synthetic */ void l(Long l) {
        AbstractC0405x1.H(this, l);
    }
}

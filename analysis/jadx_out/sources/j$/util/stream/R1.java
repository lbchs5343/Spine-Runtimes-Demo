package j$.util.stream;

import j$.util.C0283m;
import java.util.function.Consumer;
import java.util.function.LongBinaryOperator;
import java.util.function.LongConsumer;

/* loaded from: classes2.dex */
public final class R1 implements S1, InterfaceC0357n2 {

    /* renamed from: a, reason: collision with root package name */
    public boolean f20937a;

    /* renamed from: b, reason: collision with root package name */
    public long f20938b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LongBinaryOperator f20939c;

    public R1(LongBinaryOperator longBinaryOperator) {
        this.f20939c = longBinaryOperator;
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
        if (!this.f20937a) {
            this.f20938b = this.f20939c.applyAsLong(this.f20938b, j);
        } else {
            this.f20937a = false;
            this.f20938b = j;
        }
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
        this.f20937a = true;
        this.f20938b = 0L;
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
        return this.f20937a ? C0283m.f20818c : new C0283m(this.f20938b);
    }

    @Override // j$.util.stream.S1
    public final void j(S1 s1) {
        R1 r1 = (R1) s1;
        if (r1.f20937a) {
            return;
        }
        accept(r1.f20938b);
    }

    @Override // j$.util.stream.InterfaceC0357n2
    public final /* synthetic */ void l(Long l) {
        AbstractC0405x1.H(this, l);
    }
}

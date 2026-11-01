package j$.util.stream;

import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* renamed from: j$.util.stream.m3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C0353m3 implements InterfaceC0352m2 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f21075a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ IntConsumer f21076b;

    public /* synthetic */ C0353m3(IntConsumer intConsumer, int i) {
        this.f21075a = i;
        this.f21076b = intConsumer;
    }

    private final /* synthetic */ void a(long j) {
    }

    private final /* synthetic */ void b(long j) {
    }

    private final /* synthetic */ void f() {
    }

    private final /* synthetic */ void g() {
    }

    @Override // j$.util.stream.InterfaceC0362o2, j$.util.stream.InterfaceC0347l2, java.util.function.DoubleConsumer
    public final /* synthetic */ void accept(double d2) {
        switch (this.f21075a) {
            case 0:
                AbstractC0405x1.C();
                throw null;
            default:
                AbstractC0405x1.C();
                throw null;
        }
    }

    @Override // j$.util.stream.InterfaceC0352m2, j$.util.stream.InterfaceC0362o2
    public final void accept(int i) {
        switch (this.f21075a) {
            case 0:
                this.f21076b.accept(i);
                break;
            default:
                ((T2) this.f21076b).accept(i);
                break;
        }
    }

    @Override // j$.util.stream.InterfaceC0362o2
    public final /* synthetic */ void accept(long j) {
        switch (this.f21075a) {
            case 0:
                AbstractC0405x1.K();
                throw null;
            default:
                AbstractC0405x1.K();
                throw null;
        }
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void n(Object obj) {
        switch (this.f21075a) {
            case 0:
                d((Integer) obj);
                break;
            default:
                d((Integer) obj);
                break;
        }
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f21075a) {
        }
        return j$.util.function.j.$default$andThen(this, consumer);
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        switch (this.f21075a) {
        }
        return j$.util.function.l.$default$andThen(this, intConsumer);
    }

    @Override // j$.util.stream.InterfaceC0362o2
    public final /* synthetic */ void c(long j) {
        int i = this.f21075a;
    }

    @Override // j$.util.stream.InterfaceC0352m2
    public final /* synthetic */ void d(Integer num) {
        switch (this.f21075a) {
            case 0:
                AbstractC0405x1.F(this, num);
                break;
            default:
                AbstractC0405x1.F(this, num);
                break;
        }
    }

    @Override // j$.util.stream.InterfaceC0362o2
    public final /* synthetic */ boolean e() {
        switch (this.f21075a) {
        }
        return false;
    }

    @Override // j$.util.stream.InterfaceC0362o2
    public final /* synthetic */ void end() {
        int i = this.f21075a;
    }
}

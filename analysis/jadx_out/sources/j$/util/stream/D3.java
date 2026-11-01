package j$.util.stream;

import java.util.function.Consumer;

/* loaded from: classes2.dex */
public final /* synthetic */ class D3 implements InterfaceC0362o2 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f20853a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Consumer f20854b;

    public /* synthetic */ D3(Consumer consumer, int i) {
        this.f20853a = i;
        this.f20854b = consumer;
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
        switch (this.f20853a) {
            case 0:
                AbstractC0405x1.C();
                throw null;
            default:
                AbstractC0405x1.C();
                throw null;
        }
    }

    @Override // j$.util.stream.InterfaceC0362o2
    public final /* synthetic */ void accept(int i) {
        switch (this.f20853a) {
            case 0:
                AbstractC0405x1.J();
                throw null;
            default:
                AbstractC0405x1.J();
                throw null;
        }
    }

    @Override // j$.util.stream.InterfaceC0362o2
    public final /* synthetic */ void accept(long j) {
        switch (this.f20853a) {
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
    public final void n(Object obj) {
        switch (this.f20853a) {
            case 0:
                ((Y2) this.f20854b).n(obj);
                break;
            default:
                this.f20854b.n(obj);
                break;
        }
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f20853a) {
        }
        return j$.util.function.j.$default$andThen(this, consumer);
    }

    @Override // j$.util.stream.InterfaceC0362o2
    public final /* synthetic */ void c(long j) {
        int i = this.f20853a;
    }

    @Override // j$.util.stream.InterfaceC0362o2
    public final /* synthetic */ boolean e() {
        switch (this.f20853a) {
        }
        return false;
    }

    @Override // j$.util.stream.InterfaceC0362o2
    public final /* synthetic */ void end() {
        int i = this.f20853a;
    }
}

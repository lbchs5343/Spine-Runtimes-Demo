package j$.util.stream;

import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* renamed from: j$.util.stream.k3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C0343k3 implements InterfaceC0347l2 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f21058a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ DoubleConsumer f21059b;

    public /* synthetic */ C0343k3(DoubleConsumer doubleConsumer, int i) {
        this.f21058a = i;
        this.f21059b = doubleConsumer;
    }

    private final /* synthetic */ void a(long j) {
    }

    private final /* synthetic */ void b(long j) {
    }

    private final /* synthetic */ void f() {
    }

    private final /* synthetic */ void g() {
    }

    @Override // j$.util.stream.InterfaceC0347l2, java.util.function.DoubleConsumer
    public final void accept(double d2) {
        switch (this.f21058a) {
            case 0:
                this.f21059b.accept(d2);
                break;
            default:
                ((R2) this.f21059b).accept(d2);
                break;
        }
    }

    @Override // j$.util.stream.InterfaceC0362o2
    public final /* synthetic */ void accept(int i) {
        switch (this.f21058a) {
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
        switch (this.f21058a) {
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
        switch (this.f21058a) {
            case 0:
                n((Double) obj);
                break;
            default:
                n((Double) obj);
                break;
        }
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f21058a) {
        }
        return j$.util.function.j.$default$andThen(this, consumer);
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        switch (this.f21058a) {
        }
        return j$.com.android.tools.r8.a.b(this, doubleConsumer);
    }

    @Override // j$.util.stream.InterfaceC0362o2
    public final /* synthetic */ void c(long j) {
        int i = this.f21058a;
    }

    @Override // j$.util.stream.InterfaceC0362o2
    public final /* synthetic */ boolean e() {
        switch (this.f21058a) {
        }
        return false;
    }

    @Override // j$.util.stream.InterfaceC0362o2
    public final /* synthetic */ void end() {
        int i = this.f21058a;
    }

    @Override // j$.util.stream.InterfaceC0347l2
    public final /* synthetic */ void n(Double d2) {
        switch (this.f21058a) {
            case 0:
                AbstractC0405x1.D(this, d2);
                break;
            default:
                AbstractC0405x1.D(this, d2);
                break;
        }
    }
}

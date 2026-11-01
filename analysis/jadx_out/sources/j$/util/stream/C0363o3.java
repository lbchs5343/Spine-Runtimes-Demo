package j$.util.stream;

import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* renamed from: j$.util.stream.o3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C0363o3 implements InterfaceC0357n2 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f21081a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ LongConsumer f21082b;

    public /* synthetic */ C0363o3(LongConsumer longConsumer, int i) {
        this.f21081a = i;
        this.f21082b = longConsumer;
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
        switch (this.f21081a) {
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
        switch (this.f21081a) {
            case 0:
                AbstractC0405x1.J();
                throw null;
            default:
                AbstractC0405x1.J();
                throw null;
        }
    }

    @Override // j$.util.stream.InterfaceC0357n2, j$.util.stream.InterfaceC0362o2
    public final void accept(long j) {
        switch (this.f21081a) {
            case 0:
                this.f21082b.accept(j);
                break;
            default:
                ((V2) this.f21082b).accept(j);
                break;
        }
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void n(Object obj) {
        switch (this.f21081a) {
            case 0:
                l((Long) obj);
                break;
            default:
                l((Long) obj);
                break;
        }
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f21081a) {
        }
        return j$.util.function.j.$default$andThen(this, consumer);
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        switch (this.f21081a) {
        }
        return j$.com.android.tools.r8.a.c(this, longConsumer);
    }

    @Override // j$.util.stream.InterfaceC0362o2
    public final /* synthetic */ void c(long j) {
        int i = this.f21081a;
    }

    @Override // j$.util.stream.InterfaceC0362o2
    public final /* synthetic */ boolean e() {
        switch (this.f21081a) {
        }
        return false;
    }

    @Override // j$.util.stream.InterfaceC0362o2
    public final /* synthetic */ void end() {
        int i = this.f21081a;
    }

    @Override // j$.util.stream.InterfaceC0357n2
    public final /* synthetic */ void l(Long l) {
        switch (this.f21081a) {
            case 0:
                AbstractC0405x1.H(this, l);
                break;
            default:
                AbstractC0405x1.H(this, l);
                break;
        }
    }
}

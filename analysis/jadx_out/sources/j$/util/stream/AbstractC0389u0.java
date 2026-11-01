package j$.util.stream;

import java.util.function.Consumer;

/* renamed from: j$.util.stream.u0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0389u0 implements InterfaceC0362o2 {

    /* renamed from: a, reason: collision with root package name */
    public boolean f21108a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f21109b;

    public AbstractC0389u0(EnumC0394v0 enumC0394v0) {
        this.f21109b = !enumC0394v0.f21112b;
    }

    @Override // j$.util.stream.InterfaceC0362o2, j$.util.stream.InterfaceC0347l2, java.util.function.DoubleConsumer
    public /* synthetic */ void accept(double d2) {
        AbstractC0405x1.C();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC0362o2
    public /* synthetic */ void accept(int i) {
        AbstractC0405x1.J();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC0362o2
    public /* synthetic */ void accept(long j) {
        AbstractC0405x1.K();
        throw null;
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return j$.util.function.j.$default$andThen(this, consumer);
    }

    @Override // j$.util.stream.InterfaceC0362o2
    public final /* synthetic */ void c(long j) {
    }

    @Override // j$.util.stream.InterfaceC0362o2
    public final boolean e() {
        return this.f21108a;
    }

    @Override // j$.util.stream.InterfaceC0362o2
    public final /* synthetic */ void end() {
    }
}

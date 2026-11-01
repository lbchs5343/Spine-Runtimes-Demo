package j$.util.stream;

import java.util.function.Consumer;

/* loaded from: classes2.dex */
public abstract class Y1 extends T1 implements S1 {

    /* renamed from: b, reason: collision with root package name */
    public long f20975b;

    public /* synthetic */ void accept(double d2) {
        AbstractC0405x1.C();
        throw null;
    }

    public /* synthetic */ void accept(int i) {
        AbstractC0405x1.J();
        throw null;
    }

    public /* synthetic */ void accept(long j) {
        AbstractC0405x1.K();
        throw null;
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return j$.util.function.j.$default$andThen(this, consumer);
    }

    @Override // j$.util.stream.InterfaceC0362o2
    public final void c(long j) {
        this.f20975b = 0L;
    }

    @Override // j$.util.stream.InterfaceC0362o2
    public final /* synthetic */ boolean e() {
        return false;
    }

    @Override // j$.util.stream.InterfaceC0362o2
    public final /* synthetic */ void end() {
    }
}

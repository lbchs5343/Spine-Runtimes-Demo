package j$.util.stream;

import j$.util.Objects;
import java.util.function.Consumer;

/* renamed from: j$.util.stream.k2, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0342k2 implements InterfaceC0362o2 {

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC0362o2 f21057a;

    public AbstractC0342k2(InterfaceC0362o2 interfaceC0362o2) {
        this.f21057a = (InterfaceC0362o2) Objects.requireNonNull(interfaceC0362o2);
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

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return j$.util.function.j.$default$andThen(this, consumer);
    }

    @Override // j$.util.stream.InterfaceC0362o2
    public void c(long j) {
        this.f21057a.c(j);
    }

    @Override // j$.util.stream.InterfaceC0362o2
    public boolean e() {
        return this.f21057a.e();
    }

    @Override // j$.util.stream.InterfaceC0362o2
    public void end() {
        this.f21057a.end();
    }
}

package j$.util.stream;

import j$.util.Objects;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* renamed from: j$.util.stream.h2, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0327h2 implements InterfaceC0347l2 {

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC0362o2 f21041a;

    public AbstractC0327h2(InterfaceC0362o2 interfaceC0362o2) {
        this.f21041a = (InterfaceC0362o2) Objects.requireNonNull(interfaceC0362o2);
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
    public final /* bridge */ /* synthetic */ void accept(Object obj) {
        n((Double) obj);
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return j$.util.function.j.$default$andThen(this, consumer);
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return j$.com.android.tools.r8.a.b(this, doubleConsumer);
    }

    @Override // j$.util.stream.InterfaceC0362o2
    public void c(long j) {
        this.f21041a.c(j);
    }

    @Override // j$.util.stream.InterfaceC0362o2
    public boolean e() {
        return this.f21041a.e();
    }

    @Override // j$.util.stream.InterfaceC0362o2
    public void end() {
        this.f21041a.end();
    }

    @Override // j$.util.stream.InterfaceC0347l2
    public final /* synthetic */ void n(Double d2) {
        AbstractC0405x1.D(this, d2);
    }
}

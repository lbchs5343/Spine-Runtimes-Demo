package j$.util.stream;

import j$.util.Objects;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* renamed from: j$.util.stream.i2, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0332i2 implements InterfaceC0352m2 {

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC0362o2 f21044a;

    public AbstractC0332i2(InterfaceC0362o2 interfaceC0362o2) {
        this.f21044a = (InterfaceC0362o2) Objects.requireNonNull(interfaceC0362o2);
    }

    @Override // j$.util.stream.InterfaceC0362o2, j$.util.stream.InterfaceC0347l2, java.util.function.DoubleConsumer
    public final /* synthetic */ void accept(double d2) {
        AbstractC0405x1.C();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC0362o2
    public final /* synthetic */ void accept(long j) {
        AbstractC0405x1.K();
        throw null;
    }

    @Override // java.util.function.Consumer
    public final /* bridge */ /* synthetic */ void accept(Object obj) {
        d((Integer) obj);
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return j$.util.function.j.$default$andThen(this, consumer);
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return j$.util.function.l.$default$andThen(this, intConsumer);
    }

    @Override // j$.util.stream.InterfaceC0362o2
    public void c(long j) {
        this.f21044a.c(j);
    }

    @Override // j$.util.stream.InterfaceC0352m2
    public final /* synthetic */ void d(Integer num) {
        AbstractC0405x1.F(this, num);
    }

    @Override // j$.util.stream.InterfaceC0362o2
    public boolean e() {
        return this.f21044a.e();
    }

    @Override // j$.util.stream.InterfaceC0362o2
    public void end() {
        this.f21044a.end();
    }
}

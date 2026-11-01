package j$.util.stream;

import j$.util.Objects;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* renamed from: j$.util.stream.j2, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0337j2 implements InterfaceC0357n2 {

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC0362o2 f21050a;

    public AbstractC0337j2(InterfaceC0362o2 interfaceC0362o2) {
        this.f21050a = (InterfaceC0362o2) Objects.requireNonNull(interfaceC0362o2);
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

    @Override // java.util.function.Consumer
    public final /* bridge */ /* synthetic */ void accept(Object obj) {
        l((Long) obj);
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return j$.util.function.j.$default$andThen(this, consumer);
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return j$.com.android.tools.r8.a.c(this, longConsumer);
    }

    @Override // j$.util.stream.InterfaceC0362o2
    public void c(long j) {
        this.f21050a.c(j);
    }

    @Override // j$.util.stream.InterfaceC0362o2
    public boolean e() {
        return this.f21050a.e();
    }

    @Override // j$.util.stream.InterfaceC0362o2
    public void end() {
        this.f21050a.end();
    }

    @Override // j$.util.stream.InterfaceC0357n2
    public final /* synthetic */ void l(Long l) {
        AbstractC0405x1.H(this, l);
    }
}

package j$.util.stream;

import java.util.function.Consumer;

/* loaded from: classes2.dex */
public abstract class K implements H3 {

    /* renamed from: a, reason: collision with root package name */
    public boolean f20884a;

    /* renamed from: b, reason: collision with root package name */
    public Object f20885b;

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

    @Override // java.util.function.Consumer
    /* renamed from: accept, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final void n(Object obj) {
        if (this.f20884a) {
            return;
        }
        this.f20884a = true;
        this.f20885b = obj;
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return j$.util.function.j.$default$andThen(this, consumer);
    }

    @Override // j$.util.stream.InterfaceC0362o2
    public final /* synthetic */ void c(long j) {
    }

    @Override // j$.util.stream.InterfaceC0362o2
    public final boolean e() {
        return this.f20884a;
    }

    @Override // j$.util.stream.InterfaceC0362o2
    public final /* synthetic */ void end() {
    }
}

package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Consumer;

/* loaded from: classes2.dex */
public abstract class S implements G3, H3 {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f20940a;

    public S(boolean z) {
        this.f20940a = z;
    }

    public final void a(AbstractC0405x1 abstractC0405x1, Spliterator spliterator) {
        if (this.f20940a) {
            new T(abstractC0405x1, spliterator, this).invoke();
        } else {
            new U(abstractC0405x1, spliterator, abstractC0405x1.F0(this)).invoke();
        }
    }

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
    public final /* synthetic */ void c(long j) {
    }

    @Override // j$.util.stream.InterfaceC0362o2
    public final /* synthetic */ boolean e() {
        return false;
    }

    @Override // j$.util.stream.InterfaceC0362o2
    public final /* synthetic */ void end() {
    }

    @Override // j$.util.stream.G3
    public final int v() {
        if (this.f20940a) {
            return 0;
        }
        return EnumC0293a3.r;
    }
}

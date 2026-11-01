package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.LongConsumer;

/* loaded from: classes2.dex */
public final class P extends S implements InterfaceC0357n2 {

    /* renamed from: b, reason: collision with root package name */
    public final LongConsumer f20921b;

    public P(LongConsumer longConsumer, boolean z) {
        super(z);
        this.f20921b = longConsumer;
    }

    @Override // j$.util.stream.S, j$.util.stream.InterfaceC0362o2
    public final void accept(long j) {
        this.f20921b.accept(j);
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void n(Object obj) {
        l((Long) obj);
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return j$.com.android.tools.r8.a.c(this, longConsumer);
    }

    @Override // j$.util.stream.G3
    public final Object f(AbstractC0289a abstractC0289a, Spliterator spliterator) {
        abstractC0289a.E0(spliterator, this);
        return null;
    }

    @Override // java.util.function.Supplier
    public final /* bridge */ /* synthetic */ Object get() {
        return null;
    }

    @Override // j$.util.stream.G3
    public final /* bridge */ /* synthetic */ Object i(AbstractC0405x1 abstractC0405x1, Spliterator spliterator) {
        a(abstractC0405x1, spliterator);
        return null;
    }

    @Override // j$.util.stream.InterfaceC0357n2
    public final /* synthetic */ void l(Long l) {
        AbstractC0405x1.H(this, l);
    }
}

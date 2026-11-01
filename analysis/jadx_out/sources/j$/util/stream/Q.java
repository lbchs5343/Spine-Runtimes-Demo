package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Consumer;

/* loaded from: classes2.dex */
public final class Q extends S {

    /* renamed from: b, reason: collision with root package name */
    public final Consumer f20932b;

    public Q(Consumer consumer, boolean z) {
        super(z);
        this.f20932b = consumer;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void n(Object obj) {
        this.f20932b.n(obj);
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
}

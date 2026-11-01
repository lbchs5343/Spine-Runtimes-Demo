package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntConsumer;

/* loaded from: classes2.dex */
public final class O extends S implements InterfaceC0352m2 {

    /* renamed from: b, reason: collision with root package name */
    public final IntConsumer f20915b;

    public O(IntConsumer intConsumer, boolean z) {
        super(z);
        this.f20915b = intConsumer;
    }

    @Override // j$.util.stream.S, j$.util.stream.InterfaceC0362o2
    public final void accept(int i) {
        this.f20915b.accept(i);
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void n(Object obj) {
        d((Integer) obj);
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return j$.util.function.l.$default$andThen(this, intConsumer);
    }

    @Override // j$.util.stream.InterfaceC0352m2
    public final /* synthetic */ void d(Integer num) {
        AbstractC0405x1.F(this, num);
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

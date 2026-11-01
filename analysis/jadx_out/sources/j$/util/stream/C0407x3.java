package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* renamed from: j$.util.stream.x3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0407x3 extends AbstractC0417z3 implements j$.util.G, IntConsumer {

    /* renamed from: f, reason: collision with root package name */
    public int f21137f;

    @Override // java.util.function.IntConsumer
    public final void accept(int i) {
        this.f21137f = i;
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return j$.util.function.l.$default$andThen(this, intConsumer);
    }

    @Override // j$.util.stream.C3
    public final Spliterator b(Spliterator spliterator) {
        return new C0407x3((j$.util.G) spliterator, this);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.com.android.tools.r8.a.i(this, consumer);
    }

    @Override // j$.util.stream.AbstractC0417z3
    public final void g(Object obj) {
        ((IntConsumer) obj).accept(this.f21137f);
    }

    @Override // j$.util.stream.AbstractC0417z3
    public final AbstractC0323g3 i(int i) {
        return new C0313e3(i);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.com.android.tools.r8.a.y(this, consumer);
    }
}

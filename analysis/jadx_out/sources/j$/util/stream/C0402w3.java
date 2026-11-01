package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* renamed from: j$.util.stream.w3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0402w3 extends AbstractC0417z3 implements j$.util.D, DoubleConsumer {

    /* renamed from: f, reason: collision with root package name */
    public double f21128f;

    @Override // java.util.function.DoubleConsumer
    public final void accept(double d2) {
        this.f21128f = d2;
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return j$.com.android.tools.r8.a.b(this, doubleConsumer);
    }

    @Override // j$.util.stream.C3
    public final Spliterator b(Spliterator spliterator) {
        return new C0402w3((j$.util.D) spliterator, this);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.com.android.tools.r8.a.h(this, consumer);
    }

    @Override // j$.util.stream.AbstractC0417z3
    public final void g(Object obj) {
        ((DoubleConsumer) obj).accept(this.f21128f);
    }

    @Override // j$.util.stream.AbstractC0417z3
    public final AbstractC0323g3 i(int i) {
        return new C0308d3(i);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.com.android.tools.r8.a.x(this, consumer);
    }
}

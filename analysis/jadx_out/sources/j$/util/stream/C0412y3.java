package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* renamed from: j$.util.stream.y3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0412y3 extends AbstractC0417z3 implements j$.util.J, LongConsumer {

    /* renamed from: f, reason: collision with root package name */
    public long f21138f;

    @Override // java.util.function.LongConsumer
    public final void accept(long j) {
        this.f21138f = j;
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return j$.com.android.tools.r8.a.c(this, longConsumer);
    }

    @Override // j$.util.stream.C3
    public final Spliterator b(Spliterator spliterator) {
        return new C0412y3((j$.util.J) spliterator, this);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.com.android.tools.r8.a.j(this, consumer);
    }

    @Override // j$.util.stream.AbstractC0417z3
    public final void g(Object obj) {
        ((LongConsumer) obj).accept(this.f21138f);
    }

    @Override // j$.util.stream.AbstractC0417z3
    public final AbstractC0323g3 i(int i) {
        return new C0318f3(i);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.com.android.tools.r8.a.z(this, consumer);
    }
}

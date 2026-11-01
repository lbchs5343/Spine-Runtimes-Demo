package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Consumer;

/* renamed from: j$.util.stream.s3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0382s3 extends AbstractC0387t3 implements j$.util.J {
    @Override // j$.util.stream.AbstractC0397v3
    public final Spliterator a(Spliterator spliterator, long j, long j2, long j3, long j4) {
        return new C0382s3((j$.util.J) spliterator, j, j2, j3, j4);
    }

    @Override // j$.util.stream.AbstractC0387t3
    public final Object b() {
        return new F0(1);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.com.android.tools.r8.a.j(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.com.android.tools.r8.a.z(this, consumer);
    }
}

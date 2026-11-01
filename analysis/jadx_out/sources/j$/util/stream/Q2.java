package j$.util.stream;

import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import j$.util.Objects;
import j$.util.Spliterators;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* loaded from: classes2.dex */
public final class Q2 extends W2 implements j$.util.D {

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ R2 f20936g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Q2(R2 r2, int i, int i2, int i3, int i4) {
        super(r2, i, i2, i3, i4);
        this.f20936g = r2;
    }

    @Override // j$.util.stream.W2
    public final void a(int i, Object obj, Object obj2) {
        ((DoubleConsumer) obj2).accept(((double[]) obj)[i]);
    }

    @Override // j$.util.stream.W2
    public final j$.util.M b(Object obj, int i, int i2) {
        double[] dArr = (double[]) obj;
        int i3 = i2 + i;
        Spliterators.a(((double[]) Objects.requireNonNull(dArr)).length, i, i3);
        return new j$.util.U(dArr, i, i3, AVMDLDataLoader.KeyIsPreloadWaitListType);
    }

    @Override // j$.util.stream.W2
    public final j$.util.M c(int i, int i2, int i3, int i4) {
        return new Q2(this.f20936g, i, i2, i3, i4);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.com.android.tools.r8.a.h(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.com.android.tools.r8.a.x(this, consumer);
    }
}

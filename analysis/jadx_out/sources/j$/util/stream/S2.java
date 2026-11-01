package j$.util.stream;

import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import j$.util.Objects;
import j$.util.Spliterators;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* loaded from: classes2.dex */
public final class S2 extends W2 implements j$.util.G {

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ T2 f20941g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public S2(T2 t2, int i, int i2, int i3, int i4) {
        super(t2, i, i2, i3, i4);
        this.f20941g = t2;
    }

    @Override // j$.util.stream.W2
    public final void a(int i, Object obj, Object obj2) {
        ((IntConsumer) obj2).accept(((int[]) obj)[i]);
    }

    @Override // j$.util.stream.W2
    public final j$.util.M b(Object obj, int i, int i2) {
        int[] iArr = (int[]) obj;
        int i3 = i2 + i;
        Spliterators.a(((int[]) Objects.requireNonNull(iArr)).length, i, i3);
        return new j$.util.Z(iArr, i, i3, AVMDLDataLoader.KeyIsPreloadWaitListType);
    }

    @Override // j$.util.stream.W2
    public final j$.util.M c(int i, int i2, int i3, int i4) {
        return new S2(this.f20941g, i, i2, i3, i4);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.com.android.tools.r8.a.i(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.com.android.tools.r8.a.y(this, consumer);
    }
}

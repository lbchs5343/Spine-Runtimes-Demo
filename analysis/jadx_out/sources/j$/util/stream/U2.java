package j$.util.stream;

import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import j$.util.Objects;
import j$.util.Spliterators;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* loaded from: classes2.dex */
public final class U2 extends W2 implements j$.util.J {

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ V2 f20960g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public U2(V2 v2, int i, int i2, int i3, int i4) {
        super(v2, i, i2, i3, i4);
        this.f20960g = v2;
    }

    @Override // j$.util.stream.W2
    public final void a(int i, Object obj, Object obj2) {
        ((LongConsumer) obj2).accept(((long[]) obj)[i]);
    }

    @Override // j$.util.stream.W2
    public final j$.util.M b(Object obj, int i, int i2) {
        long[] jArr = (long[]) obj;
        int i3 = i2 + i;
        Spliterators.a(((long[]) Objects.requireNonNull(jArr)).length, i, i3);
        return new j$.util.b0(jArr, i, i3, AVMDLDataLoader.KeyIsPreloadWaitListType);
    }

    @Override // j$.util.stream.W2
    public final j$.util.M c(int i, int i2, int i3, int i4) {
        return new U2(this.f20960g, i, i2, i3, i4);
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

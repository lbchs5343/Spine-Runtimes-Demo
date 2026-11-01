package j$.util.stream;

import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import j$.util.Objects;
import j$.util.Spliterator;
import j$.util.Spliterators;
import java.util.Arrays;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
import java.util.function.IntFunction;

/* renamed from: j$.util.stream.d1, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0306d1 implements E0 {

    /* renamed from: a, reason: collision with root package name */
    public final int[] f21016a;

    /* renamed from: b, reason: collision with root package name */
    public int f21017b;

    public C0306d1(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f21016a = new int[(int) j];
        this.f21017b = 0;
    }

    public C0306d1(int[] iArr) {
        this.f21016a = iArr;
        this.f21017b = iArr.length;
    }

    @Override // j$.util.stream.H0, j$.util.stream.I0
    public final H0 a(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // j$.util.stream.I0
    public final /* bridge */ /* synthetic */ I0 a(int i) {
        a(i);
        throw null;
    }

    @Override // j$.util.stream.H0
    public final Object b() {
        int[] iArr = this.f21016a;
        int length = iArr.length;
        int i = this.f21017b;
        return length == i ? iArr : Arrays.copyOf(iArr, i);
    }

    @Override // j$.util.stream.I0
    public final long count() {
        return this.f21017b;
    }

    @Override // j$.util.stream.H0
    public final void f(Object obj, int i) {
        int i2 = this.f21017b;
        System.arraycopy(this.f21016a, 0, (int[]) obj, i, i2);
    }

    @Override // j$.util.stream.I0
    public final /* synthetic */ void forEach(Consumer consumer) {
        AbstractC0405x1.Q(this, consumer);
    }

    @Override // j$.util.stream.H0
    public final void g(Object obj) {
        IntConsumer intConsumer = (IntConsumer) obj;
        for (int i = 0; i < this.f21017b; i++) {
            intConsumer.accept(this.f21016a[i]);
        }
    }

    @Override // j$.util.stream.I0
    public final /* synthetic */ I0 i(long j, long j2, IntFunction intFunction) {
        return AbstractC0405x1.T(this, j, j2);
    }

    @Override // j$.util.stream.I0
    public final /* synthetic */ void k(Object[] objArr, int i) {
        AbstractC0405x1.N(this, (Integer[]) objArr, i);
    }

    @Override // j$.util.stream.I0
    public final /* synthetic */ Object[] m(IntFunction intFunction) {
        return AbstractC0405x1.L(this, intFunction);
    }

    @Override // j$.util.stream.I0
    public final /* synthetic */ int o() {
        return 0;
    }

    @Override // j$.util.stream.H0, j$.util.stream.I0
    public final j$.util.M spliterator() {
        int i = this.f21017b;
        int[] iArr = this.f21016a;
        Spliterators.a(((int[]) Objects.requireNonNull(iArr)).length, 0, i);
        return new j$.util.Z(iArr, 0, i, AVMDLDataLoader.KeyIsPreloadWaitListType);
    }

    @Override // j$.util.stream.I0
    public final Spliterator spliterator() {
        int i = this.f21017b;
        int[] iArr = this.f21016a;
        Spliterators.a(((int[]) Objects.requireNonNull(iArr)).length, 0, i);
        return new j$.util.Z(iArr, 0, i, AVMDLDataLoader.KeyIsPreloadWaitListType);
    }

    public String toString() {
        int[] iArr = this.f21016a;
        return String.format("IntArrayNode[%d][%s]", Integer.valueOf(iArr.length - this.f21017b), Arrays.toString(iArr));
    }
}

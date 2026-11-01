package j$.util.stream;

import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import j$.util.Objects;
import j$.util.Spliterator;
import j$.util.Spliterators;
import java.util.Arrays;
import java.util.function.Consumer;
import java.util.function.IntFunction;
import java.util.function.LongConsumer;

/* renamed from: j$.util.stream.m1, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0351m1 implements G0 {

    /* renamed from: a, reason: collision with root package name */
    public final long[] f21073a;

    /* renamed from: b, reason: collision with root package name */
    public int f21074b;

    public C0351m1(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f21073a = new long[(int) j];
        this.f21074b = 0;
    }

    public C0351m1(long[] jArr) {
        this.f21073a = jArr;
        this.f21074b = jArr.length;
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
        long[] jArr = this.f21073a;
        int length = jArr.length;
        int i = this.f21074b;
        return length == i ? jArr : Arrays.copyOf(jArr, i);
    }

    @Override // j$.util.stream.I0
    public final long count() {
        return this.f21074b;
    }

    @Override // j$.util.stream.H0
    public final void f(Object obj, int i) {
        int i2 = this.f21074b;
        System.arraycopy(this.f21073a, 0, (long[]) obj, i, i2);
    }

    @Override // j$.util.stream.I0
    public final /* synthetic */ void forEach(Consumer consumer) {
        AbstractC0405x1.R(this, consumer);
    }

    @Override // j$.util.stream.H0
    public final void g(Object obj) {
        LongConsumer longConsumer = (LongConsumer) obj;
        for (int i = 0; i < this.f21074b; i++) {
            longConsumer.accept(this.f21073a[i]);
        }
    }

    @Override // j$.util.stream.I0
    public final /* synthetic */ I0 i(long j, long j2, IntFunction intFunction) {
        return AbstractC0405x1.U(this, j, j2);
    }

    @Override // j$.util.stream.I0
    public final /* synthetic */ void k(Object[] objArr, int i) {
        AbstractC0405x1.O(this, (Long[]) objArr, i);
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
        int i = this.f21074b;
        long[] jArr = this.f21073a;
        Spliterators.a(((long[]) Objects.requireNonNull(jArr)).length, 0, i);
        return new j$.util.b0(jArr, 0, i, AVMDLDataLoader.KeyIsPreloadWaitListType);
    }

    @Override // j$.util.stream.I0
    public final Spliterator spliterator() {
        int i = this.f21074b;
        long[] jArr = this.f21073a;
        Spliterators.a(((long[]) Objects.requireNonNull(jArr)).length, 0, i);
        return new j$.util.b0(jArr, 0, i, AVMDLDataLoader.KeyIsPreloadWaitListType);
    }

    public String toString() {
        long[] jArr = this.f21073a;
        return String.format("LongArrayNode[%d][%s]", Integer.valueOf(jArr.length - this.f21074b), Arrays.toString(jArr));
    }
}

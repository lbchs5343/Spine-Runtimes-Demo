package j$.util.stream;

import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import j$.util.Objects;
import j$.util.Spliterator;
import j$.util.Spliterators;
import java.util.Arrays;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import java.util.function.IntFunction;

/* loaded from: classes2.dex */
public class U0 implements C0 {

    /* renamed from: a, reason: collision with root package name */
    public final double[] f20958a;

    /* renamed from: b, reason: collision with root package name */
    public int f20959b;

    public U0(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f20958a = new double[(int) j];
        this.f20959b = 0;
    }

    public U0(double[] dArr) {
        this.f20958a = dArr;
        this.f20959b = dArr.length;
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
        double[] dArr = this.f20958a;
        int length = dArr.length;
        int i = this.f20959b;
        return length == i ? dArr : Arrays.copyOf(dArr, i);
    }

    @Override // j$.util.stream.I0
    public final long count() {
        return this.f20959b;
    }

    @Override // j$.util.stream.H0
    public final void f(Object obj, int i) {
        int i2 = this.f20959b;
        System.arraycopy(this.f20958a, 0, (double[]) obj, i, i2);
    }

    @Override // j$.util.stream.I0
    public final /* synthetic */ void forEach(Consumer consumer) {
        AbstractC0405x1.P(this, consumer);
    }

    @Override // j$.util.stream.H0
    public final void g(Object obj) {
        DoubleConsumer doubleConsumer = (DoubleConsumer) obj;
        for (int i = 0; i < this.f20959b; i++) {
            doubleConsumer.accept(this.f20958a[i]);
        }
    }

    @Override // j$.util.stream.I0
    public final /* synthetic */ I0 i(long j, long j2, IntFunction intFunction) {
        return AbstractC0405x1.S(this, j, j2);
    }

    @Override // j$.util.stream.I0
    public final /* synthetic */ void k(Object[] objArr, int i) {
        AbstractC0405x1.M(this, (Double[]) objArr, i);
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
        int i = this.f20959b;
        double[] dArr = this.f20958a;
        Spliterators.a(((double[]) Objects.requireNonNull(dArr)).length, 0, i);
        return new j$.util.U(dArr, 0, i, AVMDLDataLoader.KeyIsPreloadWaitListType);
    }

    @Override // j$.util.stream.I0
    public final Spliterator spliterator() {
        int i = this.f20959b;
        double[] dArr = this.f20958a;
        Spliterators.a(((double[]) Objects.requireNonNull(dArr)).length, 0, i);
        return new j$.util.U(dArr, 0, i, AVMDLDataLoader.KeyIsPreloadWaitListType);
    }

    public String toString() {
        double[] dArr = this.f20958a;
        return String.format("DoubleArrayNode[%d][%s]", Integer.valueOf(dArr.length - this.f20959b), Arrays.toString(dArr));
    }
}

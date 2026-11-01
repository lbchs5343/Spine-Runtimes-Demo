package j$.util.stream;

import j$.util.Spliterator;
import java.util.Arrays;
import java.util.function.Consumer;
import java.util.function.IntFunction;

/* loaded from: classes2.dex */
public class L0 implements I0 {

    /* renamed from: a, reason: collision with root package name */
    public final Object[] f20897a;

    /* renamed from: b, reason: collision with root package name */
    public int f20898b;

    public L0(long j, IntFunction intFunction) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f20897a = (Object[]) intFunction.apply((int) j);
        this.f20898b = 0;
    }

    public L0(Object[] objArr) {
        this.f20897a = objArr;
        this.f20898b = objArr.length;
    }

    @Override // j$.util.stream.I0
    public final I0 a(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // j$.util.stream.I0
    public final long count() {
        return this.f20898b;
    }

    @Override // j$.util.stream.I0
    public final void forEach(Consumer consumer) {
        for (int i = 0; i < this.f20898b; i++) {
            consumer.n(this.f20897a[i]);
        }
    }

    @Override // j$.util.stream.I0
    public final /* synthetic */ I0 i(long j, long j2, IntFunction intFunction) {
        return AbstractC0405x1.V(this, j, j2, intFunction);
    }

    @Override // j$.util.stream.I0
    public final void k(Object[] objArr, int i) {
        System.arraycopy(this.f20897a, 0, objArr, i, this.f20898b);
    }

    @Override // j$.util.stream.I0
    public final Object[] m(IntFunction intFunction) {
        Object[] objArr = this.f20897a;
        if (objArr.length == this.f20898b) {
            return objArr;
        }
        throw new IllegalStateException();
    }

    @Override // j$.util.stream.I0
    public final /* synthetic */ int o() {
        return 0;
    }

    @Override // j$.util.stream.I0
    public final Spliterator spliterator() {
        return j$.com.android.tools.r8.a.S(this.f20897a, 0, this.f20898b);
    }

    public String toString() {
        Object[] objArr = this.f20897a;
        return String.format("ArrayNode[%d][%s]", Integer.valueOf(objArr.length - this.f20898b), Arrays.toString(objArr));
    }
}

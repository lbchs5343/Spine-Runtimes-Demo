package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.DoubleConsumer;

/* renamed from: j$.util.stream.p1, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0366p1 extends AbstractC0385t1 implements InterfaceC0347l2 {
    public final double[] h;

    public C0366p1(Spliterator spliterator, AbstractC0405x1 abstractC0405x1, double[] dArr) {
        super(spliterator, abstractC0405x1, dArr.length);
        this.h = dArr;
    }

    public C0366p1(C0366p1 c0366p1, Spliterator spliterator, long j, long j2) {
        super(c0366p1, spliterator, j, j2, c0366p1.h.length);
        this.h = c0366p1.h;
    }

    @Override // j$.util.stream.AbstractC0385t1
    public final AbstractC0385t1 a(Spliterator spliterator, long j, long j2) {
        return new C0366p1(this, spliterator, j, j2);
    }

    @Override // j$.util.stream.AbstractC0385t1, j$.util.stream.InterfaceC0362o2, j$.util.stream.InterfaceC0347l2, java.util.function.DoubleConsumer
    public final void accept(double d2) {
        int i = this.f21103f;
        if (i >= this.f21104g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f21103f));
        }
        double[] dArr = this.h;
        this.f21103f = i + 1;
        dArr[i] = d2;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void n(Object obj) {
        n((Double) obj);
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return j$.com.android.tools.r8.a.b(this, doubleConsumer);
    }

    @Override // j$.util.stream.InterfaceC0347l2
    public final /* synthetic */ void n(Double d2) {
        AbstractC0405x1.D(this, d2);
    }
}

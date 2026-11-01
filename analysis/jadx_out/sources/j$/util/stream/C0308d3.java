package j$.util.stream;

import java.util.function.DoubleConsumer;

/* renamed from: j$.util.stream.d3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0308d3 extends AbstractC0323g3 implements DoubleConsumer {

    /* renamed from: c, reason: collision with root package name */
    public final double[] f21018c;

    public C0308d3(int i) {
        this.f21018c = new double[i];
    }

    @Override // j$.util.stream.AbstractC0323g3
    public final void a(Object obj, long j) {
        DoubleConsumer doubleConsumer = (DoubleConsumer) obj;
        for (int i = 0; i < j; i++) {
            doubleConsumer.accept(this.f21018c[i]);
        }
    }

    @Override // java.util.function.DoubleConsumer
    public final void accept(double d2) {
        int i = this.f21036b;
        this.f21036b = i + 1;
        this.f21018c[i] = d2;
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return j$.com.android.tools.r8.a.b(this, doubleConsumer);
    }
}

package j$.util.stream;

import java.util.Arrays;

/* loaded from: classes2.dex */
public final class L2 extends AbstractC0416z2 {

    /* renamed from: c, reason: collision with root package name */
    public double[] f20902c;

    /* renamed from: d, reason: collision with root package name */
    public int f20903d;

    @Override // j$.util.stream.InterfaceC0347l2, java.util.function.DoubleConsumer
    public final void accept(double d2) {
        double[] dArr = this.f20902c;
        int i = this.f20903d;
        this.f20903d = i + 1;
        dArr[i] = d2;
    }

    @Override // j$.util.stream.AbstractC0327h2, j$.util.stream.InterfaceC0362o2
    public final void c(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f20902c = new double[(int) j];
    }

    @Override // j$.util.stream.AbstractC0327h2, j$.util.stream.InterfaceC0362o2
    public final void end() {
        int i = 0;
        Arrays.sort(this.f20902c, 0, this.f20903d);
        long j = this.f20903d;
        InterfaceC0362o2 interfaceC0362o2 = this.f21041a;
        interfaceC0362o2.c(j);
        if (this.f21142b) {
            while (i < this.f20903d && !interfaceC0362o2.e()) {
                interfaceC0362o2.accept(this.f20902c[i]);
                i++;
            }
        } else {
            while (i < this.f20903d) {
                interfaceC0362o2.accept(this.f20902c[i]);
                i++;
            }
        }
        interfaceC0362o2.end();
        this.f20902c = null;
    }
}

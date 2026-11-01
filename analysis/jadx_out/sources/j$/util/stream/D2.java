package j$.util.stream;

import java.util.Arrays;

/* loaded from: classes2.dex */
public final class D2 extends AbstractC0416z2 {

    /* renamed from: c, reason: collision with root package name */
    public R2 f20852c;

    @Override // j$.util.stream.InterfaceC0347l2, java.util.function.DoubleConsumer
    public final void accept(double d2) {
        this.f20852c.accept(d2);
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [j$.util.stream.R2, j$.util.stream.X2] */
    /* JADX WARN: Type inference failed for: r0v5, types: [j$.util.stream.X2] */
    /* JADX WARN: Type inference failed for: r0v6, types: [j$.util.stream.X2] */
    @Override // j$.util.stream.AbstractC0327h2, j$.util.stream.InterfaceC0362o2
    public final void c(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f20852c = j > 0 ? new R2((int) j) : new X2();
    }

    @Override // j$.util.stream.AbstractC0327h2, j$.util.stream.InterfaceC0362o2
    public final void end() {
        double[] dArr = (double[]) this.f20852c.b();
        Arrays.sort(dArr);
        long length = dArr.length;
        InterfaceC0362o2 interfaceC0362o2 = this.f21041a;
        interfaceC0362o2.c(length);
        int i = 0;
        if (this.f21142b) {
            int length2 = dArr.length;
            while (i < length2) {
                double d2 = dArr[i];
                if (interfaceC0362o2.e()) {
                    break;
                }
                interfaceC0362o2.accept(d2);
                i++;
            }
        } else {
            int length3 = dArr.length;
            while (i < length3) {
                interfaceC0362o2.accept(dArr[i]);
                i++;
            }
        }
        interfaceC0362o2.end();
    }
}

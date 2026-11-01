package j$.util.stream;

import java.util.Arrays;

/* loaded from: classes2.dex */
public final class E2 extends A2 {

    /* renamed from: c, reason: collision with root package name */
    public T2 f20855c;

    @Override // j$.util.stream.InterfaceC0352m2, j$.util.stream.InterfaceC0362o2
    public final void accept(int i) {
        this.f20855c.accept(i);
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [j$.util.stream.T2, j$.util.stream.X2] */
    /* JADX WARN: Type inference failed for: r0v5, types: [j$.util.stream.X2] */
    /* JADX WARN: Type inference failed for: r0v6, types: [j$.util.stream.X2] */
    @Override // j$.util.stream.AbstractC0332i2, j$.util.stream.InterfaceC0362o2
    public final void c(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f20855c = j > 0 ? new T2((int) j) : new X2();
    }

    @Override // j$.util.stream.AbstractC0332i2, j$.util.stream.InterfaceC0362o2
    public final void end() {
        int[] iArr = (int[]) this.f20855c.b();
        Arrays.sort(iArr);
        long length = iArr.length;
        InterfaceC0362o2 interfaceC0362o2 = this.f21044a;
        interfaceC0362o2.c(length);
        int i = 0;
        if (this.f20828b) {
            int length2 = iArr.length;
            while (i < length2) {
                int i2 = iArr[i];
                if (interfaceC0362o2.e()) {
                    break;
                }
                interfaceC0362o2.accept(i2);
                i++;
            }
        } else {
            int length3 = iArr.length;
            while (i < length3) {
                interfaceC0362o2.accept(iArr[i]);
                i++;
            }
        }
        interfaceC0362o2.end();
    }
}

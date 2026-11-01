package j$.util.stream;

import java.util.Arrays;

/* loaded from: classes2.dex */
public final class M2 extends A2 {

    /* renamed from: c, reason: collision with root package name */
    public int[] f20909c;

    /* renamed from: d, reason: collision with root package name */
    public int f20910d;

    @Override // j$.util.stream.InterfaceC0352m2, j$.util.stream.InterfaceC0362o2
    public final void accept(int i) {
        int[] iArr = this.f20909c;
        int i2 = this.f20910d;
        this.f20910d = i2 + 1;
        iArr[i2] = i;
    }

    @Override // j$.util.stream.AbstractC0332i2, j$.util.stream.InterfaceC0362o2
    public final void c(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f20909c = new int[(int) j];
    }

    @Override // j$.util.stream.AbstractC0332i2, j$.util.stream.InterfaceC0362o2
    public final void end() {
        int i = 0;
        Arrays.sort(this.f20909c, 0, this.f20910d);
        long j = this.f20910d;
        InterfaceC0362o2 interfaceC0362o2 = this.f21044a;
        interfaceC0362o2.c(j);
        if (this.f20828b) {
            while (i < this.f20910d && !interfaceC0362o2.e()) {
                interfaceC0362o2.accept(this.f20909c[i]);
                i++;
            }
        } else {
            while (i < this.f20910d) {
                interfaceC0362o2.accept(this.f20909c[i]);
                i++;
            }
        }
        interfaceC0362o2.end();
        this.f20909c = null;
    }
}

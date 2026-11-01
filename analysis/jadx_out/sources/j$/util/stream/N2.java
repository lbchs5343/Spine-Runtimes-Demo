package j$.util.stream;

import java.util.Arrays;

/* loaded from: classes2.dex */
public final class N2 extends B2 {

    /* renamed from: c, reason: collision with root package name */
    public long[] f20913c;

    /* renamed from: d, reason: collision with root package name */
    public int f20914d;

    @Override // j$.util.stream.InterfaceC0357n2, j$.util.stream.InterfaceC0362o2
    public final void accept(long j) {
        long[] jArr = this.f20913c;
        int i = this.f20914d;
        this.f20914d = i + 1;
        jArr[i] = j;
    }

    @Override // j$.util.stream.AbstractC0337j2, j$.util.stream.InterfaceC0362o2
    public final void c(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f20913c = new long[(int) j];
    }

    @Override // j$.util.stream.AbstractC0337j2, j$.util.stream.InterfaceC0362o2
    public final void end() {
        int i = 0;
        Arrays.sort(this.f20913c, 0, this.f20914d);
        long j = this.f20914d;
        InterfaceC0362o2 interfaceC0362o2 = this.f21050a;
        interfaceC0362o2.c(j);
        if (this.f20834b) {
            while (i < this.f20914d && !interfaceC0362o2.e()) {
                interfaceC0362o2.accept(this.f20913c[i]);
                i++;
            }
        } else {
            while (i < this.f20914d) {
                interfaceC0362o2.accept(this.f20913c[i]);
                i++;
            }
        }
        interfaceC0362o2.end();
        this.f20913c = null;
    }
}

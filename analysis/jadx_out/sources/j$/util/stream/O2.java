package j$.util.stream;

import java.util.Arrays;

/* loaded from: classes2.dex */
public final class O2 extends C2 {

    /* renamed from: d, reason: collision with root package name */
    public Object[] f20919d;

    /* renamed from: e, reason: collision with root package name */
    public int f20920e;

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        Object[] objArr = this.f20919d;
        int i = this.f20920e;
        this.f20920e = i + 1;
        objArr[i] = obj;
    }

    @Override // j$.util.stream.AbstractC0342k2, j$.util.stream.InterfaceC0362o2
    public final void c(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f20919d = new Object[(int) j];
    }

    @Override // j$.util.stream.AbstractC0342k2, j$.util.stream.InterfaceC0362o2
    public final void end() {
        int i = 0;
        Arrays.sort(this.f20919d, 0, this.f20920e, this.f20837b);
        long j = this.f20920e;
        InterfaceC0362o2 interfaceC0362o2 = this.f21057a;
        interfaceC0362o2.c(j);
        if (this.f20838c) {
            while (i < this.f20920e && !interfaceC0362o2.e()) {
                interfaceC0362o2.accept((InterfaceC0362o2) this.f20919d[i]);
                i++;
            }
        } else {
            while (i < this.f20920e) {
                interfaceC0362o2.accept((InterfaceC0362o2) this.f20919d[i]);
                i++;
            }
        }
        interfaceC0362o2.end();
        this.f20919d = null;
    }
}

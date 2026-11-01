package j$.util.stream;

import java.util.Arrays;

/* loaded from: classes2.dex */
public final class F2 extends B2 {

    /* renamed from: c, reason: collision with root package name */
    public V2 f20864c;

    @Override // j$.util.stream.InterfaceC0357n2, j$.util.stream.InterfaceC0362o2
    public final void accept(long j) {
        this.f20864c.accept(j);
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [j$.util.stream.V2, j$.util.stream.X2] */
    /* JADX WARN: Type inference failed for: r0v5, types: [j$.util.stream.X2] */
    /* JADX WARN: Type inference failed for: r0v6, types: [j$.util.stream.X2] */
    @Override // j$.util.stream.AbstractC0337j2, j$.util.stream.InterfaceC0362o2
    public final void c(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f20864c = j > 0 ? new V2((int) j) : new X2();
    }

    @Override // j$.util.stream.AbstractC0337j2, j$.util.stream.InterfaceC0362o2
    public final void end() {
        long[] jArr = (long[]) this.f20864c.b();
        Arrays.sort(jArr);
        long length = jArr.length;
        InterfaceC0362o2 interfaceC0362o2 = this.f21050a;
        interfaceC0362o2.c(length);
        int i = 0;
        if (this.f20834b) {
            int length2 = jArr.length;
            while (i < length2) {
                long j = jArr[i];
                if (interfaceC0362o2.e()) {
                    break;
                }
                interfaceC0362o2.accept(j);
                i++;
            }
        } else {
            int length3 = jArr.length;
            while (i < length3) {
                interfaceC0362o2.accept(jArr[i]);
                i++;
            }
        }
        interfaceC0362o2.end();
    }
}

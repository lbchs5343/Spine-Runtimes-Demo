package g;

import java.io.OutputStream;

/* loaded from: classes3.dex */
public final class fch extends OutputStream {

    /* renamed from: a, reason: collision with root package name */
    public long f16558a;

    @Override // java.io.OutputStream
    public final void write(int i) {
        this.f16558a++;
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) {
        this.f16558a += bArr.length;
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        int i3;
        if (i < 0 || i > bArr.length || i2 < 0 || (i3 = i + i2) > bArr.length || i3 < 0) {
            throw new IndexOutOfBoundsException();
        }
        this.f16558a += i2;
    }
}

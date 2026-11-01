package g;

import java.io.InputStream;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public final class fvc extends InputStream {

    /* renamed from: a, reason: collision with root package name */
    public final ByteBuffer f17469a;

    /* renamed from: b, reason: collision with root package name */
    public int f17470b = 0;

    public fvc(ByteBuffer byteBuffer) {
        this.f17469a = byteBuffer;
    }

    @Override // java.io.InputStream
    public final synchronized void mark(int i) {
        this.f17470b = this.f17469a.position();
    }

    @Override // java.io.InputStream
    public final boolean markSupported() {
        return true;
    }

    @Override // java.io.InputStream
    public final int read() {
        ByteBuffer byteBuffer = this.f17469a;
        if (byteBuffer.hasRemaining()) {
            return byteBuffer.get() & 255;
        }
        return -1;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        ByteBuffer byteBuffer = this.f17469a;
        if (!byteBuffer.hasRemaining()) {
            return -1;
        }
        int min = Math.min(i2, byteBuffer.remaining());
        byteBuffer.get(bArr, i, min);
        return min;
    }

    @Override // java.io.InputStream
    public final synchronized void reset() {
        this.f17469a.position(this.f17470b);
    }
}

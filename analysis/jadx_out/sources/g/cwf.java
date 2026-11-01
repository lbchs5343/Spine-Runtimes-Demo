package g;

import java.io.FilterInputStream;
import java.io.InputStream;

/* loaded from: classes.dex */
public final class cwf extends FilterInputStream {

    /* renamed from: a, reason: collision with root package name */
    public long f13619a;

    /* renamed from: b, reason: collision with root package name */
    public final long f13620b;

    /* renamed from: c, reason: collision with root package name */
    public long f13621c;

    public cwf(long j, InputStream inputStream) {
        super(inputStream);
        this.f13620b = j;
    }

    public final void d(long j) {
        long j2 = this.f13621c + j;
        this.f13621c = j2;
        if (j2 > this.f13620b) {
            throw new IllegalStateException("Read limit exceeded");
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final void mark(int i) {
        super.mark(i);
        this.f13619a = this.f13621c;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() {
        int read = super.read();
        if (read != -1) {
            d(1L);
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        int read = super.read(bArr, i, i2);
        if (read > 0) {
            d(read);
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final void reset() {
        super.reset();
        this.f13621c = this.f13619a;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j) {
        long skip = super.skip(j);
        if (skip > 0) {
            d(skip);
        }
        return skip;
    }
}

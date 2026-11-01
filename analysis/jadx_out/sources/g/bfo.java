package g;

import java.io.FilterInputStream;
import java.io.InputStream;

/* loaded from: classes3.dex */
public final class bfo extends FilterInputStream {

    /* renamed from: a, reason: collision with root package name */
    public int f11456a;

    public bfo(InputStream inputStream, int i) {
        super(inputStream);
        this.f11456a = i;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int available() {
        return Math.min(super.available(), this.f11456a);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() {
        if (this.f11456a <= 0) {
            return -1;
        }
        int read = super.read();
        if (read >= 0) {
            this.f11456a--;
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        int i3 = this.f11456a;
        if (i3 <= 0) {
            return -1;
        }
        int read = super.read(bArr, i, Math.min(i2, i3));
        if (read >= 0) {
            this.f11456a -= read;
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j) {
        int skip = (int) super.skip(Math.min(j, this.f11456a));
        if (skip >= 0) {
            this.f11456a -= skip;
        }
        return skip;
    }
}

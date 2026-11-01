package g;

import com.google.android.gms.internal.ads.zzfwq;
import java.io.BufferedInputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes3.dex */
public final class api extends FilterInputStream {

    /* renamed from: a, reason: collision with root package name */
    public long f10624a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f10625b = 1;

    /* renamed from: c, reason: collision with root package name */
    public long f10626c;

    public api(long j, InputStream inputStream) {
        super(inputStream);
        this.f10624a = -1L;
        inputStream.getClass();
        zzfwq.zzf(j >= 0, "limit must be non-negative");
        this.f10626c = j;
    }

    public api(BufferedInputStream bufferedInputStream, long j) {
        super(bufferedInputStream);
        this.f10626c = j;
    }

    private final synchronized void d(int i) {
        ((FilterInputStream) this).in.mark(i);
        this.f10624a = this.f10626c;
    }

    private final synchronized void e() {
        if (!((FilterInputStream) this).in.markSupported()) {
            throw new IOException("Mark not supported");
        }
        if (this.f10624a == -1) {
            throw new IOException("Mark not set");
        }
        ((FilterInputStream) this).in.reset();
        this.f10626c = this.f10624a;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() {
        switch (this.f10625b) {
            case 1:
                return (int) Math.min(((FilterInputStream) this).in.available(), this.f10626c);
            default:
                return super.available();
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void mark(int i) {
        switch (this.f10625b) {
            case 1:
                d(i);
                break;
            default:
                super.mark(i);
                break;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() {
        switch (this.f10625b) {
            case 0:
                int read = super.read();
                if (read != -1) {
                    this.f10624a++;
                }
                return read;
            default:
                if (this.f10626c == 0) {
                    return -1;
                }
                int read2 = ((FilterInputStream) this).in.read();
                if (read2 != -1) {
                    this.f10626c--;
                }
                return read2;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        switch (this.f10625b) {
            case 0:
                int read = super.read(bArr, i, i2);
                if (read != -1) {
                    this.f10624a += read;
                }
                return read;
            default:
                long j = this.f10626c;
                if (j == 0) {
                    return -1;
                }
                int read2 = ((FilterInputStream) this).in.read(bArr, i, (int) Math.min(i2, j));
                if (read2 != -1) {
                    this.f10626c -= read2;
                }
                return read2;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() {
        switch (this.f10625b) {
            case 1:
                e();
                break;
            default:
                super.reset();
                break;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) {
        switch (this.f10625b) {
            case 1:
                long skip = ((FilterInputStream) this).in.skip(Math.min(j, this.f10626c));
                this.f10626c -= skip;
                return skip;
            default:
                return super.skip(j);
        }
    }
}

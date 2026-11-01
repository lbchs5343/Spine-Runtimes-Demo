package com.bytedance.sdk.component.ox.dq;

import g.awf;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
final class q implements s {

    /* renamed from: d, reason: collision with root package name */
    public final gh f2162d;
    public final ox dq = new ox();
    boolean ox;

    public q(gh ghVar) {
        if (ghVar == null) {
            throw new NullPointerException("source == null");
        }
        this.f2162d = ghVar;
    }

    @Override // com.bytedance.sdk.component.ox.dq.gh, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.ox) {
            return;
        }
        this.ox = true;
        this.f2162d.close();
        this.dq.cd();
    }

    public boolean d(long j) throws IOException {
        ox oxVar;
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j)));
        }
        if (this.ox) {
            throw new IllegalStateException("closed");
        }
        do {
            oxVar = this.dq;
            if (oxVar.f2161d >= j) {
                return true;
            }
        } while (this.f2162d.dq(oxVar, 8192L) != -1);
        return false;
    }

    @Override // com.bytedance.sdk.component.ox.dq.s
    public long dq(byte b2) throws IOException {
        return dq(b2, 0L, Long.MAX_VALUE);
    }

    public long dq(byte b2, long j, long j2) throws IOException {
        if (this.ox) {
            throw new IllegalStateException("closed");
        }
        if (j < 0 || j2 < j) {
            StringBuilder l = awf.l(j, "fromIndex=", " toIndex=");
            l.append(j2);
            throw new IllegalArgumentException(l.toString());
        }
        long j3 = j;
        while (j3 < j2) {
            byte b3 = b2;
            long j4 = j2;
            long dq = this.dq.dq(b3, j3, j4);
            if (dq == -1) {
                ox oxVar = this.dq;
                long j5 = oxVar.f2161d;
                if (j5 >= j4 || this.f2162d.dq(oxVar, 8192L) == -1) {
                    break;
                }
                j3 = Math.max(j3, j5);
                b2 = b3;
                j2 = j4;
            } else {
                return dq;
            }
        }
        return -1L;
    }

    @Override // com.bytedance.sdk.component.ox.dq.gh
    public long dq(ox oxVar, long j) throws IOException {
        if (oxVar == null) {
            throw new IllegalArgumentException("sink == null");
        }
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j)));
        }
        if (this.ox) {
            throw new IllegalStateException("closed");
        }
        ox oxVar2 = this.dq;
        if (oxVar2.f2161d == 0 && this.f2162d.dq(oxVar2, 8192L) == -1) {
            return -1L;
        }
        return this.dq.dq(oxVar, Math.min(j, this.dq.f2161d));
    }

    @Override // com.bytedance.sdk.component.ox.dq.gh
    public r dq() {
        return this.f2162d.dq();
    }

    @Override // com.bytedance.sdk.component.ox.dq.s
    public String dq(Charset charset) throws IOException {
        if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        }
        this.dq.dq(this.f2162d);
        return this.dq.dq(charset);
    }

    @Override // com.bytedance.sdk.component.ox.dq.s
    public void dq(long j) throws IOException {
        if (!d(j)) {
            throw new EOFException();
        }
    }

    @Override // com.bytedance.sdk.component.ox.dq.s
    public void dq(byte[] bArr) throws IOException {
        try {
            dq(bArr.length);
            this.dq.dq(bArr);
        } catch (EOFException e2) {
            int i = 0;
            while (true) {
                ox oxVar = this.dq;
                long j = oxVar.f2161d;
                if (j <= 0) {
                    throw e2;
                }
                int dq = oxVar.dq(bArr, i, (int) j);
                if (dq == -1) {
                    throw new AssertionError();
                }
                i += dq;
            }
        }
    }

    @Override // com.bytedance.sdk.component.ox.dq.s
    public boolean dq(long j, iw iwVar) throws IOException {
        return dq(j, iwVar, 0, iwVar.mn());
    }

    public boolean dq(long j, iw iwVar, int i, int i2) throws IOException {
        if (this.ox) {
            throw new IllegalStateException("closed");
        }
        if (j < 0 || i < 0 || i2 < 0 || iwVar.mn() - i < i2) {
            return false;
        }
        for (int i3 = 0; i3 < i2; i3++) {
            long j2 = i3 + j;
            if (!d(1 + j2) || this.dq.d(j2) != iwVar.dq(i + i3)) {
                return false;
            }
        }
        return true;
    }

    @Override // com.bytedance.sdk.component.ox.dq.s
    public String f() throws IOException {
        return s(Long.MAX_VALUE);
    }

    @Override // com.bytedance.sdk.component.ox.dq.s
    public byte[] fw() throws IOException {
        this.dq.dq(this.f2162d);
        return this.dq.fw();
    }

    @Override // com.bytedance.sdk.component.ox.dq.s
    public byte ia() throws IOException {
        dq(1L);
        return this.dq.ia();
    }

    @Override // com.bytedance.sdk.component.ox.dq.s
    public void ia(long j) throws IOException {
        if (this.ox) {
            throw new IllegalStateException("closed");
        }
        while (j > 0) {
            ox oxVar = this.dq;
            if (oxVar.f2161d == 0 && this.f2162d.dq(oxVar, 8192L) == -1) {
                throw new EOFException();
            }
            long min = Math.min(j, this.dq.d());
            this.dq.ia(min);
            j -= min;
        }
    }

    @Override // com.bytedance.sdk.component.ox.dq.s
    public int ig() throws IOException {
        dq(4L);
        return this.dq.ig();
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.ox;
    }

    @Override // com.bytedance.sdk.component.ox.dq.s
    public InputStream iw() {
        return new InputStream() { // from class: com.bytedance.sdk.component.ox.dq.q.1
            @Override // java.io.InputStream
            public int available() throws IOException {
                q qVar = q.this;
                if (qVar.ox) {
                    throw new IOException("closed");
                }
                return (int) Math.min(qVar.dq.f2161d, 2147483647L);
            }

            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                q.this.close();
            }

            @Override // java.io.InputStream
            public int read() throws IOException {
                q qVar = q.this;
                if (qVar.ox) {
                    throw new IOException("closed");
                }
                ox oxVar = qVar.dq;
                if (oxVar.f2161d == 0 && qVar.f2162d.dq(oxVar, 8192L) == -1) {
                    return -1;
                }
                return q.this.dq.ia() & 255;
            }

            @Override // java.io.InputStream
            public int read(byte[] bArr, int i, int i2) throws IOException {
                if (q.this.ox) {
                    throw new IOException("closed");
                }
                i.dq(bArr.length, i, i2);
                q qVar = q.this;
                ox oxVar = qVar.dq;
                if (oxVar.f2161d == 0 && qVar.f2162d.dq(oxVar, 8192L) == -1) {
                    return -1;
                }
                return q.this.dq.dq(bArr, i, i2);
            }

            public String toString() {
                return q.this + ".inputStream()";
            }
        };
    }

    @Override // com.bytedance.sdk.component.ox.dq.s
    public short kk() throws IOException {
        dq(2L);
        return this.dq.kk();
    }

    @Override // com.bytedance.sdk.component.ox.dq.s
    public byte[] mn(long j) throws IOException {
        dq(j);
        return this.dq.mn(j);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0032, code lost:
    
        if (r1 == 0) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0049, code lost:
    
        throw new java.lang.NumberFormatException(java.lang.String.format("Expected leading [0-9a-fA-F] character but was %#x", java.lang.Byte.valueOf(r3)));
     */
    @Override // com.bytedance.sdk.component.ox.dq.s
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public long mp() throws IOException {
        dq(1L);
        int i = 0;
        while (true) {
            int i2 = i + 1;
            if (!d(i2)) {
                break;
            }
            byte d2 = this.dq.d(i);
            if ((d2 < 48 || d2 > 57) && ((d2 < 97 || d2 > 102) && (d2 < 65 || d2 > 70))) {
                break;
            }
            i = i2;
        }
        return this.dq.mp();
    }

    @Override // com.bytedance.sdk.component.ox.dq.s
    public short no() throws IOException {
        dq(2L);
        return this.dq.no();
    }

    @Override // com.bytedance.sdk.component.ox.dq.s
    public int o() throws IOException {
        dq(4L);
        return this.dq.o();
    }

    @Override // com.bytedance.sdk.component.ox.dq.s
    public iw ox(long j) throws IOException {
        dq(j);
        return this.dq.ox(j);
    }

    @Override // com.bytedance.sdk.component.ox.dq.s
    public ox ox() {
        return this.dq;
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) throws IOException {
        ox oxVar = this.dq;
        if (oxVar.f2161d == 0 && this.f2162d.dq(oxVar, 8192L) == -1) {
            return -1;
        }
        return this.dq.read(byteBuffer);
    }

    @Override // com.bytedance.sdk.component.ox.dq.s
    public String s(long j) throws IOException {
        if (j < 0) {
            throw new IllegalArgumentException("limit < 0: ".concat(String.valueOf(j)));
        }
        long j2 = j == Long.MAX_VALUE ? Long.MAX_VALUE : j + 1;
        long dq = dq((byte) 10, 0L, j2);
        if (dq != -1) {
            return this.dq.iw(dq);
        }
        if (j2 < Long.MAX_VALUE && d(j2) && this.dq.d(j2 - 1) == 13 && d(1 + j2) && this.dq.d(j2) == 10) {
            return this.dq.iw(j2);
        }
        ox oxVar = new ox();
        ox oxVar2 = this.dq;
        oxVar2.dq(oxVar, 0L, Math.min(32L, oxVar2.d()));
        throw new EOFException("\\n not found: limit=" + Math.min(this.dq.d(), j) + " content=" + oxVar.q().s() + (char) 8230);
    }

    @Override // com.bytedance.sdk.component.ox.dq.s
    public boolean s() throws IOException {
        if (this.ox) {
            throw new IllegalStateException("closed");
        }
        return this.dq.s() && this.f2162d.dq(this.dq, 8192L) == -1;
    }

    public String toString() {
        return "buffer(" + this.f2162d + ")";
    }
}

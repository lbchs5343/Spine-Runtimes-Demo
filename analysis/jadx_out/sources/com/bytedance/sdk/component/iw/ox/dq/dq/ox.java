package com.bytedance.sdk.component.iw.ox.dq.dq;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
class ox implements Closeable {

    /* renamed from: d, reason: collision with root package name */
    private final Charset f1960d;
    private final InputStream dq;
    private byte[] ox;
    private int p;
    private int s;

    public ox(InputStream inputStream, int i, Charset charset) {
        if (inputStream == null || charset == null) {
            throw null;
        }
        if (i < 0) {
            throw new IllegalArgumentException("capacity <= 0");
        }
        if (!charset.equals(p.dq)) {
            throw new IllegalArgumentException("Unsupported encoding");
        }
        this.dq = inputStream;
        this.f1960d = charset;
        this.ox = new byte[i];
    }

    public ox(InputStream inputStream, Charset charset) {
        this(inputStream, 8192, charset);
    }

    private void ox() throws IOException {
        InputStream inputStream = this.dq;
        byte[] bArr = this.ox;
        int read = inputStream.read(bArr, 0, bArr.length);
        if (read == -1) {
            throw new EOFException();
        }
        this.p = 0;
        this.s = read;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        synchronized (this.dq) {
            try {
                if (this.ox != null) {
                    this.ox = null;
                    this.dq.close();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean d() {
        return this.s == -1;
    }

    public String dq() throws IOException {
        int i;
        byte[] bArr;
        int i2;
        synchronized (this.dq) {
            try {
                if (this.ox == null) {
                    throw new IOException("LineReader is closed");
                }
                if (this.p >= this.s) {
                    ox();
                }
                for (int i3 = this.p; i3 != this.s; i3++) {
                    byte[] bArr2 = this.ox;
                    if (bArr2[i3] == 10) {
                        int i4 = this.p;
                        if (i3 != i4) {
                            i2 = i3 - 1;
                            if (bArr2[i2] == 13) {
                                String str = new String(bArr2, i4, i2 - i4, this.f1960d.name());
                                this.p = i3 + 1;
                                return str;
                            }
                        }
                        i2 = i3;
                        String str2 = new String(bArr2, i4, i2 - i4, this.f1960d.name());
                        this.p = i3 + 1;
                        return str2;
                    }
                }
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream((this.s - this.p) + 80) { // from class: com.bytedance.sdk.component.iw.ox.dq.dq.ox.1
                    @Override // java.io.ByteArrayOutputStream
                    public String toString() {
                        int i5 = ((ByteArrayOutputStream) this).count;
                        if (i5 > 0 && ((ByteArrayOutputStream) this).buf[i5 - 1] == 13) {
                            i5--;
                        }
                        try {
                            return new String(((ByteArrayOutputStream) this).buf, 0, i5, ox.this.f1960d.name());
                        } catch (UnsupportedEncodingException e2) {
                            throw new AssertionError(e2);
                        }
                    }
                };
                loop1: while (true) {
                    byte[] bArr3 = this.ox;
                    int i5 = this.p;
                    byteArrayOutputStream.write(bArr3, i5, this.s - i5);
                    this.s = -1;
                    ox();
                    i = this.p;
                    while (i != this.s) {
                        bArr = this.ox;
                        if (bArr[i] == 10) {
                            break loop1;
                        }
                        i++;
                    }
                }
                int i6 = this.p;
                if (i != i6) {
                    byteArrayOutputStream.write(bArr, i6, i - i6);
                }
                this.p = i + 1;
                return byteArrayOutputStream.toString();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

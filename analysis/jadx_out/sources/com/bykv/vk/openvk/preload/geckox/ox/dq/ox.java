package com.bykv.vk.openvk.preload.geckox.ox.dq;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
final class ox implements com.bykv.vk.openvk.preload.geckox.ox.dq {

    /* renamed from: d, reason: collision with root package name */
    private long f667d;
    private long dq;
    private RandomAccessFile ox;
    private AtomicBoolean p = new AtomicBoolean(false);
    private File s;

    public ox(long j, File file) throws IOException {
        this.dq = j;
        this.s = file;
        file.getParentFile().mkdirs();
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
            this.ox = randomAccessFile;
            randomAccessFile.setLength(j);
        } catch (Exception e2) {
            com.bykv.vk.openvk.preload.geckox.utils.dq.dq(this.ox);
            throw new IOException("create raf swap failed! path: " + file.getAbsolutePath() + " caused by: " + e2.getMessage(), e2);
        }
    }

    @Override // com.bykv.vk.openvk.preload.geckox.ox.dq
    public final int d(byte[] bArr) throws IOException {
        return d(bArr, 0, bArr.length);
    }

    @Override // com.bykv.vk.openvk.preload.geckox.ox.dq
    public final int d(byte[] bArr, int i, int i2) throws IOException {
        if (this.p.get()) {
            throw new IOException("released!");
        }
        if (bArr == null || i2 <= 0 || i < 0 || i >= bArr.length) {
            return 0;
        }
        if (i + i2 > bArr.length) {
            i2 = bArr.length - i;
        }
        synchronized (this) {
            try {
                long j = this.f667d;
                long j2 = this.dq;
                if (j == j2) {
                    return -1;
                }
                if (i2 + j > j2) {
                    i2 = (int) (j2 - j);
                }
                int read = this.ox.read(bArr, i, i2);
                if (read == -1) {
                    return -1;
                }
                this.f667d += read;
                return read;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.bykv.vk.openvk.preload.geckox.ox.dq
    public final long d() {
        return this.dq;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0014, code lost:
    
        if (r4 > r0) goto L6;
     */
    @Override // com.bykv.vk.openvk.preload.geckox.ox.dq
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void d(long j) throws IOException {
        if (this.p.get()) {
            throw new IOException("released!");
        }
        long j2 = 0;
        if (j >= 0) {
            j2 = this.dq;
        }
        j = j2;
        this.f667d = j;
        this.ox.seek(j);
    }

    @Override // com.bykv.vk.openvk.preload.geckox.ox.dq
    public final int dq(byte[] bArr, int i, int i2) throws IOException {
        if (this.p.get()) {
            throw new IOException("released!");
        }
        if (bArr == null || bArr.length == 0 || i2 <= 0 || i < 0 || i >= bArr.length) {
            return 0;
        }
        if (i + i2 > bArr.length) {
            i2 = bArr.length - i;
        }
        synchronized (this) {
            try {
                long j = this.f667d;
                long j2 = this.dq;
                if (j == j2) {
                    return 0;
                }
                if (i2 + j > j2) {
                    i2 = (int) (j2 - j);
                }
                this.ox.write(bArr, i, i2);
                this.f667d += i2;
                return i2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.bykv.vk.openvk.preload.geckox.ox.dq
    public final synchronized long dq(long j) throws IOException {
        int skipBytes;
        if (this.p.get()) {
            throw new IOException("released!");
        }
        int i = (int) j;
        if (i != j) {
            throw new IOException("too large:".concat(String.valueOf(j)));
        }
        skipBytes = this.ox.skipBytes(i);
        this.f667d = this.ox.getFilePointer();
        return skipBytes;
    }

    @Override // com.bykv.vk.openvk.preload.geckox.ox.dq
    public final void dq() throws IOException {
        if (this.p.get()) {
            throw new IOException("released!");
        }
    }

    @Override // com.bykv.vk.openvk.preload.geckox.ox.dq
    public final void dq(int i) throws IOException {
        dq(new byte[]{(byte) i});
    }

    @Override // com.bykv.vk.openvk.preload.geckox.ox.dq
    public final void dq(byte[] bArr) throws IOException {
        dq(bArr, 0, bArr.length);
    }

    @Override // com.bykv.vk.openvk.preload.geckox.ox.dq
    public final File iw() {
        return this.s;
    }

    @Override // com.bykv.vk.openvk.preload.geckox.ox.dq
    public final long ox() throws IOException {
        if (this.p.get()) {
            throw new IOException("released!");
        }
        return this.f667d;
    }

    @Override // com.bykv.vk.openvk.preload.geckox.ox.dq
    public final int p() throws IOException {
        byte[] bArr = new byte[1];
        if (d(bArr) == 0) {
            return -1;
        }
        return bArr[0];
    }

    @Override // com.bykv.vk.openvk.preload.geckox.ox.dq
    public final void s() {
        if (this.p.getAndSet(true)) {
            return;
        }
        com.bykv.vk.openvk.preload.geckox.utils.dq.dq(this.ox);
    }
}

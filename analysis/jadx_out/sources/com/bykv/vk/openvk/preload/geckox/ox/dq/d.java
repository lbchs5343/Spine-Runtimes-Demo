package com.bykv.vk.openvk.preload.geckox.ox.dq;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
final class d implements com.bykv.vk.openvk.preload.geckox.ox.dq {

    /* renamed from: d, reason: collision with root package name */
    private AtomicBoolean f666d = new AtomicBoolean(false);
    private RandomAccessFile dq;
    private File ox;

    public d(File file) throws IOException {
        this.ox = file;
        file.getParentFile().mkdirs();
        try {
            this.dq = new RandomAccessFile(file, "rw");
        } catch (Exception e2) {
            com.bykv.vk.openvk.preload.geckox.utils.dq.dq(this.dq);
            throw new IOException("create raf mSwap failed! path: " + file.getAbsolutePath() + " caused by: " + e2.getMessage(), e2);
        }
    }

    @Override // com.bykv.vk.openvk.preload.geckox.ox.dq
    public final int d(byte[] bArr) throws IOException {
        return d(bArr, 0, bArr.length);
    }

    @Override // com.bykv.vk.openvk.preload.geckox.ox.dq
    public final int d(byte[] bArr, int i, int i2) throws IOException {
        int read;
        if (this.f666d.get()) {
            throw new IOException("released!");
        }
        if (bArr == null || i2 <= 0 || i < 0 || i >= bArr.length) {
            return 0;
        }
        if (i + i2 > bArr.length) {
            i2 = bArr.length - i;
        }
        synchronized (this) {
            read = this.dq.read(bArr, i, i2);
        }
        return read;
    }

    @Override // com.bykv.vk.openvk.preload.geckox.ox.dq
    public final long d() throws IOException {
        return this.dq.length();
    }

    @Override // com.bykv.vk.openvk.preload.geckox.ox.dq
    public final void d(long j) throws IOException {
        if (this.f666d.get()) {
            throw new IOException("released!");
        }
        if (j < 0) {
            j = 0;
        }
        this.dq.seek(j);
    }

    @Override // com.bykv.vk.openvk.preload.geckox.ox.dq
    public final int dq(byte[] bArr, int i, int i2) throws IOException {
        if (this.f666d.get()) {
            throw new IOException("released!");
        }
        if (bArr == null || bArr.length == 0 || i2 <= 0 || i < 0 || i >= bArr.length) {
            return 0;
        }
        if (i + i2 > bArr.length) {
            i2 = bArr.length - i;
        }
        synchronized (this) {
            this.dq.write(bArr, i, i2);
        }
        return i2;
    }

    @Override // com.bykv.vk.openvk.preload.geckox.ox.dq
    public final synchronized long dq(long j) throws IOException {
        if (this.f666d.get()) {
            throw new IOException("released!");
        }
        if (((int) j) != j) {
            throw new IOException("too large:".concat(String.valueOf(j)));
        }
        return this.dq.skipBytes(r0);
    }

    @Override // com.bykv.vk.openvk.preload.geckox.ox.dq
    public final void dq() throws IOException {
        if (this.f666d.get()) {
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
        return this.ox;
    }

    @Override // com.bykv.vk.openvk.preload.geckox.ox.dq
    public final long ox() throws IOException {
        if (this.f666d.get()) {
            throw new IOException("released!");
        }
        return this.dq.getFilePointer();
    }

    @Override // com.bykv.vk.openvk.preload.geckox.ox.dq
    public final int p() throws IOException {
        byte[] bArr = new byte[1];
        if (d(bArr) <= 0) {
            return -1;
        }
        return bArr[0];
    }

    @Override // com.bykv.vk.openvk.preload.geckox.ox.dq
    public final void s() {
        if (this.f666d.getAndSet(true)) {
            return;
        }
        com.bykv.vk.openvk.preload.geckox.utils.dq.dq(this.dq);
    }
}

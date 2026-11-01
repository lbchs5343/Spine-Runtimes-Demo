package com.bykv.vk.openvk.preload.geckox.ox.d;

import java.io.IOException;

/* loaded from: classes.dex */
public class dq extends ox {
    private com.bykv.vk.openvk.preload.geckox.ox.dq dq;

    public dq(com.bykv.vk.openvk.preload.geckox.ox.dq dqVar) {
        this.dq = dqVar;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        flush();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        this.dq.dq(i);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        this.dq.dq(bArr);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        this.dq.dq(bArr, i, i2);
    }
}

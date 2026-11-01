package com.bykv.vk.openvk.preload.geckox.ox.d;

import g.he;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public final class d extends InputStream {

    /* renamed from: d, reason: collision with root package name */
    private long f665d;
    private com.bykv.vk.openvk.preload.geckox.ox.dq dq;

    public d(com.bykv.vk.openvk.preload.geckox.ox.dq dqVar) {
        this.dq = dqVar;
    }

    @Override // java.io.InputStream
    public final int available() throws IOException {
        long d2 = this.dq.d() - this.dq.ox();
        return d2 > 2147483647L ? he.UNDEFINED_ITEM_ID : (int) d2;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
    }

    @Override // java.io.InputStream
    public final synchronized void mark(int i) {
        this.f665d = i;
    }

    @Override // java.io.InputStream
    public final boolean markSupported() {
        return true;
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        return this.dq.p();
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) throws IOException {
        return this.dq.d(bArr);
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        return this.dq.d(bArr, i, i2);
    }

    @Override // java.io.InputStream
    public final synchronized void reset() throws IOException {
        this.dq.d(this.f665d);
    }

    @Override // java.io.InputStream
    public final long skip(long j) throws IOException {
        return this.dq.dq(j);
    }
}

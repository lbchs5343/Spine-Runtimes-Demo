package com.bytedance.sdk.component.ox.dq;

import java.io.IOException;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
final class mp implements p {

    /* renamed from: d, reason: collision with root package name */
    public final cd f2158d;
    public final ox dq = new ox();
    boolean ox;

    public mp(cd cdVar) {
        if (cdVar == null) {
            throw new NullPointerException("sink == null");
        }
        this.f2158d = cdVar;
    }

    @Override // com.bytedance.sdk.component.ox.dq.cd
    public void a_(ox oxVar, long j) throws IOException {
        if (this.ox) {
            throw new IllegalStateException("closed");
        }
        this.dq.a_(oxVar, j);
        i();
    }

    @Override // com.bytedance.sdk.component.ox.dq.cd, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.ox) {
            return;
        }
        try {
            ox oxVar = this.dq;
            long j = oxVar.f2161d;
            if (j > 0) {
                this.f2158d.a_(oxVar, j);
            }
            th = null;
        } catch (Throwable th) {
            th = th;
        }
        try {
            this.f2158d.close();
        } catch (Throwable th2) {
            if (th == null) {
                th = th2;
            }
        }
        this.ox = true;
        if (th != null) {
            i.dq(th);
        }
    }

    @Override // com.bytedance.sdk.component.ox.dq.p
    public p d(iw iwVar) throws IOException {
        if (this.ox) {
            throw new IllegalStateException("closed");
        }
        this.dq.d(iwVar);
        return i();
    }

    @Override // com.bytedance.sdk.component.ox.dq.p
    public p d(String str) throws IOException {
        if (this.ox) {
            throw new IllegalStateException("closed");
        }
        this.dq.d(str);
        return i();
    }

    @Override // com.bytedance.sdk.component.ox.dq.cd
    public r dq() {
        return this.f2158d.dq();
    }

    @Override // com.bytedance.sdk.component.ox.dq.p, com.bytedance.sdk.component.ox.dq.cd, java.io.Flushable
    public void flush() throws IOException {
        if (this.ox) {
            throw new IllegalStateException("closed");
        }
        ox oxVar = this.dq;
        long j = oxVar.f2161d;
        if (j > 0) {
            this.f2158d.a_(oxVar, j);
        }
        this.f2158d.flush();
    }

    @Override // com.bytedance.sdk.component.ox.dq.p
    public p i() throws IOException {
        if (this.ox) {
            throw new IllegalStateException("closed");
        }
        long mn = this.dq.mn();
        if (mn > 0) {
            this.f2158d.a_(this.dq, mn);
        }
        return this;
    }

    @Override // com.bytedance.sdk.component.ox.dq.p
    public p ia(int i) throws IOException {
        if (this.ox) {
            throw new IllegalStateException("closed");
        }
        this.dq.ia(i);
        return i();
    }

    @Override // com.bytedance.sdk.component.ox.dq.p
    public p ig(long j) throws IOException {
        if (this.ox) {
            throw new IllegalStateException("closed");
        }
        this.dq.ig(j);
        return i();
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.ox;
    }

    @Override // com.bytedance.sdk.component.ox.dq.p
    public p kk(int i) throws IOException {
        if (this.ox) {
            throw new IllegalStateException("closed");
        }
        this.dq.kk(i);
        return i();
    }

    @Override // com.bytedance.sdk.component.ox.dq.p
    public p mn(int i) throws IOException {
        if (this.ox) {
            throw new IllegalStateException("closed");
        }
        this.dq.mn(i);
        return i();
    }

    @Override // com.bytedance.sdk.component.ox.dq.p
    public p no(long j) throws IOException {
        if (this.ox) {
            throw new IllegalStateException("closed");
        }
        this.dq.no(j);
        return i();
    }

    @Override // com.bytedance.sdk.component.ox.dq.p
    public ox ox() {
        return this.dq;
    }

    @Override // com.bytedance.sdk.component.ox.dq.p
    public p ox(byte[] bArr) throws IOException {
        if (this.ox) {
            throw new IllegalStateException("closed");
        }
        this.dq.ox(bArr);
        return i();
    }

    @Override // com.bytedance.sdk.component.ox.dq.p
    public p ox(byte[] bArr, int i, int i2) throws IOException {
        if (this.ox) {
            throw new IllegalStateException("closed");
        }
        this.dq.ox(bArr, i, i2);
        return i();
    }

    public String toString() {
        return "buffer(" + this.f2158d + ")";
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) throws IOException {
        if (this.ox) {
            throw new IllegalStateException("closed");
        }
        int write = this.dq.write(byteBuffer);
        i();
        return write;
    }
}

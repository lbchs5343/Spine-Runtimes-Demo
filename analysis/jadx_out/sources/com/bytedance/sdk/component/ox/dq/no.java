package com.bytedance.sdk.component.ox.dq;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

/* loaded from: classes.dex */
public final class no implements gh {

    /* renamed from: d, reason: collision with root package name */
    private final Inflater f2159d;
    private final s dq;
    private int ox;
    private boolean p;

    public no(s sVar, Inflater inflater) {
        if (sVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        if (inflater == null) {
            throw new IllegalArgumentException("inflater == null");
        }
        this.dq = sVar;
        this.f2159d = inflater;
    }

    private void ox() throws IOException {
        int i = this.ox;
        if (i == 0) {
            return;
        }
        int remaining = i - this.f2159d.getRemaining();
        this.ox -= remaining;
        this.dq.ia(remaining);
    }

    @Override // com.bytedance.sdk.component.ox.dq.gh, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.p) {
            return;
        }
        this.f2159d.end();
        this.p = true;
        this.dq.close();
    }

    public final boolean d() throws IOException {
        if (!this.f2159d.needsInput()) {
            return false;
        }
        ox();
        if (this.f2159d.getRemaining() != 0) {
            throw new IllegalStateException("?");
        }
        if (this.dq.s()) {
            return true;
        }
        jy jyVar = this.dq.ox().dq;
        int i = jyVar.ox;
        int i2 = jyVar.f2157d;
        int i3 = i - i2;
        this.ox = i3;
        this.f2159d.setInput(jyVar.dq, i2, i3);
        return false;
    }

    @Override // com.bytedance.sdk.component.ox.dq.gh
    public long dq(ox oxVar, long j) throws IOException {
        boolean d2;
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j)));
        }
        if (this.p) {
            throw new IllegalStateException("closed");
        }
        if (j == 0) {
            return 0L;
        }
        do {
            d2 = d();
            try {
                jy s = oxVar.s(1);
                int inflate = this.f2159d.inflate(s.dq, s.ox, (int) Math.min(j, 8192 - s.ox));
                if (inflate > 0) {
                    s.ox += inflate;
                    long j2 = inflate;
                    oxVar.f2161d += j2;
                    return j2;
                }
                if (!this.f2159d.finished() && !this.f2159d.needsDictionary()) {
                }
                ox();
                if (s.f2157d != s.ox) {
                    return -1L;
                }
                oxVar.dq = s.d();
                f.dq(s);
                return -1L;
            } catch (DataFormatException e2) {
                throw new IOException(e2);
            }
        } while (!d2);
        throw new EOFException("source exhausted prematurely");
    }

    @Override // com.bytedance.sdk.component.ox.dq.gh
    public r dq() {
        return this.dq.dq();
    }
}

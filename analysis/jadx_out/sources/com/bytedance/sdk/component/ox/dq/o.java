package com.bytedance.sdk.component.ox.dq;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.Inflater;

/* loaded from: classes.dex */
public final class o implements gh {

    /* renamed from: d, reason: collision with root package name */
    private final s f2160d;
    private final Inflater ox;
    private final no p;
    private int dq = 0;
    private final CRC32 s = new CRC32();

    public o(gh ghVar) {
        if (ghVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        Inflater inflater = new Inflater(true);
        this.ox = inflater;
        s dq = ig.dq(ghVar);
        this.f2160d = dq;
        this.p = new no(dq, inflater);
    }

    private void d() throws IOException {
        this.f2160d.dq(10L);
        byte d2 = this.f2160d.ox().d(3L);
        boolean z = ((d2 >> 1) & 1) == 1;
        if (z) {
            dq(this.f2160d.ox(), 0L, 10L);
        }
        dq("ID1ID2", 8075, this.f2160d.kk());
        this.f2160d.ia(8L);
        if (((d2 >> 2) & 1) == 1) {
            this.f2160d.dq(2L);
            if (z) {
                dq(this.f2160d.ox(), 0L, 2L);
            }
            long no = this.f2160d.ox().no();
            this.f2160d.dq(no);
            if (z) {
                dq(this.f2160d.ox(), 0L, no);
            }
            this.f2160d.ia(no);
        }
        if (((d2 >> 3) & 1) == 1) {
            long dq = this.f2160d.dq((byte) 0);
            if (dq == -1) {
                throw new EOFException();
            }
            if (z) {
                dq(this.f2160d.ox(), 0L, dq + 1);
            }
            this.f2160d.ia(dq + 1);
        }
        if (((d2 >> 4) & 1) == 1) {
            long dq2 = this.f2160d.dq((byte) 0);
            if (dq2 == -1) {
                throw new EOFException();
            }
            if (z) {
                dq(this.f2160d.ox(), 0L, dq2 + 1);
            }
            this.f2160d.ia(dq2 + 1);
        }
        if (z) {
            dq("FHCRC", this.f2160d.no(), (short) this.s.getValue());
            this.s.reset();
        }
    }

    private void dq(ox oxVar, long j, long j2) {
        jy jyVar = oxVar.dq;
        while (true) {
            int i = jyVar.ox;
            int i2 = jyVar.f2157d;
            if (j < i - i2) {
                break;
            }
            j -= i - i2;
            jyVar = jyVar.iw;
        }
        while (j2 > 0) {
            int min = (int) Math.min(jyVar.ox - r7, j2);
            this.s.update(jyVar.dq, (int) (jyVar.f2157d + j), min);
            j2 -= min;
            jyVar = jyVar.iw;
            j = 0;
        }
    }

    private void dq(String str, int i, int i2) throws IOException {
        if (i2 != i) {
            throw new IOException(String.format("%s: actual 0x%08x != expected 0x%08x", str, Integer.valueOf(i2), Integer.valueOf(i)));
        }
    }

    private void ox() throws IOException {
        dq("CRC", this.f2160d.ig(), (int) this.s.getValue());
        dq("ISIZE", this.f2160d.ig(), (int) this.ox.getBytesWritten());
    }

    @Override // com.bytedance.sdk.component.ox.dq.gh, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.p.close();
    }

    @Override // com.bytedance.sdk.component.ox.dq.gh
    public long dq(ox oxVar, long j) throws IOException {
        o oVar;
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j)));
        }
        if (j == 0) {
            return 0L;
        }
        if (this.dq == 0) {
            d();
            this.dq = 1;
        }
        if (this.dq == 1) {
            long j2 = oxVar.f2161d;
            long dq = this.p.dq(oxVar, j);
            if (dq != -1) {
                dq(oxVar, j2, dq);
                return dq;
            }
            oVar = this;
            oVar.dq = 2;
        } else {
            oVar = this;
        }
        if (oVar.dq == 2) {
            ox();
            oVar.dq = 3;
            if (!oVar.f2160d.s()) {
                throw new IOException("gzip finished without exhausting source");
            }
        }
        return -1L;
    }

    @Override // com.bytedance.sdk.component.ox.dq.gh
    public r dq() {
        return this.f2160d.dq();
    }
}

package com.bytedance.sdk.component.ox.d;

import g.awf;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
public abstract class n implements Closeable {
    public static n dq(final i iVar, final long j, final com.bytedance.sdk.component.ox.dq.s sVar) {
        if (sVar != null) {
            return new n() { // from class: com.bytedance.sdk.component.ox.d.n.1
                @Override // com.bytedance.sdk.component.ox.d.n
                public long d() {
                    return j;
                }

                @Override // com.bytedance.sdk.component.ox.d.n
                public i dq() {
                    return i.this;
                }

                @Override // com.bytedance.sdk.component.ox.d.n
                public com.bytedance.sdk.component.ox.dq.s ox() {
                    return sVar;
                }
            };
        }
        throw new NullPointerException("source == null");
    }

    public static n dq(i iVar, byte[] bArr) {
        return dq(iVar, bArr.length, new com.bytedance.sdk.component.ox.dq.ox().ox(bArr));
    }

    private Charset mn() {
        i dq = dq();
        return dq != null ? dq.dq(com.bytedance.sdk.component.ox.d.dq.ox.s) : com.bytedance.sdk.component.ox.d.dq.ox.s;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        com.bytedance.sdk.component.ox.d.dq.ox.dq(ox());
    }

    public abstract long d();

    public abstract i dq();

    public final String iw() throws IOException {
        com.bytedance.sdk.component.ox.dq.s ox = ox();
        try {
            String dq = ox.dq(com.bytedance.sdk.component.ox.d.dq.ox.dq(ox, mn()));
            com.bytedance.sdk.component.ox.d.dq.ox.dq(ox);
            return dq;
        } catch (OutOfMemoryError unused) {
            com.bytedance.sdk.component.ox.d.dq.ox.dq(ox);
            return null;
        } catch (Throwable th) {
            com.bytedance.sdk.component.ox.d.dq.ox.dq(ox);
            throw th;
        }
    }

    public abstract com.bytedance.sdk.component.ox.dq.s ox();

    public final InputStream p() {
        return ox().iw();
    }

    public final byte[] s() throws IOException {
        long d2 = d();
        if (d2 > 2147483647L) {
            throw new IOException("Cannot buffer entire body for content length: ".concat(String.valueOf(d2)));
        }
        com.bytedance.sdk.component.ox.dq.s ox = ox();
        try {
            byte[] fw = ox.fw();
            com.bytedance.sdk.component.ox.d.dq.ox.dq(ox);
            if (d2 == -1 || d2 == fw.length) {
                return fw;
            }
            throw new IOException(awf.x(awf.l(d2, "Content-Length (", ") and stream length ("), fw.length, ") disagree"));
        } catch (Throwable th) {
            com.bytedance.sdk.component.ox.d.dq.ox.dq(ox);
            throw th;
        }
    }
}

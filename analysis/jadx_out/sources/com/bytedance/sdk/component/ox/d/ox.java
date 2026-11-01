package com.bytedance.sdk.component.ox.d;

import com.bytedance.sdk.component.ox.d.dq.dq.p;
import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.util.List;

/* loaded from: classes.dex */
public final class ox implements Closeable, Flushable {

    /* renamed from: d, reason: collision with root package name */
    final com.bytedance.sdk.component.ox.d.dq.dq.p f2141d;
    final com.bytedance.sdk.component.ox.d.dq.dq.iw dq;

    public static final class d {
        private final String ia;
        private final long ig;
        private final wp iw;
        private final cd kk;
        private final int mn;
        private final long no;
        private final fw o;
        private final String ox;
        private final cd p;
        private final String s;
        private static final String dq = com.bytedance.sdk.component.ox.d.dq.mn.s.d().ox() + "-Sent-Millis";

        /* renamed from: d, reason: collision with root package name */
        private static final String f2142d = com.bytedance.sdk.component.ox.d.dq.mn.s.d().ox() + "-Received-Millis";

        public d(bl blVar) {
            this.ox = blVar.dq().dq().toString();
            this.p = com.bytedance.sdk.component.ox.d.dq.ox.s.d(blVar);
            this.s = blVar.dq().d();
            this.iw = blVar.d();
            this.mn = blVar.ox();
            this.ia = blVar.s();
            this.kk = blVar.mn();
            this.o = blVar.iw();
            this.no = blVar.mp();
            this.ig = blVar.q();
        }

        private void dq(com.bytedance.sdk.component.ox.dq.p pVar, List<Certificate> list) throws IOException {
            try {
                pVar.ig(list.size()).kk(10);
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    pVar.d(com.bytedance.sdk.component.ox.dq.iw.dq(list.get(i).getEncoded()).d()).kk(10);
                }
            } catch (CertificateEncodingException e2) {
                throw new IOException(e2.getMessage());
            }
        }

        private boolean dq() {
            return this.ox.startsWith("https://");
        }

        public void dq(p.dq dqVar) throws IOException {
            com.bytedance.sdk.component.ox.dq.p dq2 = com.bytedance.sdk.component.ox.dq.ig.dq(dqVar.dq(0));
            dq2.d(this.ox).kk(10);
            dq2.d(this.s).kk(10);
            dq2.ig(this.p.dq()).kk(10);
            int dq3 = this.p.dq();
            for (int i = 0; i < dq3; i++) {
                dq2.d(this.p.dq(i)).d(": ").d(this.p.d(i)).kk(10);
            }
            dq2.d(new com.bytedance.sdk.component.ox.d.dq.ox.no(this.iw, this.mn, this.ia).toString()).kk(10);
            dq2.ig(this.kk.dq() + 2).kk(10);
            int dq4 = this.kk.dq();
            for (int i2 = 0; i2 < dq4; i2++) {
                dq2.d(this.kk.dq(i2)).d(": ").d(this.kk.d(i2)).kk(10);
            }
            dq2.d(dq).d(": ").ig(this.no).kk(10);
            dq2.d(f2142d).d(": ").ig(this.ig).kk(10);
            if (dq()) {
                dq2.kk(10);
                dq2.d(this.o.d().dq()).kk(10);
                dq(dq2, this.o.ox());
                dq(dq2, this.o.p());
                dq2.d(this.o.dq().dq()).kk(10);
            }
            dq2.close();
        }
    }

    public static class dq extends n {

        /* renamed from: d, reason: collision with root package name */
        private final com.bytedance.sdk.component.ox.dq.s f2143d;
        final p.ox dq;
        private final String ox;
        private final String p;

        @Override // com.bytedance.sdk.component.ox.d.n
        public long d() {
            try {
                String str = this.p;
                if (str != null) {
                    return Long.parseLong(str);
                }
                return -1L;
            } catch (NumberFormatException unused) {
                return -1L;
            }
        }

        @Override // com.bytedance.sdk.component.ox.d.n
        public i dq() {
            String str = this.ox;
            if (str != null) {
                return i.dq(str);
            }
            return null;
        }

        @Override // com.bytedance.sdk.component.ox.d.n
        public com.bytedance.sdk.component.ox.dq.s ox() {
            return this.f2143d;
        }
    }

    private void dq(p.dq dqVar) {
        if (dqVar != null) {
            try {
                dqVar.ox();
            } catch (IOException unused) {
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f2141d.close();
    }

    public void delete() throws IOException {
        this.f2141d.delete();
    }

    @Override // java.io.Flushable
    public void flush() throws IOException {
        this.f2141d.flush();
    }

    public void update(bl blVar, bl blVar2) {
        p.dq dqVar;
        d dVar = new d(blVar2);
        try {
            dqVar = ((dq) blVar.ia()).dq.dq();
            if (dqVar != null) {
                try {
                    dVar.dq(dqVar);
                    dqVar.d();
                } catch (IOException unused) {
                    dq(dqVar);
                }
            }
        } catch (IOException unused2) {
            dqVar = null;
        }
    }
}

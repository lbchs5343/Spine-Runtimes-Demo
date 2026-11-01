package com.bytedance.sdk.component.ox.d.dq.p;

import com.bytedance.sdk.component.ox.d.bl;
import com.bytedance.sdk.component.ox.d.cd;
import com.bytedance.sdk.component.ox.d.dq.d.mn;
import com.bytedance.sdk.component.ox.d.dq.ox.ia;
import com.bytedance.sdk.component.ox.d.dq.ox.no;
import com.bytedance.sdk.component.ox.d.k;
import com.bytedance.sdk.component.ox.d.kx;
import com.bytedance.sdk.component.ox.d.n;
import com.bytedance.sdk.component.ox.dq.cd;
import com.bytedance.sdk.component.ox.dq.gh;
import com.bytedance.sdk.component.ox.dq.ig;
import com.bytedance.sdk.component.ox.dq.kk;
import com.bytedance.sdk.component.ox.dq.r;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class dq implements com.bytedance.sdk.component.ox.d.dq.ox.ox {

    /* renamed from: d, reason: collision with root package name */
    final mn f2080d;
    final k dq;
    final com.bytedance.sdk.component.ox.dq.s ox;
    final com.bytedance.sdk.component.ox.dq.p p;
    int s = 0;
    private long iw = 262144;

    public final class d implements cd {

        /* renamed from: d, reason: collision with root package name */
        private final kk f2081d;
        private boolean ox;

        public d() {
            this.f2081d = new kk(dq.this.p.dq());
        }

        @Override // com.bytedance.sdk.component.ox.dq.cd
        public void a_(com.bytedance.sdk.component.ox.dq.ox oxVar, long j) throws IOException {
            if (this.ox) {
                throw new IllegalStateException("closed");
            }
            if (j == 0) {
                return;
            }
            dq.this.p.no(j);
            dq.this.p.d("\r\n");
            dq.this.p.a_(oxVar, j);
            dq.this.p.d("\r\n");
        }

        @Override // com.bytedance.sdk.component.ox.dq.cd, java.io.Closeable, java.lang.AutoCloseable
        public synchronized void close() throws IOException {
            if (this.ox) {
                return;
            }
            this.ox = true;
            dq.this.p.d("0\r\n\r\n");
            dq.this.dq(this.f2081d);
            dq.this.s = 3;
        }

        @Override // com.bytedance.sdk.component.ox.dq.cd
        public r dq() {
            return this.f2081d;
        }

        @Override // com.bytedance.sdk.component.ox.dq.cd, java.io.Flushable
        public synchronized void flush() throws IOException {
            if (this.ox) {
                return;
            }
            dq.this.p.flush();
        }
    }

    /* renamed from: com.bytedance.sdk.component.ox.d.dq.p.dq$dq, reason: collision with other inner class name */
    public abstract class AbstractC0127dq implements gh {

        /* renamed from: d, reason: collision with root package name */
        protected boolean f2082d;
        protected final kk dq;
        protected long ox;

        private AbstractC0127dq() {
            this.dq = new kk(dq.this.ox.dq());
            this.ox = 0L;
        }

        @Override // com.bytedance.sdk.component.ox.dq.gh
        public long dq(com.bytedance.sdk.component.ox.dq.ox oxVar, long j) throws IOException {
            try {
                long dq = dq.this.ox.dq(oxVar, j);
                if (dq <= 0) {
                    return dq;
                }
                this.ox += dq;
                return dq;
            } catch (IOException e2) {
                dq(false, e2);
                throw e2;
            }
        }

        @Override // com.bytedance.sdk.component.ox.dq.gh
        public r dq() {
            return this.dq;
        }

        public final void dq(boolean z, IOException iOException) throws IOException {
            dq dqVar = dq.this;
            int i = dqVar.s;
            if (i == 6) {
                return;
            }
            if (i != 5) {
                throw new IllegalStateException("state: " + dq.this.s);
            }
            dqVar.dq(this.dq);
            dq dqVar2 = dq.this;
            dqVar2.s = 6;
            mn mnVar = dqVar2.f2080d;
            if (mnVar != null) {
                mnVar.dq(!z, dqVar2, this.ox, iOException);
            }
        }
    }

    public class iw extends AbstractC0127dq {
        private boolean iw;

        public iw() {
            super();
        }

        @Override // com.bytedance.sdk.component.ox.dq.gh, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.f2082d) {
                return;
            }
            if (!this.iw) {
                dq(false, (IOException) null);
            }
            this.f2082d = true;
        }

        @Override // com.bytedance.sdk.component.ox.d.dq.p.dq.AbstractC0127dq, com.bytedance.sdk.component.ox.dq.gh
        public long dq(com.bytedance.sdk.component.ox.dq.ox oxVar, long j) throws IOException {
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j)));
            }
            if (this.f2082d) {
                throw new IllegalStateException("closed");
            }
            if (this.iw) {
                return -1L;
            }
            long dq = super.dq(oxVar, j);
            if (dq != -1) {
                return dq;
            }
            this.iw = true;
            dq(true, (IOException) null);
            return -1L;
        }
    }

    public class ox extends AbstractC0127dq {
        private boolean ia;
        private final com.bytedance.sdk.component.ox.d.gh iw;
        private long mn;

        public ox(com.bytedance.sdk.component.ox.d.gh ghVar) {
            super();
            this.mn = -1L;
            this.ia = true;
            this.iw = ghVar;
        }

        private void d() throws IOException {
            if (this.mn != -1) {
                dq.this.ox.f();
            }
            try {
                this.mn = dq.this.ox.mp();
                String trim = dq.this.ox.f().trim();
                if (this.mn < 0 || !(trim.isEmpty() || trim.startsWith(";"))) {
                    throw new ProtocolException("expected chunk size and optional extensions but was \"" + this.mn + trim + "\"");
                }
                if (this.mn == 0) {
                    this.ia = false;
                    com.bytedance.sdk.component.ox.d.dq.ox.s.dq(dq.this.dq.iw(), this.iw, dq.this.p());
                    dq(true, (IOException) null);
                }
            } catch (NumberFormatException e2) {
                throw new ProtocolException(e2.getMessage());
            }
        }

        @Override // com.bytedance.sdk.component.ox.dq.gh, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.f2082d) {
                return;
            }
            if (this.ia && !com.bytedance.sdk.component.ox.d.dq.ox.dq(this, 100, TimeUnit.MILLISECONDS)) {
                dq(false, (IOException) null);
            }
            this.f2082d = true;
        }

        @Override // com.bytedance.sdk.component.ox.d.dq.p.dq.AbstractC0127dq, com.bytedance.sdk.component.ox.dq.gh
        public long dq(com.bytedance.sdk.component.ox.dq.ox oxVar, long j) throws IOException {
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j)));
            }
            if (this.f2082d) {
                throw new IllegalStateException("closed");
            }
            if (!this.ia) {
                return -1L;
            }
            long j2 = this.mn;
            if (j2 == 0 || j2 == -1) {
                d();
                if (!this.ia) {
                    return -1L;
                }
            }
            long dq = super.dq(oxVar, Math.min(j, this.mn));
            if (dq != -1) {
                this.mn -= dq;
                return dq;
            }
            ProtocolException protocolException = new ProtocolException("unexpected end of stream");
            dq(false, (IOException) protocolException);
            throw protocolException;
        }
    }

    public final class p implements cd {

        /* renamed from: d, reason: collision with root package name */
        private final kk f2083d;
        private boolean ox;
        private long p;

        public p(long j) {
            this.f2083d = new kk(dq.this.p.dq());
            this.p = j;
        }

        @Override // com.bytedance.sdk.component.ox.dq.cd
        public void a_(com.bytedance.sdk.component.ox.dq.ox oxVar, long j) throws IOException {
            if (this.ox) {
                throw new IllegalStateException("closed");
            }
            com.bytedance.sdk.component.ox.d.dq.ox.dq(oxVar.d(), 0L, j);
            if (j <= this.p) {
                dq.this.p.a_(oxVar, j);
                this.p -= j;
            } else {
                throw new ProtocolException("expected " + this.p + " bytes but received " + j);
            }
        }

        @Override // com.bytedance.sdk.component.ox.dq.cd, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.ox) {
                return;
            }
            this.ox = true;
            if (this.p > 0) {
                throw new ProtocolException("unexpected end of stream");
            }
            dq.this.dq(this.f2083d);
            dq.this.s = 3;
        }

        @Override // com.bytedance.sdk.component.ox.dq.cd
        public r dq() {
            return this.f2083d;
        }

        @Override // com.bytedance.sdk.component.ox.dq.cd, java.io.Flushable
        public void flush() throws IOException {
            if (this.ox) {
                return;
            }
            dq.this.p.flush();
        }
    }

    public class s extends AbstractC0127dq {
        private long iw;

        public s(long j) throws IOException {
            super();
            this.iw = j;
            if (j == 0) {
                dq(true, (IOException) null);
            }
        }

        @Override // com.bytedance.sdk.component.ox.dq.gh, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.f2082d) {
                return;
            }
            if (this.iw != 0 && !com.bytedance.sdk.component.ox.d.dq.ox.dq(this, 100, TimeUnit.MILLISECONDS)) {
                dq(false, (IOException) null);
            }
            this.f2082d = true;
        }

        @Override // com.bytedance.sdk.component.ox.d.dq.p.dq.AbstractC0127dq, com.bytedance.sdk.component.ox.dq.gh
        public long dq(com.bytedance.sdk.component.ox.dq.ox oxVar, long j) throws IOException {
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j)));
            }
            if (this.f2082d) {
                throw new IllegalStateException("closed");
            }
            long j2 = this.iw;
            if (j2 == 0) {
                return -1L;
            }
            long dq = super.dq(oxVar, Math.min(j2, j));
            if (dq == -1) {
                ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                dq(false, (IOException) protocolException);
                throw protocolException;
            }
            long j3 = this.iw - dq;
            this.iw = j3;
            if (j3 == 0) {
                dq(true, (IOException) null);
            }
            return dq;
        }
    }

    public dq(k kVar, mn mnVar, com.bytedance.sdk.component.ox.dq.s sVar, com.bytedance.sdk.component.ox.dq.p pVar) {
        this.dq = kVar;
        this.f2080d = mnVar;
        this.ox = sVar;
        this.p = pVar;
    }

    private String mn() throws IOException {
        String s2 = this.ox.s(this.iw);
        this.iw -= s2.length();
        return s2;
    }

    public gh d(long j) throws IOException {
        if (this.s == 4) {
            this.s = 5;
            return new s(j);
        }
        throw new IllegalStateException("state: " + this.s);
    }

    @Override // com.bytedance.sdk.component.ox.d.dq.ox.ox
    public void d() throws IOException {
        this.p.flush();
    }

    @Override // com.bytedance.sdk.component.ox.d.dq.ox.ox
    public bl.dq dq(boolean z) throws IOException {
        int i = this.s;
        if (i != 1 && i != 3) {
            throw new IllegalStateException("state: " + this.s);
        }
        try {
            no dq = no.dq(mn());
            bl.dq dq2 = new bl.dq().dq(dq.dq).dq(dq.f2077d).dq(dq.ox).dq(p());
            if (z && dq.f2077d == 100) {
                return null;
            }
            this.s = 4;
            return dq2;
        } catch (EOFException e2) {
            IOException iOException = new IOException("unexpected end of stream on " + this.f2080d);
            iOException.initCause(e2);
            throw iOException;
        }
    }

    @Override // com.bytedance.sdk.component.ox.d.dq.ox.ox
    public n dq(bl blVar) throws IOException {
        String dq = blVar.dq("Content-Type");
        if (!com.bytedance.sdk.component.ox.d.dq.ox.s.ox(blVar)) {
            return new ia(dq, 0L, ig.dq(d(0L)));
        }
        if ("chunked".equalsIgnoreCase(blVar.dq("Transfer-Encoding"))) {
            return new ia(dq, -1L, ig.dq(dq(blVar.dq().dq())));
        }
        long dq2 = com.bytedance.sdk.component.ox.d.dq.ox.s.dq(blVar);
        return dq2 != -1 ? new ia(dq, dq2, ig.dq(d(dq2))) : new ia(dq, -1L, ig.dq(iw()));
    }

    public cd dq(long j) {
        if (this.s == 1) {
            this.s = 2;
            return new p(j);
        }
        throw new IllegalStateException("state: " + this.s);
    }

    @Override // com.bytedance.sdk.component.ox.d.dq.ox.ox
    public cd dq(kx kxVar, long j) {
        if ("chunked".equalsIgnoreCase(kxVar.dq("Transfer-Encoding"))) {
            return s();
        }
        if (j != -1) {
            return dq(j);
        }
        throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
    }

    public gh dq(com.bytedance.sdk.component.ox.d.gh ghVar) throws IOException {
        if (this.s == 4) {
            this.s = 5;
            return new ox(ghVar);
        }
        throw new IllegalStateException("state: " + this.s);
    }

    @Override // com.bytedance.sdk.component.ox.d.dq.ox.ox
    public void dq() throws IOException {
        this.p.flush();
    }

    public void dq(com.bytedance.sdk.component.ox.d.cd cdVar, String str) throws IOException {
        if (this.s != 0) {
            throw new IllegalStateException("state: " + this.s);
        }
        this.p.d(str).d("\r\n");
        int dq = cdVar.dq();
        for (int i = 0; i < dq; i++) {
            this.p.d(cdVar.dq(i)).d(": ").d(cdVar.d(i)).d("\r\n");
        }
        this.p.d("\r\n");
        this.s = 1;
    }

    @Override // com.bytedance.sdk.component.ox.d.dq.ox.ox
    public void dq(kx kxVar) throws IOException {
        dq(kxVar.ox(), com.bytedance.sdk.component.ox.d.dq.ox.kk.dq(kxVar, this.f2080d.d().dq().d().type()));
    }

    public void dq(kk kkVar) {
        r dq = kkVar.dq();
        kkVar.dq(r.ox);
        dq.iw();
        dq.s();
    }

    public gh iw() throws IOException {
        if (this.s != 4) {
            throw new IllegalStateException("state: " + this.s);
        }
        mn mnVar = this.f2080d;
        if (mnVar == null) {
            throw new IllegalStateException("streamAllocation == null");
        }
        this.s = 5;
        mnVar.p();
        return new iw();
    }

    @Override // com.bytedance.sdk.component.ox.d.dq.ox.ox
    public void ox() {
        com.bytedance.sdk.component.ox.d.dq.d.ox d2 = this.f2080d.d();
        if (d2 != null) {
            d2.d();
        }
    }

    public com.bytedance.sdk.component.ox.d.cd p() throws IOException {
        cd.dq dqVar = new cd.dq();
        while (true) {
            String mn = mn();
            if (mn.length() == 0) {
                return dqVar.dq();
            }
            com.bytedance.sdk.component.ox.d.dq.dq.dq.dq(dqVar, mn);
        }
    }

    public com.bytedance.sdk.component.ox.dq.cd s() {
        if (this.s == 1) {
            this.s = 2;
            return new d();
        }
        throw new IllegalStateException("state: " + this.s);
    }
}

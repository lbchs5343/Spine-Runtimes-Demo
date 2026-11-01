package com.bytedance.sdk.component.ox.d;

import com.bytedance.sdk.component.ox.d.cd;
import g.awf;
import java.io.Closeable;

/* loaded from: classes.dex */
public final class bl implements Closeable {

    /* renamed from: d, reason: collision with root package name */
    final wp f2042d;
    final kx dq;
    final bl ia;
    final long ig;
    final cd iw;
    final bl kk;
    final n mn;
    private volatile p mp;
    final long no;
    final bl o;
    final int ox;
    final String p;
    final fw s;

    public static class dq {

        /* renamed from: d, reason: collision with root package name */
        wp f2043d;
        kx dq;
        bl ia;
        long ig;
        cd.dq iw;
        bl kk;
        n mn;
        long no;
        bl o;
        int ox;
        String p;
        fw s;

        public dq() {
            this.ox = -1;
            this.iw = new cd.dq();
        }

        public dq(bl blVar) {
            this.ox = -1;
            this.dq = blVar.dq;
            this.f2043d = blVar.f2042d;
            this.ox = blVar.ox;
            this.p = blVar.p;
            this.s = blVar.s;
            this.iw = blVar.iw.d();
            this.mn = blVar.mn;
            this.ia = blVar.ia;
            this.kk = blVar.kk;
            this.o = blVar.o;
            this.no = blVar.no;
            this.ig = blVar.ig;
        }

        private void dq(String str, bl blVar) {
            if (blVar.mn != null) {
                throw new IllegalArgumentException(awf.c(str, ".body != null"));
            }
            if (blVar.ia != null) {
                throw new IllegalArgumentException(awf.c(str, ".networkResponse != null"));
            }
            if (blVar.kk != null) {
                throw new IllegalArgumentException(awf.c(str, ".cacheResponse != null"));
            }
            if (blVar.o != null) {
                throw new IllegalArgumentException(awf.c(str, ".priorResponse != null"));
            }
        }

        private void p(bl blVar) {
            if (blVar.mn != null) {
                throw new IllegalArgumentException("priorResponse.body != null");
            }
        }

        public dq d(long j) {
            this.ig = j;
            return this;
        }

        public dq d(bl blVar) {
            if (blVar != null) {
                dq("cacheResponse", blVar);
            }
            this.kk = blVar;
            return this;
        }

        public dq dq(int i) {
            this.ox = i;
            return this;
        }

        public dq dq(long j) {
            this.no = j;
            return this;
        }

        public dq dq(bl blVar) {
            if (blVar != null) {
                dq("networkResponse", blVar);
            }
            this.ia = blVar;
            return this;
        }

        public dq dq(cd cdVar) {
            this.iw = cdVar.d();
            return this;
        }

        public dq dq(fw fwVar) {
            this.s = fwVar;
            return this;
        }

        public dq dq(kx kxVar) {
            this.dq = kxVar;
            return this;
        }

        public dq dq(n nVar) {
            this.mn = nVar;
            return this;
        }

        public dq dq(wp wpVar) {
            this.f2043d = wpVar;
            return this;
        }

        public dq dq(String str) {
            this.p = str;
            return this;
        }

        public dq dq(String str, String str2) {
            this.iw.dq(str, str2);
            return this;
        }

        public bl dq() {
            if (this.dq == null) {
                throw new IllegalStateException("request == null");
            }
            if (this.f2043d == null) {
                throw new IllegalStateException("protocol == null");
            }
            if (this.ox >= 0) {
                if (this.p != null) {
                    return new bl(this);
                }
                throw new IllegalStateException("message == null");
            }
            throw new IllegalStateException("code < 0: " + this.ox);
        }

        public dq ox(bl blVar) {
            if (blVar != null) {
                p(blVar);
            }
            this.o = blVar;
            return this;
        }
    }

    public bl(dq dqVar) {
        this.dq = dqVar.dq;
        this.f2042d = dqVar.f2043d;
        this.ox = dqVar.ox;
        this.p = dqVar.p;
        this.s = dqVar.s;
        this.iw = dqVar.iw.dq();
        this.mn = dqVar.mn;
        this.ia = dqVar.ia;
        this.kk = dqVar.kk;
        this.o = dqVar.o;
        this.no = dqVar.no;
        this.ig = dqVar.ig;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        n nVar = this.mn;
        if (nVar == null) {
            throw new IllegalStateException("response is not eligible for a body and must not be closed");
        }
        nVar.close();
    }

    public wp d() {
        return this.f2042d;
    }

    public kx dq() {
        return this.dq;
    }

    public String dq(String str) {
        return dq(str, null);
    }

    public String dq(String str, String str2) {
        String dq2 = this.iw.dq(str);
        return dq2 != null ? dq2 : str2;
    }

    public n ia() {
        return this.mn;
    }

    public p ig() {
        p pVar = this.mp;
        if (pVar != null) {
            return pVar;
        }
        p dq2 = p.dq(this.iw);
        this.mp = dq2;
        return dq2;
    }

    public fw iw() {
        return this.s;
    }

    public ji jy() {
        kx kxVar = this.dq;
        if (kxVar == null) {
            return null;
        }
        return kxVar.iw;
    }

    public dq kk() {
        return new dq(this);
    }

    public cd mn() {
        return this.iw;
    }

    public long mp() {
        return this.no;
    }

    public bl no() {
        return this.o;
    }

    public bl o() {
        return this.ia;
    }

    public int ox() {
        return this.ox;
    }

    public boolean p() {
        int i = this.ox;
        return i >= 200 && i < 300;
    }

    public long q() {
        return this.ig;
    }

    public String s() {
        return this.p;
    }

    public String toString() {
        return "Response{protocol=" + this.f2042d + ", code=" + this.ox + ", message=" + this.p + ", url=" + this.dq.dq() + '}';
    }
}

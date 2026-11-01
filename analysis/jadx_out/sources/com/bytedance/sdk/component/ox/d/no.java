package com.bytedance.sdk.component.ox.d;

import g.tn;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLSocket;

/* loaded from: classes.dex */
public final class no {

    /* renamed from: d, reason: collision with root package name */
    public static final no f2137d;
    public static final no dq;
    private static final ia[] ia;
    public static final no ox;
    final String[] iw;
    final String[] mn;
    final boolean p;
    final boolean s;

    public static final class dq {

        /* renamed from: d, reason: collision with root package name */
        String[] f2138d;
        boolean dq;
        String[] ox;
        boolean p;

        public dq(no noVar) {
            this.dq = noVar.p;
            this.f2138d = noVar.iw;
            this.ox = noVar.mn;
            this.p = noVar.s;
        }

        public dq(boolean z) {
            this.dq = z;
        }

        public dq d(String... strArr) {
            if (!this.dq) {
                throw new IllegalStateException("no TLS versions for cleartext connections");
            }
            if (strArr.length == 0) {
                throw new IllegalArgumentException("At least one TLS version is required");
            }
            this.ox = (String[]) strArr.clone();
            return this;
        }

        public dq dq(boolean z) {
            if (!this.dq) {
                throw new IllegalStateException("no TLS extensions for cleartext connections");
            }
            this.p = z;
            return this;
        }

        public dq dq(ia... iaVarArr) {
            if (!this.dq) {
                throw new IllegalStateException("no cipher suites for cleartext connections");
            }
            String[] strArr = new String[iaVarArr.length];
            for (int i = 0; i < iaVarArr.length; i++) {
                strArr[i] = iaVarArr[i].kr;
            }
            return dq(strArr);
        }

        public dq dq(ir... irVarArr) {
            if (!this.dq) {
                throw new IllegalStateException("no TLS versions for cleartext connections");
            }
            String[] strArr = new String[irVarArr.length];
            for (int i = 0; i < irVarArr.length; i++) {
                strArr[i] = irVarArr[i].iw;
            }
            return d(strArr);
        }

        public dq dq(String... strArr) {
            if (!this.dq) {
                throw new IllegalStateException("no cipher suites for cleartext connections");
            }
            if (strArr.length == 0) {
                throw new IllegalArgumentException("At least one cipher suite is required");
            }
            this.f2138d = (String[]) strArr.clone();
            return this;
        }

        public no dq() {
            return new no(this);
        }
    }

    static {
        ia[] iaVarArr = {ia.ux, ia.py, ia.en, ia.gl, ia.dn, ia.kf, ia.bx, ia.hy, ia.nt, ia.ip, ia.ij, ia.xi, ia.op, ia.ce, ia.kk};
        ia = iaVarArr;
        dq dq2 = new dq(true).dq(iaVarArr);
        ir irVar = ir.TLS_1_0;
        no dq3 = dq2.dq(ir.TLS_1_3, ir.TLS_1_2, ir.TLS_1_1, irVar).dq(true).dq();
        dq = dq3;
        f2137d = new dq(dq3).dq(irVar).dq(true).dq();
        ox = new dq(false).dq();
    }

    public no(dq dqVar) {
        this.p = dqVar.dq;
        this.iw = dqVar.f2138d;
        this.mn = dqVar.ox;
        this.s = dqVar.p;
    }

    private no d(SSLSocket sSLSocket, boolean z) {
        String[] dq2 = this.iw != null ? com.bytedance.sdk.component.ox.d.dq.ox.dq(ia.dq, sSLSocket.getEnabledCipherSuites(), this.iw) : sSLSocket.getEnabledCipherSuites();
        String[] dq3 = this.mn != null ? com.bytedance.sdk.component.ox.d.dq.ox.dq(com.bytedance.sdk.component.ox.d.dq.ox.ia, sSLSocket.getEnabledProtocols(), this.mn) : sSLSocket.getEnabledProtocols();
        String[] supportedCipherSuites = sSLSocket.getSupportedCipherSuites();
        int dq4 = com.bytedance.sdk.component.ox.d.dq.ox.dq(ia.dq, supportedCipherSuites, "TLS_FALLBACK_SCSV");
        if (z && dq4 != -1) {
            dq2 = com.bytedance.sdk.component.ox.d.dq.ox.dq(dq2, supportedCipherSuites[dq4]);
        }
        return new dq(this).dq(dq2).d(dq3).dq();
    }

    public List<ia> d() {
        String[] strArr = this.iw;
        if (strArr != null) {
            return ia.dq(strArr);
        }
        return null;
    }

    public void dq(SSLSocket sSLSocket, boolean z) {
        no d2 = d(sSLSocket, z);
        String[] strArr = d2.mn;
        if (strArr != null) {
            sSLSocket.setEnabledProtocols(strArr);
        }
        String[] strArr2 = d2.iw;
        if (strArr2 != null) {
            sSLSocket.setEnabledCipherSuites(strArr2);
        }
    }

    public boolean dq() {
        return this.p;
    }

    public boolean dq(SSLSocket sSLSocket) {
        if (!this.p) {
            return false;
        }
        String[] strArr = this.mn;
        if (strArr != null && !com.bytedance.sdk.component.ox.d.dq.ox.d(com.bytedance.sdk.component.ox.d.dq.ox.ia, strArr, sSLSocket.getEnabledProtocols())) {
            return false;
        }
        String[] strArr2 = this.iw;
        return strArr2 == null || com.bytedance.sdk.component.ox.d.dq.ox.d(ia.dq, strArr2, sSLSocket.getEnabledCipherSuites());
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof no)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        no noVar = (no) obj;
        boolean z = this.p;
        if (z != noVar.p) {
            return false;
        }
        return !z || (Arrays.equals(this.iw, noVar.iw) && Arrays.equals(this.mn, noVar.mn) && this.s == noVar.s);
    }

    public int hashCode() {
        if (this.p) {
            return ((((Arrays.hashCode(this.iw) + 527) * 31) + Arrays.hashCode(this.mn)) * 31) + (!this.s ? 1 : 0);
        }
        return 17;
    }

    public List<ir> ox() {
        String[] strArr = this.mn;
        if (strArr != null) {
            return ir.dq(strArr);
        }
        return null;
    }

    public boolean p() {
        return this.s;
    }

    public String toString() {
        if (!this.p) {
            return "ConnectionSpec()";
        }
        StringBuilder o = tn.o("ConnectionSpec(cipherSuites=", this.iw != null ? d().toString() : "[all enabled]", ", tlsVersions=", this.mn != null ? ox().toString() : "[all enabled]", ", supportsTlsExtensions=");
        o.append(this.s);
        o.append(")");
        return o.toString();
    }
}

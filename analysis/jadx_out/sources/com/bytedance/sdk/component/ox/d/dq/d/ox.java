package com.bytedance.sdk.component.ox.d.dq.d;

import com.bykv.vk.component.ttvideo.LiveConfigKey;
import com.bytedance.android.live.base.api.push.ILivePush;
import com.bytedance.sdk.component.ox.d.bl;
import com.bytedance.sdk.component.ox.d.dq.s.mn;
import com.bytedance.sdk.component.ox.d.f;
import com.bytedance.sdk.component.ox.d.fw;
import com.bytedance.sdk.component.ox.d.gh;
import com.bytedance.sdk.component.ox.d.k;
import com.bytedance.sdk.component.ox.d.kk;
import com.bytedance.sdk.component.ox.d.kx;
import com.bytedance.sdk.component.ox.d.no;
import com.bytedance.sdk.component.ox.d.o;
import com.bytedance.sdk.component.ox.d.op;
import com.bytedance.sdk.component.ox.d.r;
import com.bytedance.sdk.component.ox.d.wp;
import com.bytedance.sdk.component.ox.dq.ig;
import g.he;
import g.tn;
import java.io.IOException;
import java.lang.ref.Reference;
import java.net.ConnectException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.Socket;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.UnknownServiceException;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocket;

/* loaded from: classes.dex */
public final class ox extends mn.d implements kk {

    /* renamed from: d, reason: collision with root package name */
    public int f2050d;
    public boolean dq;
    private final op ia;
    private wp ig;
    private com.bytedance.sdk.component.ox.dq.p jy;
    private Socket kk;
    private final o mn;
    private com.bytedance.sdk.component.ox.d.dq.s.mn mp;
    private fw no;
    private Socket o;
    private com.bytedance.sdk.component.ox.dq.s q;
    public int ox = 1;
    public final List<Reference<mn>> p = new ArrayList();
    public long s = Long.MAX_VALUE;

    public ox(o oVar, op opVar) {
        this.mn = oVar;
        this.ia = opVar;
    }

    private kx dq(int i, int i2, kx kxVar, gh ghVar) throws IOException {
        String str = "CONNECT " + com.bytedance.sdk.component.ox.d.dq.ox.dq(ghVar, true) + " HTTP/1.1";
        while (true) {
            com.bytedance.sdk.component.ox.d.dq.p.dq dqVar = new com.bytedance.sdk.component.ox.d.dq.p.dq(null, null, this.q, this.jy);
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            this.q.dq().dq(i, timeUnit);
            this.jy.dq().dq(i2, timeUnit);
            dqVar.dq(kxVar.ox(), str);
            dqVar.d();
            bl dq = dqVar.dq(false).dq(kxVar).dq();
            long dq2 = com.bytedance.sdk.component.ox.d.dq.ox.s.dq(dq);
            if (dq2 == -1) {
                dq2 = 0;
            }
            com.bytedance.sdk.component.ox.dq.gh d2 = dqVar.d(dq2);
            com.bytedance.sdk.component.ox.d.dq.ox.d(d2, he.UNDEFINED_ITEM_ID, timeUnit);
            d2.close();
            int ox = dq.ox();
            if (ox == 200) {
                if (this.q.ox().s() && this.jy.ox().s()) {
                    return null;
                }
                throw new IOException("TLS tunnel buffered too many bytes!");
            }
            if (ox != 407) {
                throw new IOException("Unexpected response code for CONNECT: " + dq.ox());
            }
            kx dq3 = this.ia.dq().p().dq(this.ia, dq);
            if (dq3 == null) {
                throw new IOException("Failed to authenticate with proxy");
            }
            if (ILivePush.ClickType.CLOSE.equalsIgnoreCase(dq.dq("Connection"))) {
                return dq3;
            }
            kxVar = dq3;
        }
    }

    private void dq(int i, int i2, int i3, com.bytedance.sdk.component.ox.d.s sVar, f fVar) throws IOException {
        kx iw = iw();
        gh dq = iw.dq();
        for (int i4 = 0; i4 < 21; i4++) {
            dq(i, i2, sVar, fVar);
            iw = dq(i2, i3, iw, dq);
            if (iw == null) {
                return;
            }
            com.bytedance.sdk.component.ox.d.dq.ox.dq(this.kk);
            this.kk = null;
            this.jy = null;
            this.q = null;
        }
    }

    private void dq(int i, int i2, com.bytedance.sdk.component.ox.d.s sVar, f fVar) throws IOException {
        Proxy d2 = this.ia.d();
        Socket createSocket = (d2.type() == Proxy.Type.DIRECT || d2.type() == Proxy.Type.HTTP) ? this.ia.dq().ox().createSocket() : new Socket(d2);
        this.kk = createSocket;
        createSocket.setSoTimeout(i2);
        try {
            com.bytedance.sdk.component.ox.d.dq.mn.s.d().dq(this.kk, this.ia.ox(), i);
            try {
                this.q = ig.dq(ig.d(this.kk));
                this.jy = ig.dq(ig.dq(this.kk));
            } catch (NullPointerException e2) {
                if ("throw with null exception".equals(e2.getMessage())) {
                    throw new IOException(e2);
                }
            }
        } catch (ConnectException e3) {
            ConnectException connectException = new ConnectException("Failed to connect to " + this.ia.ox());
            connectException.initCause(e3);
            throw connectException;
        }
    }

    private void dq(d dVar) throws IOException {
        SSLSocket sSLSocket;
        com.bytedance.sdk.component.ox.d.dq dq = this.ia.dq();
        SSLSocket sSLSocket2 = null;
        try {
            try {
                sSLSocket = (SSLSocket) dq.kk().createSocket(this.kk, dq.dq().mn(), dq.dq().ia(), true);
            } catch (AssertionError e2) {
                e = e2;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            no dq2 = dVar.dq(sSLSocket);
            if (dq2.p()) {
                com.bytedance.sdk.component.ox.d.dq.mn.s.d().dq(sSLSocket, dq.dq().mn(), dq.s());
            }
            try {
                sSLSocket.startHandshake();
            } catch (Throwable unused) {
            }
            fw dq3 = fw.dq(sSLSocket.getSession());
            if (dq.o().verify(dq.dq().mn(), sSLSocket.getSession())) {
                dq.no().dq(dq.dq().mn(), dq3.ox());
                String dq4 = dq2.p() ? com.bytedance.sdk.component.ox.d.dq.mn.s.d().dq(sSLSocket) : null;
                this.o = sSLSocket;
                this.q = ig.dq(ig.d(sSLSocket));
                this.jy = ig.dq(ig.dq(this.o));
                this.no = dq3;
                this.ig = dq4 != null ? wp.dq(dq4) : wp.HTTP_1_1;
                com.bytedance.sdk.component.ox.d.dq.mn.s.d().d(sSLSocket);
                return;
            }
            X509Certificate x509Certificate = (X509Certificate) dq3.ox().get(0);
            throw new SSLPeerUnverifiedException("Hostname " + dq.dq().mn() + " not verified:\n    certificate: " + com.bytedance.sdk.component.ox.d.mn.dq((Certificate) x509Certificate) + "\n    DN: " + x509Certificate.getSubjectDN().getName() + "\n    subjectAltNames: " + com.bytedance.sdk.component.ox.d.dq.kk.s.dq(x509Certificate));
        } catch (AssertionError e3) {
            e = e3;
            if (!com.bytedance.sdk.component.ox.d.dq.ox.dq(e)) {
                throw e;
            }
            throw new IOException(e);
        } catch (Throwable th2) {
            th = th2;
            sSLSocket2 = sSLSocket;
            if (sSLSocket2 != null) {
                com.bytedance.sdk.component.ox.d.dq.mn.s.d().d(sSLSocket2);
            }
            com.bytedance.sdk.component.ox.d.dq.ox.dq((Socket) sSLSocket2);
            throw th;
        }
    }

    private void dq(d dVar, com.bytedance.sdk.component.ox.d.s sVar, f fVar) throws IOException {
        if (this.ia.dq().kk() == null) {
            this.ig = wp.HTTP_1_1;
            this.o = this.kk;
            return;
        }
        dq(dVar);
        try {
            if (this.ig == wp.HTTP_2) {
                this.o.setSoTimeout(0);
                com.bytedance.sdk.component.ox.d.dq.s.mn dq = new mn.dq(true).dq(this.o, this.ia.dq().dq().mn(), this.q, this.jy).dq(this).dq();
                this.mp = dq;
                dq.ox();
            }
        } catch (Throwable unused) {
        }
    }

    private kx iw() {
        return new kx.dq().dq(this.ia.dq().dq()).dq("Host", com.bytedance.sdk.component.ox.d.dq.ox.dq(this.ia.dq().dq(), true)).dq("Proxy-Connection", "Keep-Alive").dq("User-Agent", com.bytedance.sdk.component.ox.d.dq.p.dq()).dq();
    }

    public void d() {
        com.bytedance.sdk.component.ox.d.dq.ox.dq(this.kk);
    }

    public com.bytedance.sdk.component.ox.d.dq.ox.ox dq(k kVar, r.dq dqVar, mn mnVar) throws SocketException {
        if (this.mp != null) {
            return new com.bytedance.sdk.component.ox.d.dq.s.iw(kVar, dqVar, mnVar, this.mp);
        }
        this.o.setSoTimeout(dqVar.ox());
        com.bytedance.sdk.component.ox.dq.r dq = this.q.dq();
        long ox = dqVar.ox();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        dq.dq(ox, timeUnit);
        this.jy.dq().dq(dqVar.p(), timeUnit);
        return new com.bytedance.sdk.component.ox.d.dq.p.dq(kVar, mnVar, this.q, this.jy);
    }

    @Override // com.bytedance.sdk.component.ox.d.kk
    public op dq() {
        return this.ia;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00b2 A[ORIG_RETURN, RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void dq(int i, int i2, int i3, boolean z, com.bytedance.sdk.component.ox.d.s sVar, f fVar) {
        f fVar2;
        if (this.ig != null) {
            throw new IllegalStateException("already connected");
        }
        List<no> iw = this.ia.dq().iw();
        d dVar = new d(iw);
        if (this.ia.dq().kk() == null) {
            if (!iw.contains(no.ox)) {
                throw new s(new UnknownServiceException("CLEARTEXT communication not enabled for client"));
            }
            String mn = this.ia.dq().dq().mn();
            if (!com.bytedance.sdk.component.ox.d.dq.mn.s.d().d(mn)) {
                throw new s(new UnknownServiceException(tn.ad("CLEARTEXT communication to ", mn, " not permitted by network security policy")));
            }
        }
        s sVar2 = null;
        do {
            try {
                try {
                    if (this.ia.p()) {
                        fVar2 = fVar;
                        dq(i, i2, i3, sVar, fVar2);
                        if (this.kk == null) {
                            if (!this.ia.p() && this.kk == null) {
                                throw new s(new ProtocolException("Too many tunnel connections attempted: 21"));
                            }
                            if (this.mp == null) {
                                synchronized (this.mn) {
                                    this.ox = this.mp.dq();
                                }
                                return;
                            }
                            return;
                        }
                    } else {
                        fVar2 = fVar;
                        dq(i, i2, sVar, fVar2);
                    }
                    dq(dVar, sVar, fVar2);
                    if (!this.ia.p()) {
                    }
                    if (this.mp == null) {
                    }
                } catch (IOException e2) {
                    e = e2;
                    com.bytedance.sdk.component.ox.d.dq.ox.dq(this.o);
                    com.bytedance.sdk.component.ox.d.dq.ox.dq(this.kk);
                    this.o = null;
                    this.kk = null;
                    this.q = null;
                    this.jy = null;
                    this.no = null;
                    this.ig = null;
                    this.mp = null;
                    if (sVar2 == null) {
                        sVar2 = new s(e);
                    } else {
                        sVar2.dq(e);
                    }
                    if (!z) {
                        throw sVar2;
                    }
                }
            } catch (IOException e3) {
                e = e3;
            }
        } while (dVar.dq(e));
        throw sVar2;
    }

    @Override // com.bytedance.sdk.component.ox.d.dq.s.mn.d
    public void dq(com.bytedance.sdk.component.ox.d.dq.s.kk kkVar) throws IOException {
        kkVar.dq(com.bytedance.sdk.component.ox.d.dq.s.d.REFUSED_STREAM);
    }

    @Override // com.bytedance.sdk.component.ox.d.dq.s.mn.d
    public void dq(com.bytedance.sdk.component.ox.d.dq.s.mn mnVar) {
        synchronized (this.mn) {
            this.ox = mnVar.dq();
        }
    }

    public boolean dq(com.bytedance.sdk.component.ox.d.dq dqVar, op opVar) {
        if (this.p.size() >= this.ox || this.dq || !com.bytedance.sdk.component.ox.d.dq.dq.dq.dq(this.ia.dq(), dqVar)) {
            return false;
        }
        if (dqVar.dq().mn().equals(dq().dq().dq().mn())) {
            return true;
        }
        if (this.mp == null || opVar == null) {
            return false;
        }
        Proxy.Type type = opVar.d().type();
        Proxy.Type type2 = Proxy.Type.DIRECT;
        if (type != type2 || this.ia.d().type() != type2 || !this.ia.ox().equals(opVar.ox()) || opVar.dq().o() != com.bytedance.sdk.component.ox.d.dq.kk.s.dq || !dq(dqVar.dq())) {
            return false;
        }
        try {
            dqVar.no().dq(dqVar.dq().mn(), p().ox());
            return true;
        } catch (SSLPeerUnverifiedException unused) {
            return false;
        }
    }

    public boolean dq(gh ghVar) {
        if (ghVar.ia() != this.ia.dq().dq().ia()) {
            return false;
        }
        if (ghVar.mn().equals(this.ia.dq().dq().mn())) {
            return true;
        }
        return this.no != null && com.bytedance.sdk.component.ox.d.dq.kk.s.dq.dq(ghVar.mn(), (X509Certificate) this.no.ox().get(0));
    }

    public boolean dq(boolean z) {
        if (this.o.isClosed() || this.o.isInputShutdown() || this.o.isOutputShutdown()) {
            return false;
        }
        com.bytedance.sdk.component.ox.d.dq.s.mn mnVar = this.mp;
        if (mnVar != null) {
            return !mnVar.p();
        }
        if (z) {
            try {
                int soTimeout = this.o.getSoTimeout();
                try {
                    this.o.setSoTimeout(1);
                    return !this.q.s();
                } finally {
                    this.o.setSoTimeout(soTimeout);
                }
            } catch (SocketTimeoutException unused) {
            } catch (IOException unused2) {
                return false;
            }
        }
        return true;
    }

    public Socket ox() {
        return this.o;
    }

    public fw p() {
        return this.no;
    }

    public boolean s() {
        return this.mp != null;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Connection{");
        sb.append(this.ia.dq().dq().mn());
        sb.append(":");
        sb.append(this.ia.dq().dq().ia());
        sb.append(", proxy=");
        sb.append(this.ia.d());
        sb.append(" hostAddress=");
        sb.append(this.ia.ox());
        sb.append(" cipherSuite=");
        fw fwVar = this.no;
        sb.append(fwVar != null ? fwVar.d() : LiveConfigKey.NONE);
        sb.append(" protocol=");
        sb.append(this.ig);
        sb.append('}');
        return sb.toString();
    }
}

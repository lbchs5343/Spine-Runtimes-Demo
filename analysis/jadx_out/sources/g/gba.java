package g;

import com.bykv.vk.component.ttvideo.LiveConfigKey;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ConnectException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.net.UnknownServiceException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;

/* loaded from: classes3.dex */
public final class gba extends ayg {

    /* renamed from: d, reason: collision with root package name */
    public deb f17837d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f17838e;

    /* renamed from: f, reason: collision with root package name */
    public int f17839f;

    /* renamed from: g, reason: collision with root package name */
    public int f17840g;
    public Socket h;
    public int i;
    public czl j;
    public aqt k;
    public final ArrayList l;
    public int m;
    public ago n;
    public final ego o;
    public boolean p;
    public long q;
    public Socket r;
    public ug s;

    public gba(dhh dhhVar, ego egoVar) {
        bff.p(dhhVar, "connectionPool");
        bff.p(egoVar, "route");
        this.o = egoVar;
        this.f17839f = 1;
        this.l = new ArrayList();
        this.q = Long.MAX_VALUE;
    }

    public static void t(fys fysVar, ego egoVar, IOException iOException) {
        bff.p(egoVar, "failedRoute");
        bff.p(iOException, "failure");
        if (egoVar.f15501b.type() != Proxy.Type.DIRECT) {
            cbm cbmVar = egoVar.f15500a;
            cbmVar.j.connectFailed(cbmVar.f12590a.l(), egoVar.f15501b.address(), iOException);
        }
        aoy aoyVar = fysVar.t;
        synchronized (aoyVar) {
            ((LinkedHashSet) aoyVar.h).add(egoVar);
        }
    }

    @Override // g.ayg
    public final void a(btb btbVar) {
        btbVar.x(amc.REFUSED_STREAM, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x00ab, code lost:
    
        if (g.gvr.d(r5, (java.security.cert.X509Certificate) r11) != false) goto L50;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean aa(cbm cbmVar, List list) {
        czl czlVar;
        eyn eynVar = cbmVar.f12590a;
        byte[] bArr = erq.f16043c;
        if (this.l.size() < this.f17839f && !this.p) {
            ego egoVar = this.o;
            cbm cbmVar2 = egoVar.f15500a;
            cbm cbmVar3 = egoVar.f15500a;
            if (cbmVar2.k(cbmVar)) {
                String str = eynVar.f16373c;
                String str2 = eynVar.f16373c;
                if (bff.n(str, cbmVar3.f12590a.f16373c)) {
                    return true;
                }
                if (this.s != null && list != null && !list.isEmpty()) {
                    Iterator it = list.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        ego egoVar2 = (ego) it.next();
                        Proxy.Type type = egoVar2.f15501b.type();
                        Proxy.Type type2 = Proxy.Type.DIRECT;
                        if (type == type2 && egoVar.f15501b.type() == type2 && bff.n(egoVar.f15502c, egoVar2.f15502c)) {
                            if (cbmVar.f12591b == gvr.f18833a) {
                                byte[] bArr2 = erq.f16043c;
                                eyn eynVar2 = cbmVar3.f12590a;
                                if (eynVar.f16374d == eynVar2.f16374d) {
                                    if (!bff.n(str2, eynVar2.f16373c)) {
                                        if (!this.f17838e && (czlVar = this.j) != null) {
                                            List e2 = czlVar.e();
                                            if (!e2.isEmpty()) {
                                                Object obj = e2.get(0);
                                                bff.ag(obj, "null cannot be cast to non-null type java.security.cert.X509Certificate");
                                            }
                                        }
                                    }
                                    try {
                                        bws bwsVar = cbmVar.f12592c;
                                        bff.d(bwsVar);
                                        czl czlVar2 = this.j;
                                        bff.d(czlVar2);
                                        List e3 = czlVar2.e();
                                        bff.p(str2, "hostname");
                                        bff.p(e3, "peerCertificates");
                                        bwsVar.d(str2, new aln(bwsVar, e3, str2));
                                        return true;
                                    } catch (SSLPeerUnverifiedException unused) {
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    public final boolean ab(boolean z) {
        long j;
        byte[] bArr = erq.f16043c;
        long nanoTime = System.nanoTime();
        Socket socket = this.r;
        bff.d(socket);
        Socket socket2 = this.h;
        bff.d(socket2);
        bff.d(this.f17837d);
        if (socket.isClosed() || socket2.isClosed() || socket2.isInputShutdown() || socket2.isOutputShutdown()) {
            return false;
        }
        ug ugVar = this.s;
        if (ugVar != null) {
            return ugVar.ac(nanoTime);
        }
        synchronized (this) {
            j = nanoTime - this.q;
        }
        if (j < 10000000000L || !z) {
            return true;
        }
        try {
            int soTimeout = socket2.getSoTimeout();
            try {
                socket2.setSoTimeout(1);
                return !r4.i();
            } finally {
                socket2.setSoTimeout(soTimeout);
            }
        } catch (SocketTimeoutException unused) {
            return true;
        } catch (IOException unused2) {
            return false;
        }
    }

    public final void ac(int i, int i2, int i3, boolean z, dnw dnwVar) {
        ego egoVar;
        if (this.k != null) {
            throw new IllegalStateException("already connected");
        }
        List list = this.o.f15500a.h;
        dvb dvbVar = new dvb(list);
        cbm cbmVar = this.o.f15500a;
        if (cbmVar.i == null) {
            if (!list.contains(ezm.f16416b)) {
                throw new fvg(new UnknownServiceException("CLEARTEXT communication not enabled for client"));
            }
            String str = this.o.f15500a.f12590a.f16373c;
            bop bopVar = bop.h;
            if (!bop.h.k(str)) {
                throw new fvg(new UnknownServiceException(tn.ad("CLEARTEXT communication to ", str, " not permitted by network security policy")));
            }
        } else if (cbmVar.f12595f.contains(aqt.H2_PRIOR_KNOWLEDGE)) {
            throw new fvg(new UnknownServiceException("H2_PRIOR_KNOWLEDGE cannot be used with HTTPS"));
        }
        fvg fvgVar = null;
        do {
            try {
                ego egoVar2 = this.o;
                if (egoVar2.f15500a.i != null && egoVar2.f15501b.type() == Proxy.Type.HTTP) {
                    y(i, i2, i3, dnwVar);
                    if (this.r == null) {
                        egoVar = this.o;
                        if (egoVar.f15500a.i == null && egoVar.f15501b.type() == Proxy.Type.HTTP && this.r == null) {
                            throw new fvg(new ProtocolException("Too many tunnel connections attempted: 21"));
                        }
                        this.q = System.nanoTime();
                        return;
                    }
                } else {
                    x(i, i2, dnwVar);
                }
                ad(dvbVar, dnwVar);
                bff.p(this.o.f15502c, "inetSocketAddress");
                egoVar = this.o;
                if (egoVar.f15500a.i == null) {
                }
                this.q = System.nanoTime();
                return;
            } catch (IOException e2) {
                Socket socket = this.h;
                if (socket != null) {
                    erq.o(socket);
                }
                Socket socket2 = this.r;
                if (socket2 != null) {
                    erq.o(socket2);
                }
                this.h = null;
                this.r = null;
                this.f17837d = null;
                this.n = null;
                this.j = null;
                this.k = null;
                this.s = null;
                this.f17839f = 1;
                bff.p(this.o.f15502c, "inetSocketAddress");
                if (fvgVar == null) {
                    fvgVar = new fvg(e2);
                } else {
                    fvgVar.a(e2);
                }
                if (!z) {
                    throw fvgVar;
                }
                dvbVar.f14882d = true;
                if (!dvbVar.f14881c) {
                    throw fvgVar;
                }
                if (e2 instanceof ProtocolException) {
                    throw fvgVar;
                }
                if (e2 instanceof InterruptedIOException) {
                    throw fvgVar;
                }
                if ((e2 instanceof SSLHandshakeException) && (e2.getCause() instanceof CertificateException)) {
                    throw fvgVar;
                }
                if (e2 instanceof SSLPeerUnverifiedException) {
                    throw fvgVar;
                }
            }
        } while (e2 instanceof SSLException);
        throw fvgVar;
    }

    public final void ad(dvb dvbVar, dnw dnwVar) {
        aqt aqtVar;
        cbm cbmVar = this.o.f15500a;
        SSLSocketFactory sSLSocketFactory = cbmVar.i;
        if (sSLSocketFactory == null) {
            List list = cbmVar.f12595f;
            aqt aqtVar2 = aqt.H2_PRIOR_KNOWLEDGE;
            if (!list.contains(aqtVar2)) {
                this.h = this.r;
                this.k = aqt.HTTP_1_1;
                return;
            } else {
                this.h = this.r;
                this.k = aqtVar2;
                z();
                return;
            }
        }
        SSLSocket sSLSocket = null;
        String str = null;
        try {
            bff.d(sSLSocketFactory);
            Socket socket = this.r;
            eyn eynVar = cbmVar.f12590a;
            Socket createSocket = sSLSocketFactory.createSocket(socket, eynVar.f16373c, eynVar.f16374d, true);
            bff.ag(createSocket, "null cannot be cast to non-null type javax.net.ssl.SSLSocket");
            SSLSocket sSLSocket2 = (SSLSocket) createSocket;
            try {
                ezm g2 = dvbVar.g(sSLSocket2);
                if (g2.f16419e) {
                    bop bopVar = bop.h;
                    bop.h.d(sSLSocket2, cbmVar.f12590a.f16373c, cbmVar.f12595f);
                }
                sSLSocket2.startHandshake();
                SSLSession session = sSLSocket2.getSession();
                bff.e(session, "sslSocketSession");
                czl o = eg.o(session);
                HostnameVerifier hostnameVerifier = cbmVar.f12591b;
                bff.d(hostnameVerifier);
                if (hostnameVerifier.verify(cbmVar.f12590a.f16373c, session)) {
                    bws bwsVar = cbmVar.f12592c;
                    bff.d(bwsVar);
                    this.j = new czl(o.f13810b, o.f13811c, o.f13812d, new eua(bwsVar, o, cbmVar));
                    bwsVar.d(cbmVar.f12590a.f16373c, new rp(this));
                    if (g2.f16419e) {
                        bop bopVar2 = bop.h;
                        str = bop.h.f(sSLSocket2);
                    }
                    this.h = sSLSocket2;
                    this.f17837d = baf.ai(baf.au(sSLSocket2));
                    this.n = baf.w(baf.x(sSLSocket2));
                    if (str != null) {
                        aqt.Companion.getClass();
                        aqtVar = ie.a(str);
                    } else {
                        aqtVar = aqt.HTTP_1_1;
                    }
                    this.k = aqtVar;
                    bop bopVar3 = bop.h;
                    bop.h.m(sSLSocket2);
                    if (this.k == aqt.HTTP_2) {
                        z();
                        return;
                    }
                    return;
                }
                List e2 = o.e();
                if (e2.isEmpty()) {
                    throw new SSLPeerUnverifiedException("Hostname " + cbmVar.f12590a.f16373c + " not verified (no certificates)");
                }
                Object obj = e2.get(0);
                bff.ag(obj, "null cannot be cast to non-null type java.security.cert.X509Certificate");
                X509Certificate x509Certificate = (X509Certificate) obj;
                StringBuilder sb = new StringBuilder("\n              |Hostname ");
                sb.append(cbmVar.f12590a.f16373c);
                sb.append(" not verified:\n              |    certificate: ");
                bws bwsVar2 = bws.f12336a;
                StringBuilder sb2 = new StringBuilder("sha256/");
                gei geiVar = gei.n;
                byte[] encoded = x509Certificate.getPublicKey().getEncoded();
                bff.e(encoded, "publicKey.encoded");
                sb2.append(dwm.ae(encoded).k("SHA-256").g());
                sb.append(sb2.toString());
                sb.append("\n              |    DN: ");
                sb.append(x509Certificate.getSubjectDN().getName());
                sb.append("\n              |    subjectAltNames: ");
                sb.append(gsv.bl(gvr.b(x509Certificate, 2), gvr.b(x509Certificate, 7)));
                sb.append("\n              ");
                throw new SSLPeerUnverifiedException(gs.t(sb.toString()));
            } catch (Throwable th) {
                th = th;
                sSLSocket = sSLSocket2;
                if (sSLSocket != null) {
                    bop bopVar4 = bop.h;
                    bop.h.m(sSLSocket);
                }
                if (sSLSocket != null) {
                    erq.o(sSLSocket);
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    @Override // g.ayg
    public final synchronized void c(ug ugVar, che cheVar) {
        bff.p(cheVar, "settings");
        this.f17839f = (cheVar.f12870a & 16) != 0 ? cheVar.f12871b[4] : he.UNDEFINED_ITEM_ID;
    }

    public final String toString() {
        Object obj;
        StringBuilder sb = new StringBuilder("Connection{");
        ego egoVar = this.o;
        sb.append(egoVar.f15500a.f12590a.f16373c);
        sb.append(':');
        sb.append(egoVar.f15500a.f12590a.f16374d);
        sb.append(", proxy=");
        sb.append(egoVar.f15501b);
        sb.append(" hostAddress=");
        sb.append(egoVar.f15502c);
        sb.append(" cipherSuite=");
        czl czlVar = this.j;
        if (czlVar == null || (obj = czlVar.f13811c) == null) {
            obj = LiveConfigKey.NONE;
        }
        sb.append(obj);
        sb.append(" protocol=");
        sb.append(this.k);
        sb.append('}');
        return sb.toString();
    }

    public final synchronized void u() {
        this.m++;
    }

    public final axn v(fys fysVar, dpe dpeVar) {
        int i = dpeVar.i;
        Socket socket = this.h;
        bff.d(socket);
        deb debVar = this.f17837d;
        bff.d(debVar);
        ago agoVar = this.n;
        bff.d(agoVar);
        ug ugVar = this.s;
        if (ugVar != null) {
            return new dga(fysVar, this, dpeVar, ugVar);
        }
        socket.setSoTimeout(i);
        dme e2 = debVar.f14036b.e();
        long j = i;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        e2._av(j);
        agoVar.f10191b.e()._av(dpeVar.f14581a);
        return new gnb(fysVar, this, debVar, agoVar);
    }

    public final synchronized void w() {
        this.p = true;
    }

    public final void x(int i, int i2, dnw dnwVar) {
        Socket createSocket;
        ego egoVar = this.o;
        Proxy proxy = egoVar.f15501b;
        cbm cbmVar = egoVar.f15500a;
        Proxy.Type type = proxy.type();
        int i3 = type == null ? -1 : aej.f10095a[type.ordinal()];
        if (i3 == 1 || i3 == 2) {
            createSocket = cbmVar.f12596g.createSocket();
            bff.d(createSocket);
        } else {
            createSocket = new Socket(proxy);
        }
        this.r = createSocket;
        bff.p(this.o.f15502c, "inetSocketAddress");
        createSocket.setSoTimeout(i2);
        try {
            bop bopVar = bop.h;
            bop.h.l(createSocket, this.o.f15502c, i);
            try {
                this.f17837d = baf.ai(baf.au(createSocket));
                this.n = baf.w(baf.x(createSocket));
            } catch (NullPointerException e2) {
                if (bff.n(e2.getMessage(), "throw with null exception")) {
                    throw new IOException(e2);
                }
            }
        } catch (ConnectException e3) {
            ConnectException connectException = new ConnectException("Failed to connect to " + this.o.f15502c);
            connectException.initCause(e3);
            throw connectException;
        }
    }

    public final void y(int i, int i2, int i3, dnw dnwVar) {
        fzn fznVar = new fzn(7);
        ego egoVar = this.o;
        eyn eynVar = egoVar.f15500a.f12590a;
        bff.p(eynVar, abn.EXTRA_URL);
        fznVar.h = eynVar;
        fznVar.w("CONNECT", null);
        cbm cbmVar = egoVar.f15500a;
        fznVar.n("Host", erq.r(cbmVar.f12590a, true));
        fznVar.n("Proxy-Connection", "Keep-Alive");
        fznVar.n("User-Agent", "okhttp/4.12.0");
        daw x = fznVar.x();
        ais aisVar = new ais(0);
        bff.p(aqt.HTTP_1_1, "protocol");
        dyd.bn("Proxy-Authenticate");
        dyd.al("OkHttp-Preemptive", "Proxy-Authenticate");
        aisVar.b("Proxy-Authenticate");
        aisVar.h("Proxy-Authenticate", "OkHttp-Preemptive");
        aisVar.d();
        cbmVar.f12594e.getClass();
        eyn eynVar2 = (eyn) x.f13886e;
        x(i, i2, dnwVar);
        String str = "CONNECT " + erq.r(eynVar2, true) + " HTTP/1.1";
        deb debVar = this.f17837d;
        bff.d(debVar);
        ago agoVar = this.n;
        bff.d(agoVar);
        gnb gnbVar = new gnb(null, this, debVar, agoVar);
        dme e2 = debVar.f14036b.e();
        long j = i2;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        e2._av(j);
        agoVar.f10191b.e()._av(i3);
        gnbVar.q((dvq) x.f13882a, str);
        gnbVar.d();
        hdt g2 = gnbVar.g(false);
        bff.d(g2);
        g2.f19298f = x;
        enb o = g2.o();
        int i4 = o.f15840g;
        long z = erq.z(o);
        if (z != -1) {
            qk p = gnbVar.p(z);
            erq.ab(p, he.UNDEFINED_ITEM_ID);
            p.close();
        }
        if (i4 != 200) {
            if (i4 != 407) {
                throw new IOException(awf.ac(i4, "Unexpected response code for CONNECT: "));
            }
            cbmVar.f12594e.getClass();
            throw new IOException("Failed to authenticate with proxy");
        }
        if (!debVar.f14037d.aj() || !agoVar.f10192c.aj()) {
            throw new IOException("TLS tunnel buffered too many bytes!");
        }
    }

    public final void z() {
        Socket socket = this.h;
        bff.d(socket);
        deb debVar = this.f17837d;
        bff.d(debVar);
        ago agoVar = this.n;
        bff.d(agoVar);
        socket.setSoTimeout(0);
        amr amrVar = amr.f10485a;
        daw dawVar = new daw(amrVar);
        String str = this.o.f15500a.f12590a.f16373c;
        bff.p(str, "peerName");
        dawVar.f13887f = socket;
        String str2 = erq.f16047g + ' ' + str;
        bff.p(str2, "<set-?>");
        dawVar.f13882a = str2;
        dawVar.f13883b = debVar;
        dawVar.f13885d = agoVar;
        dawVar.f13888g = this;
        ug ugVar = new ug(dawVar);
        this.s = ugVar;
        che cheVar = ug.f20088a;
        this.f17839f = (cheVar.f12870a & 16) != 0 ? cheVar.f12871b[4] : he.UNDEFINED_ITEM_ID;
        djf djfVar = ugVar.w;
        synchronized (djfVar) {
            try {
                if (djfVar.f14268c) {
                    throw new IOException("closed");
                }
                Logger logger = djf.f14266a;
                if (logger.isLoggable(Level.FINE)) {
                    logger.fine(erq.h(">> CONNECTION " + aby.f9951b.f(), new Object[0]));
                }
                djfVar.f14270e.g(aby.f9951b);
                djfVar.f14270e.flush();
            } catch (Throwable th) {
                throw th;
            }
        }
        ugVar.w.l(ugVar.f20090c);
        if (ugVar.f20090c.c() != 65535) {
            ugVar.w.n(0, r1 - 65535);
        }
        amrVar.l().l(new lm(ugVar.j, ugVar.s, 3), 0L);
    }
}

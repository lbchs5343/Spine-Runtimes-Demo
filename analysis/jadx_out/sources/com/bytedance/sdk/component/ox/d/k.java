package com.bytedance.sdk.component.ox.d;

import android.os.Bundle;
import com.bytedance.sdk.component.ox.d.bl;
import com.bytedance.sdk.component.ox.d.cd;
import com.bytedance.sdk.component.ox.d.f;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.Socket;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;

/* loaded from: classes.dex */
public class k implements Cloneable {
    final int bl;
    final mn cd;

    /* renamed from: e, reason: collision with root package name */
    final boolean f2124e;

    /* renamed from: f, reason: collision with root package name */
    final com.bytedance.sdk.component.ox.d.dq.kk.ox f2125f;
    final HostnameVerifier fw;
    final d gh;
    final int h;
    final o i;
    final List<r> ia;
    final ox ig;
    final List<no> iw;
    final int ji;
    final SSLSocketFactory jy;
    final boolean k;
    final f.dq kk;
    final int kx;
    final jy le;
    final List<r> mn;
    final com.bytedance.sdk.component.ox.d.dq.dq.iw mp;
    public Set<String> n;
    final mp no;
    final ProxySelector o;
    final q ox;
    final Proxy p;
    final SocketFactory q;
    final d r;
    final List<wp> s;
    final boolean wp;
    static final List<wp> dq = com.bytedance.sdk.component.ox.d.dq.ox.dq(wp.HTTP_2, wp.HTTP_1_1);

    /* renamed from: d, reason: collision with root package name */
    static final List<no> f2123d = com.bytedance.sdk.component.ox.d.dq.ox.dq(no.dq, no.ox);

    public static final class dq {
        public Set<String> bl;
        d cd;

        /* renamed from: d, reason: collision with root package name */
        Proxy f2126d;
        q dq;

        /* renamed from: e, reason: collision with root package name */
        public int f2127e;

        /* renamed from: f, reason: collision with root package name */
        mn f2128f;
        d fw;
        o gh;
        int h;
        boolean i;
        ProxySelector ia;
        SocketFactory ig;
        public TimeUnit ir;
        final List<r> iw;
        public Bundle ji;
        HostnameVerifier jy;
        boolean k;
        mp kk;
        public int kx;
        boolean le;
        f.dq mn;
        SSLSocketFactory mp;
        public TimeUnit n;
        com.bytedance.sdk.component.ox.d.dq.dq.iw no;
        ox o;
        public TimeUnit op;
        public List<wp> ox;
        List<no> p;
        com.bytedance.sdk.component.ox.d.dq.kk.ox q;
        jy r;
        public final List<r> s;
        public int wp;

        public dq() {
            this("");
        }

        public dq(String str) {
            this.s = new ArrayList();
            this.iw = new ArrayList();
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            this.n = timeUnit;
            this.op = timeUnit;
            this.ir = timeUnit;
            this.dq = new q(str);
            this.ox = k.dq;
            this.p = k.f2123d;
            this.mn = f.dq(f.dq);
            this.ia = ProxySelector.getDefault();
            this.kk = mp.dq;
            this.ig = SocketFactory.getDefault();
            this.jy = com.bytedance.sdk.component.ox.d.dq.kk.s.dq;
            this.f2128f = mn.dq;
            d dVar = d.dq;
            this.fw = dVar;
            this.cd = dVar;
            this.gh = new o();
            this.r = jy.dq;
            this.i = true;
            this.le = true;
            this.k = true;
            this.wp = 10000;
            this.f2127e = 10000;
            this.kx = 10000;
            this.h = 0;
        }

        public dq d(long j, TimeUnit timeUnit) {
            this.f2127e = com.bytedance.sdk.component.ox.d.dq.ox.dq("timeout", j, timeUnit);
            return this;
        }

        public dq dq(long j, TimeUnit timeUnit) {
            this.wp = com.bytedance.sdk.component.ox.d.dq.ox.dq("timeout", j, timeUnit);
            return this;
        }

        public dq dq(r rVar) {
            if (rVar == null) {
                throw new IllegalArgumentException("interceptor == null");
            }
            this.s.add(rVar);
            return this;
        }

        public dq dq(Set<String> set) {
            this.bl = set;
            return this;
        }

        public k dq() {
            return new k(this);
        }

        public dq ox(long j, TimeUnit timeUnit) {
            this.kx = com.bytedance.sdk.component.ox.d.dq.ox.dq("timeout", j, timeUnit);
            return this;
        }
    }

    static {
        com.bytedance.sdk.component.ox.d.dq.dq.dq = new com.bytedance.sdk.component.ox.d.dq.dq() { // from class: com.bytedance.sdk.component.ox.d.k.1
            @Override // com.bytedance.sdk.component.ox.d.dq.dq
            public void d(o oVar, com.bytedance.sdk.component.ox.d.dq.d.ox oxVar) {
                oVar.dq(oxVar);
            }

            @Override // com.bytedance.sdk.component.ox.d.dq.dq
            public int dq(bl.dq dqVar) {
                return dqVar.ox;
            }

            @Override // com.bytedance.sdk.component.ox.d.dq.dq
            public com.bytedance.sdk.component.ox.d.dq.d.ox dq(o oVar, com.bytedance.sdk.component.ox.d.dq dqVar, com.bytedance.sdk.component.ox.d.dq.d.mn mnVar, op opVar) {
                return oVar.dq(dqVar, mnVar, opVar);
            }

            @Override // com.bytedance.sdk.component.ox.d.dq.dq
            public com.bytedance.sdk.component.ox.d.dq.d.p dq(o oVar) {
                return oVar.dq;
            }

            @Override // com.bytedance.sdk.component.ox.d.dq.dq
            public Socket dq(o oVar, com.bytedance.sdk.component.ox.d.dq dqVar, com.bytedance.sdk.component.ox.d.dq.d.mn mnVar) {
                return oVar.dq(dqVar, mnVar);
            }

            @Override // com.bytedance.sdk.component.ox.d.dq.dq
            public void dq(cd.dq dqVar, String str) {
                dqVar.dq(str);
            }

            @Override // com.bytedance.sdk.component.ox.d.dq.dq
            public void dq(cd.dq dqVar, String str, String str2) {
                dqVar.d(str, str2);
            }

            @Override // com.bytedance.sdk.component.ox.d.dq.dq
            public void dq(no noVar, SSLSocket sSLSocket, boolean z) {
                noVar.dq(sSLSocket, z);
            }

            @Override // com.bytedance.sdk.component.ox.d.dq.dq
            public boolean dq(com.bytedance.sdk.component.ox.d.dq dqVar, com.bytedance.sdk.component.ox.d.dq dqVar2) {
                return dqVar.dq(dqVar2);
            }

            @Override // com.bytedance.sdk.component.ox.d.dq.dq
            public boolean dq(o oVar, com.bytedance.sdk.component.ox.d.dq.d.ox oxVar) {
                return oVar.d(oxVar);
            }
        };
    }

    public k() {
        this(new dq());
    }

    public k(dq dqVar) {
        boolean z;
        this.ox = dqVar.dq;
        this.p = dqVar.f2126d;
        this.s = dqVar.ox;
        List<no> list = dqVar.p;
        this.iw = list;
        this.mn = com.bytedance.sdk.component.ox.d.dq.ox.dq(dqVar.s);
        this.ia = com.bytedance.sdk.component.ox.d.dq.ox.dq(dqVar.iw);
        this.kk = dqVar.mn;
        this.o = dqVar.ia;
        this.no = dqVar.kk;
        this.ig = dqVar.o;
        this.mp = dqVar.no;
        this.q = dqVar.ig;
        this.n = dqVar.bl;
        Iterator<no> it = list.iterator();
        loop0: while (true) {
            while (it.hasNext()) {
                z = z || it.next().dq();
            }
        }
        SSLSocketFactory sSLSocketFactory = dqVar.mp;
        if (sSLSocketFactory == null && z) {
            X509TrustManager e2 = e();
            this.jy = dq(e2);
            this.f2125f = com.bytedance.sdk.component.ox.d.dq.kk.ox.dq(e2);
        } else {
            this.jy = sSLSocketFactory;
            this.f2125f = dqVar.q;
        }
        this.fw = dqVar.jy;
        this.cd = dqVar.f2128f.dq(this.f2125f);
        this.gh = dqVar.fw;
        this.r = dqVar.cd;
        o oVar = dqVar.gh;
        this.i = oVar;
        if (oVar != null) {
            oVar.dq(dqVar.ji);
        }
        this.le = dqVar.r;
        this.k = dqVar.i;
        this.wp = dqVar.le;
        this.f2124e = dqVar.k;
        this.kx = dqVar.wp;
        this.h = dqVar.f2127e;
        this.ji = dqVar.kx;
        this.bl = dqVar.h;
        if (this.mn.contains(null)) {
            throw new IllegalStateException("Null interceptor: " + this.mn);
        }
        if (this.ia.contains(null)) {
            throw new IllegalStateException("Null network interceptor: " + this.ia);
        }
    }

    private SSLSocketFactory dq(X509TrustManager x509TrustManager) {
        try {
            SSLContext sSLContext = SSLContext.getInstance("TLS");
            sSLContext.init(null, new TrustManager[]{x509TrustManager}, null);
            return sSLContext.getSocketFactory();
        } catch (GeneralSecurityException e2) {
            throw com.bytedance.sdk.component.ox.d.dq.ox.dq("No System TLS", (Exception) e2);
        }
    }

    private X509TrustManager e() {
        try {
            TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
            trustManagerFactory.init((KeyStore) null);
            TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
            if (trustManagers.length == 1) {
                TrustManager trustManager = trustManagers[0];
                if (trustManager instanceof X509TrustManager) {
                    return (X509TrustManager) trustManager;
                }
            }
            throw new IllegalStateException("Unexpected default trust managers:" + Arrays.toString(trustManagers));
        } catch (GeneralSecurityException e2) {
            throw com.bytedance.sdk.component.ox.d.dq.ox.dq("No System TLS", (Exception) e2);
        }
    }

    public boolean cd() {
        return this.f2124e;
    }

    public int d() {
        return this.h;
    }

    public int dq() {
        return this.kx;
    }

    public s dq(kx kxVar) {
        return e.dq(this, kxVar, false);
    }

    public boolean f() {
        return this.k;
    }

    public boolean fw() {
        return this.wp;
    }

    public q gh() {
        return this.ox;
    }

    public List<no> i() {
        return this.iw;
    }

    public jy ia() {
        return this.le;
    }

    public mn ig() {
        return this.cd;
    }

    public mp iw() {
        return this.no;
    }

    public o jy() {
        return this.i;
    }

    public List<r> k() {
        return this.ia;
    }

    public SocketFactory kk() {
        return this.q;
    }

    public List<r> le() {
        return this.mn;
    }

    public com.bytedance.sdk.component.ox.d.dq.dq.iw mn() {
        ox oxVar = this.ig;
        return oxVar != null ? oxVar.dq : this.mp;
    }

    public d mp() {
        return this.r;
    }

    public HostnameVerifier no() {
        return this.fw;
    }

    public SSLSocketFactory o() {
        return this.jy;
    }

    public int ox() {
        return this.ji;
    }

    public Proxy p() {
        return this.p;
    }

    public d q() {
        return this.gh;
    }

    public List<wp> r() {
        return this.s;
    }

    public ProxySelector s() {
        return this.o;
    }

    public f.dq wp() {
        return this.kk;
    }
}

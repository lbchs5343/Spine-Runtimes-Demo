package g;

import java.security.KeyStore;
import java.security.Provider;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import org.conscrypt.Conscrypt;

/* loaded from: classes3.dex */
public final class lg extends bop {

    /* renamed from: a, reason: collision with root package name */
    public static final boolean f19587a;

    /* renamed from: b, reason: collision with root package name */
    public final Provider f19588b;

    static {
        boolean z = false;
        try {
            Class.forName("org.conscrypt.Conscrypt$Version", false, czp.class.getClassLoader());
            if (Conscrypt.isAvailable()) {
                if (czp.a()) {
                    z = true;
                }
            }
        } catch (ClassNotFoundException | NoClassDefFoundError unused) {
        }
        f19587a = z;
    }

    public lg() {
        Provider newProvider = Conscrypt.newProvider();
        bff.e(newProvider, "newProvider()");
        this.f19588b = newProvider;
    }

    @Override // g.bop
    public final SSLContext c() {
        SSLContext sSLContext = SSLContext.getInstance("TLS", this.f19588b);
        bff.e(sSLContext, "getInstance(\"TLS\", provider)");
        return sSLContext;
    }

    @Override // g.bop
    public final void d(SSLSocket sSLSocket, String str, List list) {
        bff.p(list, "protocols");
        if (Conscrypt.isConscrypt(sSLSocket)) {
            Conscrypt.setUseSessionTickets(sSLSocket, true);
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (((aqt) obj) != aqt.HTTP_1_0) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = new ArrayList(bkk.a(arrayList));
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                arrayList2.add(((aqt) it.next()).toString());
            }
            Conscrypt.setApplicationProtocols(sSLSocket, (String[]) arrayList2.toArray(new String[0]));
        }
    }

    @Override // g.bop
    public final SSLSocketFactory e(X509TrustManager x509TrustManager) {
        SSLContext c2 = c();
        c2.init(null, new TrustManager[]{x509TrustManager}, null);
        SSLSocketFactory socketFactory = c2.getSocketFactory();
        bff.e(socketFactory, "newSSLContext().apply {\n…null)\n    }.socketFactory");
        return socketFactory;
    }

    @Override // g.bop
    public final String f(SSLSocket sSLSocket) {
        if (Conscrypt.isConscrypt(sSLSocket)) {
            return Conscrypt.getApplicationProtocol(sSLSocket);
        }
        return null;
    }

    @Override // g.bop
    public final X509TrustManager g() {
        TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
        trustManagerFactory.init((KeyStore) null);
        TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
        bff.d(trustManagers);
        if (trustManagers.length == 1) {
            TrustManager trustManager = trustManagers[0];
            if (trustManager instanceof X509TrustManager) {
                bff.ag(trustManager, "null cannot be cast to non-null type javax.net.ssl.X509TrustManager");
                X509TrustManager x509TrustManager = (X509TrustManager) trustManager;
                Conscrypt.setHostnameVerifier(x509TrustManager, hbc.f19160a);
                return x509TrustManager;
            }
        }
        String arrays = Arrays.toString(trustManagers);
        bff.e(arrays, "toString(this)");
        throw new IllegalStateException("Unexpected default trust managers: ".concat(arrays).toString());
    }
}

package g;

import java.security.KeyStore;
import java.security.Provider;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import org.bouncycastle.jsse.provider.BouncyCastleJsseProvider;

/* loaded from: classes3.dex */
public final class dtg extends bop {

    /* renamed from: a, reason: collision with root package name */
    public static final boolean f14764a;

    /* renamed from: b, reason: collision with root package name */
    public final Provider f14765b = new BouncyCastleJsseProvider();

    static {
        boolean z = false;
        try {
            Class.forName("org.bouncycastle.jsse.provider.BouncyCastleJsseProvider", false, egh.class.getClassLoader());
            z = true;
        } catch (ClassNotFoundException unused) {
        }
        f14764a = z;
    }

    @Override // g.bop
    public final SSLContext c() {
        SSLContext sSLContext = SSLContext.getInstance("TLS", this.f14765b);
        bff.e(sSLContext, "getInstance(\"TLS\", provider)");
        return sSLContext;
    }

    @Override // g.bop
    public final void d(SSLSocket sSLSocket, String str, List list) {
        bff.p(list, "protocols");
    }

    @Override // g.bop
    public final String f(SSLSocket sSLSocket) {
        return null;
    }

    @Override // g.bop
    public final X509TrustManager g() {
        TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance("PKIX", "BCJSSE");
        trustManagerFactory.init((KeyStore) null);
        TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
        bff.d(trustManagers);
        if (trustManagers.length == 1) {
            TrustManager trustManager = trustManagers[0];
            if (trustManager instanceof X509TrustManager) {
                bff.ag(trustManager, "null cannot be cast to non-null type javax.net.ssl.X509TrustManager");
                return (X509TrustManager) trustManager;
            }
        }
        String arrays = Arrays.toString(trustManagers);
        bff.e(arrays, "toString(this)");
        throw new IllegalStateException("Unexpected default trust managers: ".concat(arrays).toString());
    }
}

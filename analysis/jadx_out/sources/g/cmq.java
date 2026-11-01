package g;

import android.net.http.X509TrustManagerExtensions;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.X509TrustManager;

/* loaded from: classes3.dex */
public final class cmq extends aky {
    public final X509TrustManager aq;
    public final X509TrustManagerExtensions ar;

    public cmq(X509TrustManager x509TrustManager, X509TrustManagerExtensions x509TrustManagerExtensions) {
        this.aq = x509TrustManager;
        this.ar = x509TrustManagerExtensions;
    }

    @Override // g.aky
    public final List ap(String str, List list) {
        bff.p(list, "chain");
        bff.p(str, "hostname");
        try {
            List<X509Certificate> checkServerTrusted = this.ar.checkServerTrusted((X509Certificate[]) list.toArray(new X509Certificate[0]), "RSA", str);
            bff.e(checkServerTrusted, "x509TrustManagerExtensio…ficates, \"RSA\", hostname)");
            return checkServerTrusted;
        } catch (CertificateException e2) {
            SSLPeerUnverifiedException sSLPeerUnverifiedException = new SSLPeerUnverifiedException(e2.getMessage());
            sSLPeerUnverifiedException.initCause(e2);
            throw sSLPeerUnverifiedException;
        }
    }

    public final boolean equals(Object obj) {
        return (obj instanceof cmq) && ((cmq) obj).aq == this.aq;
    }

    public final int hashCode() {
        return System.identityHashCode(this.aq);
    }
}

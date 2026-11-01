package g;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.security.cert.TrustAnchor;
import java.security.cert.X509Certificate;
import javax.net.ssl.X509TrustManager;

/* loaded from: classes3.dex */
public final class ge implements bom {

    /* renamed from: a, reason: collision with root package name */
    public final X509TrustManager f17965a;

    /* renamed from: b, reason: collision with root package name */
    public final Method f17966b;

    public ge(X509TrustManager x509TrustManager, Method method) {
        this.f17965a = x509TrustManager;
        this.f17966b = method;
    }

    @Override // g.bom
    public final X509Certificate c(X509Certificate x509Certificate) {
        try {
            Object invoke = this.f17966b.invoke(this.f17965a, x509Certificate);
            bff.ag(invoke, "null cannot be cast to non-null type java.security.cert.TrustAnchor");
            return ((TrustAnchor) invoke).getTrustedCert();
        } catch (IllegalAccessException e2) {
            throw new AssertionError("unable to get issues and signature", e2);
        } catch (InvocationTargetException unused) {
            return null;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ge)) {
            return false;
        }
        ge geVar = (ge) obj;
        return bff.n(this.f17965a, geVar.f17965a) && bff.n(this.f17966b, geVar.f17966b);
    }

    public final int hashCode() {
        return this.f17966b.hashCode() + (this.f17965a.hashCode() * 31);
    }

    public final String toString() {
        return "CustomTrustRootIndex(trustManager=" + this.f17965a + ", findByIssuerAndSignatureMethod=" + this.f17966b + ')';
    }
}

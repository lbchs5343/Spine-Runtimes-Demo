package g;

import android.net.http.X509TrustManagerExtensions;
import android.os.Build;
import android.security.NetworkSecurityPolicy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.X509TrustManager;

/* loaded from: classes3.dex */
public final class gpj extends bop {

    /* renamed from: a, reason: collision with root package name */
    public static final boolean f18537a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f18538b;

    static {
        f18537a = cfg.i() && Build.VERSION.SDK_INT >= 29;
    }

    public gpj() {
        ArrayList b2 = fuv.b(new est[]{(!cfg.i() || Build.VERSION.SDK_INT < 29) ? null : new cvr(), new ds(fnm.f17084a), new ds(dji.f14275a), new ds(aua.f10848a)});
        ArrayList arrayList = new ArrayList();
        Iterator it = b2.iterator();
        while (it.hasNext()) {
            Object next = it.next();
            if (((est) next).f()) {
                arrayList.add(next);
            }
        }
        this.f18538b = arrayList;
    }

    @Override // g.bop
    public final void d(SSLSocket sSLSocket, String str, List list) {
        Object obj;
        bff.p(list, "protocols");
        Iterator it = this.f18538b.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            } else {
                obj = it.next();
                if (((est) obj).e(sSLSocket)) {
                    break;
                }
            }
        }
        est estVar = (est) obj;
        if (estVar != null) {
            estVar.c(sSLSocket, str, list);
        }
    }

    @Override // g.bop
    public final String f(SSLSocket sSLSocket) {
        Object obj;
        Iterator it = this.f18538b.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (((est) obj).e(sSLSocket)) {
                break;
            }
        }
        est estVar = (est) obj;
        if (estVar != null) {
            return estVar.g(sSLSocket);
        }
        return null;
    }

    @Override // g.bop
    public final boolean k(String str) {
        NetworkSecurityPolicy networkSecurityPolicy;
        boolean isCleartextTrafficPermitted;
        bff.p(str, "hostname");
        networkSecurityPolicy = NetworkSecurityPolicy.getInstance();
        isCleartextTrafficPermitted = networkSecurityPolicy.isCleartextTrafficPermitted(str);
        return isCleartextTrafficPermitted;
    }

    @Override // g.bop
    public final aky n(X509TrustManager x509TrustManager) {
        X509TrustManagerExtensions x509TrustManagerExtensions;
        try {
            x509TrustManagerExtensions = new X509TrustManagerExtensions(x509TrustManager);
        } catch (IllegalArgumentException unused) {
            x509TrustManagerExtensions = null;
        }
        cmq cmqVar = x509TrustManagerExtensions != null ? new cmq(x509TrustManager, x509TrustManagerExtensions) : null;
        return cmqVar != null ? cmqVar : new etu(p(x509TrustManager));
    }
}

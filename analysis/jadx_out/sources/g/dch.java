package g;

import android.net.http.X509TrustManagerExtensions;
import android.os.Build;
import android.security.NetworkSecurityPolicy;
import java.io.IOException;
import java.lang.reflect.Method;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.X509TrustManager;

/* loaded from: classes3.dex */
public final class dch extends bop {

    /* renamed from: a, reason: collision with root package name */
    public static final boolean f13954a;

    /* renamed from: b, reason: collision with root package name */
    public final dzh f13955b;
    public final ArrayList r;

    static {
        boolean z = false;
        if (cfg.i() && Build.VERSION.SDK_INT < 30) {
            z = true;
        }
        f13954a = z;
    }

    public dch() {
        ahk ahkVar;
        Method method;
        Method method2;
        Method method3;
        try {
            Class<?> cls = Class.forName("com.android.org.conscrypt".concat(".OpenSSLSocketImpl"));
            Class.forName("com.android.org.conscrypt".concat(".OpenSSLSocketFactoryImpl"));
            Class.forName("com.android.org.conscrypt".concat(".SSLParametersImpl"));
            ahkVar = new ahk(cls);
        } catch (Exception e2) {
            bop.h.getClass();
            bop.j(5, "unable to load android socket classes", e2);
            ahkVar = null;
        }
        ArrayList b2 = fuv.b(new est[]{ahkVar, new ds(fnm.f17084a), new ds(dji.f14275a), new ds(aua.f10848a)});
        ArrayList arrayList = new ArrayList();
        Iterator it = b2.iterator();
        while (it.hasNext()) {
            Object next = it.next();
            if (((est) next).f()) {
                arrayList.add(next);
            }
        }
        this.r = arrayList;
        try {
            Class<?> cls2 = Class.forName("dalvik.system.CloseGuard");
            Method method4 = cls2.getMethod("get", null);
            method2 = cls2.getMethod("open", String.class);
            method = method4;
            method3 = cls2.getMethod("warnIfOpen", null);
        } catch (Exception unused) {
            method = null;
            method2 = null;
            method3 = null;
        }
        this.f13955b = new dzh(method, method2, method3, 5, false);
    }

    @Override // g.bop
    public final void d(SSLSocket sSLSocket, String str, List list) {
        Object obj;
        bff.p(list, "protocols");
        Iterator it = this.r.iterator();
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
        Iterator it = this.r.iterator();
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
        NetworkSecurityPolicy networkSecurityPolicy2;
        boolean isCleartextTrafficPermitted2;
        bff.p(str, "hostname");
        int i = Build.VERSION.SDK_INT;
        if (i >= 24) {
            networkSecurityPolicy2 = NetworkSecurityPolicy.getInstance();
            isCleartextTrafficPermitted2 = networkSecurityPolicy2.isCleartextTrafficPermitted(str);
            return isCleartextTrafficPermitted2;
        }
        if (i < 23) {
            return true;
        }
        networkSecurityPolicy = NetworkSecurityPolicy.getInstance();
        isCleartextTrafficPermitted = networkSecurityPolicy.isCleartextTrafficPermitted();
        return isCleartextTrafficPermitted;
    }

    @Override // g.bop
    public final void l(Socket socket, InetSocketAddress inetSocketAddress, int i) {
        bff.p(inetSocketAddress, "address");
        try {
            socket.connect(inetSocketAddress, i);
        } catch (ClassCastException e2) {
            if (Build.VERSION.SDK_INT != 26) {
                throw e2;
            }
            throw new IOException("Exception in connect", e2);
        }
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

    @Override // g.bop
    public final void o(Object obj, String str) {
        bff.p(str, "message");
        dzh dzhVar = this.f13955b;
        dzhVar.getClass();
        if (obj != null) {
            try {
                Method method = (Method) dzhVar.f15122g;
                bff.d(method);
                method.invoke(obj, null);
                return;
            } catch (Exception unused) {
            }
        }
        bop.j(5, str, null);
    }

    @Override // g.bop
    public final bom p(X509TrustManager x509TrustManager) {
        try {
            Method declaredMethod = x509TrustManager.getClass().getDeclaredMethod("findTrustAnchorByIssuerAndSignature", X509Certificate.class);
            declaredMethod.setAccessible(true);
            return new ge(x509TrustManager, declaredMethod);
        } catch (NoSuchMethodException unused) {
            return super.p(x509TrustManager);
        }
    }

    @Override // g.bop
    public final Object q() {
        dzh dzhVar = this.f13955b;
        dzhVar.getClass();
        Method method = (Method) dzhVar.i;
        if (method != null) {
            try {
                Object invoke = method.invoke(null, null);
                Method method2 = (Method) dzhVar.f15121f;
                bff.d(method2);
                method2.invoke(invoke, "response.body().close()");
                return invoke;
            } catch (Exception unused) {
            }
        }
        return null;
    }
}

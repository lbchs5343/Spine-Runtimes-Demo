package g;

import android.util.Log;
import com.bytedance.sdk.openadsdk.mediation.init.MediationConfigUserInfoForSegment;
import java.lang.reflect.Method;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.security.Security;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;

/* loaded from: classes3.dex */
public class bop {
    public static volatile bop h;
    public static final Logger i;

    /* JADX WARN: Code restructure failed: missing block: B:39:0x0091, code lost:
    
        if (r0 != null) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00b2, code lost:
    
        if (r0 != null) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00d3, code lost:
    
        if (r0 != null) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00fb, code lost:
    
        if (java.lang.Integer.parseInt(r3) >= 9) goto L66;
     */
    /* JADX WARN: Removed duplicated region for block: B:71:0x015d  */
    static {
        bop baaVar;
        if (cfg.i()) {
            for (Map.Entry entry : cum.f13537b.entrySet()) {
                String str = (String) entry.getKey();
                String str2 = (String) entry.getValue();
                Logger logger = Logger.getLogger(str);
                if (cum.f13536a.add(logger)) {
                    logger.setUseParentHandlers(false);
                    logger.setLevel(Log.isLoggable(str2, 3) ? Level.FINE : Log.isLoggable(str2, 4) ? Level.INFO : Level.WARNING);
                    logger.addHandler(gmp.f18408a);
                }
            }
            baaVar = gpj.f18537a ? new gpj() : null;
            if (baaVar == null) {
                r2 = dch.f13954a ? new dch() : null;
                bff.d(r2);
                baaVar = r2;
            }
        } else {
            if ("Conscrypt".equals(Security.getProviders()[0].getName())) {
                baaVar = lg.f19587a ? new lg() : null;
            }
            if ("BC".equals(Security.getProviders()[0].getName())) {
                baaVar = dtg.f14764a ? new dtg() : null;
            }
            if ("OpenJSSE".equals(Security.getProviders()[0].getName())) {
                baaVar = chn.f12880a ? new chn() : null;
            }
            baaVar = baa.f11149a ? new baa() : null;
            if (baaVar == null) {
                String property = System.getProperty("java.specification.version", MediationConfigUserInfoForSegment.GENDER_UNKNOWN);
                try {
                    bff.e(property, "jvmVersion");
                } catch (NumberFormatException unused) {
                }
            }
        }
        h = baaVar;
        i = Logger.getLogger(fys.class.getName());
        if (r2 == null) {
            baaVar = new bop();
            h = baaVar;
            i = Logger.getLogger(fys.class.getName());
        }
        baaVar = r2;
        h = baaVar;
        i = Logger.getLogger(fys.class.getName());
        try {
            Class<?> cls = Class.forName("org.eclipse.jetty.alpn.ALPN", true, null);
            Class<?> cls2 = Class.forName("org.eclipse.jetty.alpn.ALPN$Provider", true, null);
            Class<?> cls3 = Class.forName("org.eclipse.jetty.alpn.ALPN$ClientProvider", true, null);
            Class<?> cls4 = Class.forName("org.eclipse.jetty.alpn.ALPN$ServerProvider", true, null);
            Method method = cls.getMethod("put", SSLSocket.class, cls2);
            Method method2 = cls.getMethod("get", SSLSocket.class);
            Method method3 = cls.getMethod("remove", SSLSocket.class);
            bff.e(method, "putMethod");
            bff.e(method2, "getMethod");
            bff.e(method3, "removeMethod");
            bff.e(cls3, "clientProviderClass");
            bff.e(cls4, "serverProviderClass");
            r2 = new bxo(method, method2, method3, cls3, cls4);
        } catch (ClassNotFoundException | NoSuchMethodException unused2) {
        }
        if (r2 == null) {
        }
        baaVar = r2;
        h = baaVar;
        i = Logger.getLogger(fys.class.getName());
    }

    public static void j(int i2, String str, Throwable th) {
        bff.p(str, "message");
        i.log(i2 == 5 ? Level.WARNING : Level.INFO, str, th);
    }

    public SSLContext c() {
        SSLContext sSLContext = SSLContext.getInstance("TLS");
        bff.e(sSLContext, "getInstance(\"TLS\")");
        return sSLContext;
    }

    public void d(SSLSocket sSLSocket, String str, List list) {
        bff.p(list, "protocols");
    }

    public SSLSocketFactory e(X509TrustManager x509TrustManager) {
        try {
            SSLContext c2 = c();
            c2.init(null, new TrustManager[]{x509TrustManager}, null);
            SSLSocketFactory socketFactory = c2.getSocketFactory();
            bff.e(socketFactory, "newSSLContext().apply {\n…ll)\n      }.socketFactory");
            return socketFactory;
        } catch (GeneralSecurityException e2) {
            throw new AssertionError("No System TLS: " + e2, e2);
        }
    }

    public String f(SSLSocket sSLSocket) {
        return null;
    }

    public X509TrustManager g() {
        TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
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

    public boolean k(String str) {
        bff.p(str, "hostname");
        return true;
    }

    public void l(Socket socket, InetSocketAddress inetSocketAddress, int i2) {
        bff.p(inetSocketAddress, "address");
        socket.connect(inetSocketAddress, i2);
    }

    public void m(SSLSocket sSLSocket) {
    }

    public aky n(X509TrustManager x509TrustManager) {
        return new etu(p(x509TrustManager));
    }

    public void o(Object obj, String str) {
        bff.p(str, "message");
        if (obj == null) {
            str = str.concat(" To see where this was allocated, set the OkHttpClient logger level to FINE: Logger.getLogger(OkHttpClient.class.getName()).setLevel(Level.FINE);");
        }
        j(5, str, (Throwable) obj);
    }

    public bom p(X509TrustManager x509TrustManager) {
        X509Certificate[] acceptedIssuers = x509TrustManager.getAcceptedIssuers();
        bff.e(acceptedIssuers, "trustManager.acceptedIssuers");
        return new hw((X509Certificate[]) Arrays.copyOf(acceptedIssuers, acceptedIssuers.length));
    }

    public Object q() {
        if (i.isLoggable(Level.FINE)) {
            return new Throwable("response.body().close()");
        }
        return null;
    }

    public final String toString() {
        return getClass().getSimpleName();
    }
}

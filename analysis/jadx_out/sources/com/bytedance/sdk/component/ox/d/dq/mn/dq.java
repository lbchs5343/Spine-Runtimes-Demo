package com.bytedance.sdk.component.ox.d.dq.mn;

import android.net.ssl.SSLSockets;
import android.os.Build;
import android.util.Log;
import com.bytedance.sdk.component.ox.d.dq.kk.iw;
import com.bytedance.sdk.component.ox.d.wp;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import g.ayr;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.Security;
import java.security.cert.Certificate;
import java.security.cert.TrustAnchor;
import java.security.cert.X509Certificate;
import java.util.Collections;
import java.util.List;
import javax.net.ssl.SNIHostName;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.X509TrustManager;

/* loaded from: classes.dex */
class dq extends s {

    /* renamed from: d, reason: collision with root package name */
    private final p<Socket> f2064d;
    private final Class<?> dq;
    private final ox iw = ox.dq();
    private final p<Socket> ox;
    private final p<Socket> p;
    private final p<Socket> s;

    public static final class d implements iw {

        /* renamed from: d, reason: collision with root package name */
        private final Method f2065d;
        private final X509TrustManager dq;

        public d(X509TrustManager x509TrustManager, Method method) {
            this.f2065d = method;
            this.dq = x509TrustManager;
        }

        @Override // com.bytedance.sdk.component.ox.d.dq.kk.iw
        public X509Certificate dq(X509Certificate x509Certificate) {
            try {
                TrustAnchor trustAnchor = (TrustAnchor) this.f2065d.invoke(this.dq, x509Certificate);
                if (trustAnchor != null) {
                    return trustAnchor.getTrustedCert();
                }
            } catch (IllegalAccessException e2) {
                throw com.bytedance.sdk.component.ox.d.dq.ox.dq("unable to get issues and signature", (Exception) e2);
            } catch (InvocationTargetException unused) {
            }
            return null;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            return this.dq.equals(dVar.dq) && this.f2065d.equals(dVar.f2065d);
        }

        public int hashCode() {
            return (this.f2065d.hashCode() * 31) + this.dq.hashCode();
        }
    }

    /* renamed from: com.bytedance.sdk.component.ox.d.dq.mn.dq$dq, reason: collision with other inner class name */
    public static final class C0126dq extends com.bytedance.sdk.component.ox.d.dq.kk.ox {

        /* renamed from: d, reason: collision with root package name */
        private final Method f2066d;
        private final Object dq;

        public C0126dq(Object obj, Method method) {
            this.dq = obj;
            this.f2066d = method;
        }

        @Override // com.bytedance.sdk.component.ox.d.dq.kk.ox
        public List<Certificate> dq(List<Certificate> list, String str) throws SSLPeerUnverifiedException {
            try {
                return (List) this.f2066d.invoke(this.dq, (X509Certificate[]) list.toArray(new X509Certificate[list.size()]), "RSA", str);
            } catch (IllegalAccessException e2) {
                throw new AssertionError(e2);
            } catch (InvocationTargetException e3) {
                SSLPeerUnverifiedException sSLPeerUnverifiedException = new SSLPeerUnverifiedException(e3.getMessage());
                sSLPeerUnverifiedException.initCause(e3);
                throw sSLPeerUnverifiedException;
            }
        }

        public boolean equals(Object obj) {
            return obj instanceof C0126dq;
        }

        public int hashCode() {
            return 0;
        }
    }

    public static final class ox {

        /* renamed from: d, reason: collision with root package name */
        private final Method f2067d;
        private final Method dq;
        private final Method ox;

        public ox(Method method, Method method2, Method method3) {
            this.dq = method;
            this.f2067d = method2;
            this.ox = method3;
        }

        public static ox dq() {
            Method method;
            Method method2;
            Method method3 = null;
            try {
                Class<?> cls = Class.forName("dalvik.system.CloseGuard");
                Method method4 = cls.getMethod("get", null);
                method2 = cls.getMethod("open", String.class);
                method = cls.getMethod("warnIfOpen", null);
                method3 = method4;
            } catch (Exception unused) {
                method = null;
                method2 = null;
            }
            return new ox(method3, method2, method);
        }

        public Object dq(String str) {
            Method method = this.dq;
            if (method != null) {
                try {
                    Object invoke = method.invoke(null, null);
                    this.f2067d.invoke(invoke, str);
                    return invoke;
                } catch (Exception unused) {
                }
            }
            return null;
        }

        public boolean dq(Object obj) {
            if (obj == null) {
                return false;
            }
            try {
                this.ox.invoke(obj, null);
                return true;
            } catch (Exception unused) {
                return false;
            }
        }
    }

    public dq(Class<?> cls, p<Socket> pVar, p<Socket> pVar2, p<Socket> pVar3, p<Socket> pVar4) {
        this.dq = cls;
        this.f2064d = pVar;
        this.ox = pVar2;
        this.p = pVar3;
        this.s = pVar4;
    }

    private boolean d(String str, Class<?> cls, Object obj) throws InvocationTargetException, IllegalAccessException {
        try {
            return ((Boolean) cls.getMethod("isCleartextTrafficPermitted", null).invoke(obj, null)).booleanValue();
        } catch (NoSuchMethodException unused) {
            return super.d(str);
        }
    }

    public static s dq() {
        Class<?> cls;
        p pVar;
        p pVar2;
        try {
            try {
                cls = Class.forName("com.android.org.conscrypt.SSLParametersImpl");
            } catch (ClassNotFoundException unused) {
                cls = Class.forName("org.apache.harmony.xnet.provider.jsse.SSLParametersImpl");
            }
            Class<?> cls2 = cls;
            p pVar3 = new p(null, "setUseSessionTickets", Boolean.TYPE);
            p pVar4 = new p(null, "setHostname", String.class);
            if (p()) {
                p pVar5 = new p(byte[].class, "getAlpnSelectedProtocol", new Class[0]);
                pVar2 = new p(null, "setAlpnProtocols", byte[].class);
                pVar = pVar5;
            } else {
                pVar = null;
                pVar2 = null;
            }
            return new dq(cls2, pVar3, pVar4, pVar, pVar2);
        } catch (ClassNotFoundException unused2) {
            return null;
        }
    }

    private boolean dq(String str, Class<?> cls, Object obj) throws InvocationTargetException, IllegalAccessException {
        try {
            return ((Boolean) cls.getMethod("isCleartextTrafficPermitted", String.class).invoke(obj, str)).booleanValue();
        } catch (NoSuchMethodException unused) {
            return d(str, cls, obj);
        }
    }

    private static boolean p() {
        if (Security.getProvider("GMSCore_OpenSSL") != null) {
            return true;
        }
        try {
            Class.forName("android.net.Network");
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    @Override // com.bytedance.sdk.component.ox.d.dq.mn.s
    public iw d(X509TrustManager x509TrustManager) {
        try {
            Method declaredMethod = x509TrustManager.getClass().getDeclaredMethod("findTrustAnchorByIssuerAndSignature", X509Certificate.class);
            declaredMethod.setAccessible(true);
            return new d(x509TrustManager, declaredMethod);
        } catch (NoSuchMethodException unused) {
            return super.d(x509TrustManager);
        }
    }

    @Override // com.bytedance.sdk.component.ox.d.dq.mn.s
    public boolean d(String str) {
        try {
            Class<?> cls = Class.forName("android.security.NetworkSecurityPolicy");
            return dq(str, cls, cls.getMethod("getInstance", null).invoke(null, null));
        } catch (ClassNotFoundException | NoSuchMethodException unused) {
            return super.d(str);
        } catch (IllegalAccessException e2) {
            e = e2;
            throw com.bytedance.sdk.component.ox.d.dq.ox.dq("unable to determine cleartext support", e);
        } catch (IllegalArgumentException e3) {
            e = e3;
            throw com.bytedance.sdk.component.ox.d.dq.ox.dq("unable to determine cleartext support", e);
        } catch (NoClassDefFoundError unused2) {
            if (Build.VERSION.SDK_INT < 23) {
                return super.d(str);
            }
            return false;
        } catch (InvocationTargetException e4) {
            e = e4;
            throw com.bytedance.sdk.component.ox.d.dq.ox.dq("unable to determine cleartext support", e);
        }
    }

    @Override // com.bytedance.sdk.component.ox.d.dq.mn.s
    public com.bytedance.sdk.component.ox.d.dq.kk.ox dq(X509TrustManager x509TrustManager) {
        try {
            Class<?> cls = Class.forName("android.net.http.X509TrustManagerExtensions");
            return new C0126dq(cls.getConstructor(X509TrustManager.class).newInstance(x509TrustManager), cls.getMethod("checkServerTrusted", X509Certificate[].class, String.class, String.class));
        } catch (Exception unused) {
            return super.dq(x509TrustManager);
        }
    }

    @Override // com.bytedance.sdk.component.ox.d.dq.mn.s
    public Object dq(String str) {
        return this.iw.dq(str);
    }

    @Override // com.bytedance.sdk.component.ox.d.dq.mn.s
    public String dq(SSLSocket sSLSocket) {
        byte[] bArr;
        p<Socket> pVar = this.p;
        if (pVar == null || !pVar.dq((p<Socket>) sSLSocket) || (bArr = (byte[]) this.p.p(sSLSocket, new Object[0])) == null) {
            return null;
        }
        return new String(bArr, com.bytedance.sdk.component.ox.d.dq.ox.s);
    }

    @Override // com.bytedance.sdk.component.ox.d.dq.mn.s
    public void dq(int i, String str, Throwable th) {
        int min;
        int i2 = i != 5 ? 3 : 5;
        if (th != null) {
            str = str + '\n' + Log.getStackTraceString(th);
        }
        int length = str.length();
        int i3 = 0;
        while (i3 < length) {
            int indexOf = str.indexOf(10, i3);
            if (indexOf == -1) {
                indexOf = length;
            }
            while (true) {
                min = Math.min(indexOf, i3 + TTAdConstant.INIT_LOCAL_FAIL_CODE);
                Log.println(i2, "OkHttp", str.substring(i3, min));
                if (min >= indexOf) {
                    break;
                } else {
                    i3 = min;
                }
            }
            i3 = min + 1;
        }
    }

    @Override // com.bytedance.sdk.component.ox.d.dq.mn.s
    public void dq(String str, Object obj) {
        if (this.iw.dq(obj)) {
            return;
        }
        dq(5, str, (Throwable) null);
    }

    @Override // com.bytedance.sdk.component.ox.d.dq.mn.s
    public void dq(Socket socket, InetSocketAddress inetSocketAddress, int i) throws IOException {
        try {
            socket.connect(inetSocketAddress, i);
        } catch (AssertionError e2) {
            if (!com.bytedance.sdk.component.ox.d.dq.ox.dq(e2)) {
                throw e2;
            }
            throw new IOException(e2);
        } catch (ClassCastException e3) {
            if (Build.VERSION.SDK_INT != 26) {
                throw e3;
            }
            IOException iOException = new IOException("Exception in connect");
            iOException.initCause(e3);
            throw iOException;
        } catch (SecurityException e4) {
            IOException iOException2 = new IOException("Exception in connect");
            iOException2.initCause(e4);
            throw iOException2;
        } catch (Exception unused) {
        }
    }

    @Override // com.bytedance.sdk.component.ox.d.dq.mn.s
    public void dq(SSLSocket sSLSocket, String str, List<wp> list) {
        if (str != null) {
            if (Build.VERSION.SDK_INT >= 30) {
                try {
                    SSLSockets.setUseSessionTickets(sSLSocket, true);
                    ayr.n();
                    SNIHostName w = ayr.w(str);
                    SSLParameters sSLParameters = sSLSocket.getSSLParameters();
                    sSLParameters.setServerNames(Collections.singletonList(w));
                    sSLSocket.setSSLParameters(sSLParameters);
                } catch (Throwable unused) {
                }
            } else {
                this.f2064d.d(sSLSocket, Boolean.TRUE);
                this.ox.d(sSLSocket, str);
            }
        }
        p<Socket> pVar = this.s;
        if (pVar == null || !pVar.dq((p<Socket>) sSLSocket)) {
            return;
        }
        this.s.p(sSLSocket, s.d(list));
    }
}

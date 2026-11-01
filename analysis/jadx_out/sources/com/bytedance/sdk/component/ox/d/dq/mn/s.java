package com.bytedance.sdk.component.ox.d.dq.mn;

import com.bytedance.sdk.component.ox.d.dq.kk.iw;
import com.bytedance.sdk.component.ox.d.k;
import com.bytedance.sdk.component.ox.d.wp;
import g.awf;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.X509TrustManager;

/* loaded from: classes.dex */
public class s {
    private static final s dq = dq();

    /* renamed from: d, reason: collision with root package name */
    private static final Logger f2071d = Logger.getLogger(k.class.getName());

    public static s d() {
        return dq;
    }

    public static byte[] d(List<wp> list) {
        com.bytedance.sdk.component.ox.dq.ox oxVar = new com.bytedance.sdk.component.ox.dq.ox();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            wp wpVar = list.get(i);
            if (wpVar != wp.HTTP_1_0) {
                oxVar.kk(wpVar.toString().length());
                oxVar.d(wpVar.toString());
            }
        }
        try {
            return oxVar.fw();
        } catch (IOException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    private static s dq() {
        s dq2 = dq.dq();
        if (dq2 != null) {
            return dq2;
        }
        d dq3 = d.dq();
        if (dq3 != null) {
            return dq3;
        }
        s dq4 = ox.dq();
        return dq4 != null ? dq4 : new s();
    }

    public static List<String> dq(List<wp> list) {
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i = 0; i < size; i++) {
            wp wpVar = list.get(i);
            if (wpVar != wp.HTTP_1_0) {
                arrayList.add(wpVar.toString());
            }
        }
        return arrayList;
    }

    public iw d(X509TrustManager x509TrustManager) {
        return new com.bytedance.sdk.component.ox.d.dq.kk.d(x509TrustManager.getAcceptedIssuers());
    }

    public void d(SSLSocket sSLSocket) {
    }

    public boolean d(String str) {
        return true;
    }

    public com.bytedance.sdk.component.ox.d.dq.kk.ox dq(X509TrustManager x509TrustManager) {
        return new com.bytedance.sdk.component.ox.d.dq.kk.dq(d(x509TrustManager));
    }

    public Object dq(String str) {
        if (f2071d.isLoggable(Level.FINE)) {
            return new Throwable(str);
        }
        return null;
    }

    public String dq(SSLSocket sSLSocket) {
        return null;
    }

    public void dq(int i, String str, Throwable th) {
        f2071d.log(i == 5 ? Level.WARNING : Level.INFO, str, th);
    }

    public void dq(String str, Object obj) {
        if (obj == null) {
            str = awf.c(str, " To see where this was allocated, set the OkHttpClient logger level to FINE: Logger.getLogger(OkHttpClient.class.getName()).setLevel(Level.FINE);");
        }
        dq(5, str, (Throwable) obj);
    }

    public void dq(Socket socket, InetSocketAddress inetSocketAddress, int i) throws IOException {
        socket.connect(inetSocketAddress, i);
    }

    public void dq(SSLSocket sSLSocket, String str, List<wp> list) {
    }

    public String ox() {
        return "OkHttp";
    }
}

package com.bytedance.sdk.component.ox.d.dq.kk;

import java.security.cert.Certificate;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.X509TrustManager;

/* loaded from: classes.dex */
public abstract class ox {
    public static ox dq(X509TrustManager x509TrustManager) {
        return com.bytedance.sdk.component.ox.d.dq.mn.s.d().dq(x509TrustManager);
    }

    public abstract List<Certificate> dq(List<Certificate> list, String str) throws SSLPeerUnverifiedException;
}

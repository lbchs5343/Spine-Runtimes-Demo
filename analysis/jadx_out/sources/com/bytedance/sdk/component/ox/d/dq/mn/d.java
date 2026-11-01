package com.bytedance.sdk.component.ox.d.dq.mn;

import com.bytedance.sdk.component.ox.d.wp;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;

/* loaded from: classes.dex */
final class d extends s {

    /* renamed from: d, reason: collision with root package name */
    final Method f2063d;
    final Method dq;

    public d(Method method, Method method2) {
        this.dq = method;
        this.f2063d = method2;
    }

    public static d dq() {
        try {
            return new d(SSLParameters.class.getMethod("setApplicationProtocols", String[].class), SSLSocket.class.getMethod("getApplicationProtocol", null));
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    @Override // com.bytedance.sdk.component.ox.d.dq.mn.s
    public String dq(SSLSocket sSLSocket) {
        try {
            String str = (String) this.f2063d.invoke(sSLSocket, null);
            if (str != null) {
                if (!str.equals("")) {
                    return str;
                }
            }
            return null;
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw com.bytedance.sdk.component.ox.d.dq.ox.dq("unable to get selected protocols", (Exception) e2);
        }
    }

    @Override // com.bytedance.sdk.component.ox.d.dq.mn.s
    public void dq(SSLSocket sSLSocket, String str, List<wp> list) {
        try {
            SSLParameters sSLParameters = sSLSocket.getSSLParameters();
            List<String> dq = s.dq(list);
            this.dq.invoke(sSLParameters, dq.toArray(new String[dq.size()]));
            sSLSocket.setSSLParameters(sSLParameters);
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw com.bytedance.sdk.component.ox.d.dq.ox.dq("unable to set ssl parameters", (Exception) e2);
        }
    }
}

package com.bytedance.sdk.component.ox.d.dq.d;

import com.bytedance.sdk.component.ox.d.no;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.UnknownServiceException;
import java.security.cert.CertificateException;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLProtocolException;
import javax.net.ssl.SSLSocket;

/* loaded from: classes.dex */
public final class d {

    /* renamed from: d, reason: collision with root package name */
    private int f2046d = 0;
    private final List<no> dq;
    private boolean ox;
    private boolean p;

    public d(List<no> list) {
        this.dq = list;
    }

    private boolean d(SSLSocket sSLSocket) {
        for (int i = this.f2046d; i < this.dq.size(); i++) {
            if (this.dq.get(i).dq(sSLSocket)) {
                return true;
            }
        }
        return false;
    }

    public no dq(SSLSocket sSLSocket) throws IOException {
        no noVar;
        int i = this.f2046d;
        int size = this.dq.size();
        while (true) {
            if (i >= size) {
                noVar = null;
                break;
            }
            noVar = this.dq.get(i);
            if (noVar.dq(sSLSocket)) {
                this.f2046d = i + 1;
                break;
            }
            i++;
        }
        if (noVar != null) {
            this.ox = d(sSLSocket);
            com.bytedance.sdk.component.ox.d.dq.dq.dq.dq(noVar, sSLSocket, this.p);
            return noVar;
        }
        throw new UnknownServiceException("Unable to find acceptable protocols. isFallback=" + this.p + ", modes=" + this.dq + ", supported protocols=" + Arrays.toString(sSLSocket.getEnabledProtocols()));
    }

    public boolean dq(IOException iOException) {
        this.p = true;
        if (!this.ox || (iOException instanceof ProtocolException) || (iOException instanceof InterruptedIOException)) {
            return false;
        }
        boolean z = iOException instanceof SSLHandshakeException;
        if ((z && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException)) {
            return false;
        }
        return z || (iOException instanceof SSLProtocolException);
    }
}

package com.bytedance.sdk.component.ox.d;

import java.security.cert.Certificate;
import java.util.Collections;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;

/* loaded from: classes.dex */
public final class fw {

    /* renamed from: d, reason: collision with root package name */
    private final ia f2107d;
    private final ir dq;
    private final List<Certificate> ox;
    private final List<Certificate> p;

    private fw(ir irVar, ia iaVar, List<Certificate> list, List<Certificate> list2) {
        this.dq = irVar;
        this.f2107d = iaVar;
        this.ox = list;
        this.p = list2;
    }

    public static fw dq(SSLSession sSLSession) {
        String str;
        Certificate[] certificateArr = null;
        try {
            str = sSLSession.getCipherSuite();
        } catch (Exception unused) {
            str = null;
        }
        if (str == null) {
            throw new IllegalStateException("cipherSuite == null");
        }
        ia dq = ia.dq(str);
        String protocol = sSLSession.getProtocol();
        if (protocol == null) {
            throw new IllegalStateException("tlsVersion == null");
        }
        ir dq2 = ir.dq(protocol);
        try {
            certificateArr = sSLSession.getPeerCertificates();
        } catch (SSLPeerUnverifiedException unused2) {
        }
        List dq3 = certificateArr != null ? com.bytedance.sdk.component.ox.d.dq.ox.dq(certificateArr) : Collections.EMPTY_LIST;
        Certificate[] localCertificates = sSLSession.getLocalCertificates();
        return new fw(dq2, dq, dq3, localCertificates != null ? com.bytedance.sdk.component.ox.d.dq.ox.dq(localCertificates) : Collections.EMPTY_LIST);
    }

    public ia d() {
        return this.f2107d;
    }

    public ir dq() {
        return this.dq;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof fw)) {
            return false;
        }
        fw fwVar = (fw) obj;
        return this.dq.equals(fwVar.dq) && this.f2107d.equals(fwVar.f2107d) && this.ox.equals(fwVar.ox) && this.p.equals(fwVar.p);
    }

    public int hashCode() {
        return this.p.hashCode() + ((this.ox.hashCode() + ((this.f2107d.hashCode() + ((this.dq.hashCode() + 527) * 31)) * 31)) * 31);
    }

    public List<Certificate> ox() {
        return this.ox;
    }

    public List<Certificate> p() {
        return this.p;
    }
}

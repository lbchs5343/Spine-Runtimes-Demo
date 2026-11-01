package com.bytedance.sdk.component.ox.d;

import com.bytedance.sdk.component.ox.d.gh;
import java.net.Proxy;
import java.net.ProxySelector;
import java.util.List;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;

/* loaded from: classes.dex */
public final class dq {

    /* renamed from: d, reason: collision with root package name */
    final jy f2044d;
    final gh dq;
    final Proxy ia;
    final List<no> iw;
    final SSLSocketFactory kk;
    final ProxySelector mn;
    final mn no;
    final HostnameVerifier o;
    final SocketFactory ox;
    final d p;
    final List<wp> s;

    public dq(String str, int i, jy jyVar, SocketFactory socketFactory, SSLSocketFactory sSLSocketFactory, HostnameVerifier hostnameVerifier, mn mnVar, d dVar, Proxy proxy, List<wp> list, List<no> list2, ProxySelector proxySelector) {
        this.dq = new gh.dq().dq(sSLSocketFactory != null ? "https" : "http").p(str).dq(i).ox();
        if (jyVar == null) {
            throw new NullPointerException("dns == null");
        }
        this.f2044d = jyVar;
        if (socketFactory == null) {
            throw new NullPointerException("socketFactory == null");
        }
        this.ox = socketFactory;
        if (dVar == null) {
            throw new NullPointerException("proxyAuthenticator == null");
        }
        this.p = dVar;
        if (list == null) {
            throw new NullPointerException("protocols == null");
        }
        this.s = com.bytedance.sdk.component.ox.d.dq.ox.dq(list);
        if (list2 == null) {
            throw new NullPointerException("connectionSpecs == null");
        }
        this.iw = com.bytedance.sdk.component.ox.d.dq.ox.dq(list2);
        if (proxySelector == null) {
            throw new NullPointerException("proxySelector == null");
        }
        this.mn = proxySelector;
        this.ia = proxy;
        this.kk = sSLSocketFactory;
        this.o = hostnameVerifier;
        this.no = mnVar;
    }

    public jy d() {
        return this.f2044d;
    }

    public gh dq() {
        return this.dq;
    }

    public boolean dq(dq dqVar) {
        return this.f2044d.equals(dqVar.f2044d) && this.p.equals(dqVar.p) && this.s.equals(dqVar.s) && this.iw.equals(dqVar.iw) && this.mn.equals(dqVar.mn) && com.bytedance.sdk.component.ox.d.dq.ox.dq(this.ia, dqVar.ia) && com.bytedance.sdk.component.ox.d.dq.ox.dq(this.kk, dqVar.kk) && com.bytedance.sdk.component.ox.d.dq.ox.dq(this.o, dqVar.o) && com.bytedance.sdk.component.ox.d.dq.ox.dq(this.no, dqVar.no) && dq().ia() == dqVar.dq().ia();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof dq)) {
            return false;
        }
        dq dqVar = (dq) obj;
        return this.dq.equals(dqVar.dq) && dq(dqVar);
    }

    public int hashCode() {
        int hashCode = (this.mn.hashCode() + ((this.iw.hashCode() + ((this.s.hashCode() + ((this.p.hashCode() + ((this.f2044d.hashCode() + ((this.dq.hashCode() + 527) * 31)) * 31)) * 31)) * 31)) * 31)) * 31;
        Proxy proxy = this.ia;
        int hashCode2 = (hashCode + (proxy != null ? proxy.hashCode() : 0)) * 31;
        SSLSocketFactory sSLSocketFactory = this.kk;
        int hashCode3 = (hashCode2 + (sSLSocketFactory != null ? sSLSocketFactory.hashCode() : 0)) * 31;
        HostnameVerifier hostnameVerifier = this.o;
        int hashCode4 = (hashCode3 + (hostnameVerifier != null ? hostnameVerifier.hashCode() : 0)) * 31;
        mn mnVar = this.no;
        return hashCode4 + (mnVar != null ? mnVar.hashCode() : 0);
    }

    public Proxy ia() {
        return this.ia;
    }

    public List<no> iw() {
        return this.iw;
    }

    public SSLSocketFactory kk() {
        return this.kk;
    }

    public ProxySelector mn() {
        return this.mn;
    }

    public mn no() {
        return this.no;
    }

    public HostnameVerifier o() {
        return this.o;
    }

    public SocketFactory ox() {
        return this.ox;
    }

    public d p() {
        return this.p;
    }

    public List<wp> s() {
        return this.s;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Address{");
        sb.append(this.dq.mn());
        sb.append(":");
        sb.append(this.dq.ia());
        if (this.ia != null) {
            sb.append(", proxy=");
            sb.append(this.ia);
        } else {
            sb.append(", proxySelector=");
            sb.append(this.mn);
        }
        sb.append("}");
        return sb.toString();
    }
}

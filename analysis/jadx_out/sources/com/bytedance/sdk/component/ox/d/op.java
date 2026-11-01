package com.bytedance.sdk.component.ox.d;

import java.net.InetSocketAddress;
import java.net.Proxy;

/* loaded from: classes.dex */
public final class op {

    /* renamed from: d, reason: collision with root package name */
    final Proxy f2140d;
    final dq dq;
    final InetSocketAddress ox;

    public op(dq dqVar, Proxy proxy, InetSocketAddress inetSocketAddress) {
        if (dqVar == null) {
            throw new NullPointerException("address == null");
        }
        if (proxy == null) {
            throw new NullPointerException("proxy == null");
        }
        if (inetSocketAddress == null) {
            throw new NullPointerException("inetSocketAddress == null");
        }
        this.dq = dqVar;
        this.f2140d = proxy;
        this.ox = inetSocketAddress;
    }

    public Proxy d() {
        return this.f2140d;
    }

    public dq dq() {
        return this.dq;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof op)) {
            return false;
        }
        op opVar = (op) obj;
        return opVar.dq.equals(this.dq) && opVar.f2140d.equals(this.f2140d) && opVar.ox.equals(this.ox);
    }

    public int hashCode() {
        return this.ox.hashCode() + ((this.f2140d.hashCode() + ((this.dq.hashCode() + 527) * 31)) * 31);
    }

    public InetSocketAddress ox() {
        return this.ox;
    }

    public boolean p() {
        return this.dq.kk != null && this.f2140d.type() == Proxy.Type.HTTP;
    }

    public String toString() {
        return "Route{" + this.ox + "}";
    }
}

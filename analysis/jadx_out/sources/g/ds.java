package g;

import java.util.List;
import javax.net.ssl.SSLSocket;

/* loaded from: classes3.dex */
public final class ds implements est {

    /* renamed from: a, reason: collision with root package name */
    public final gyi f14691a;

    /* renamed from: b, reason: collision with root package name */
    public est f14692b;

    public ds(gyi gyiVar) {
        this.f14691a = gyiVar;
    }

    @Override // g.est
    public final void c(SSLSocket sSLSocket, String str, List list) {
        bff.p(list, "protocols");
        est d2 = d(sSLSocket);
        if (d2 != null) {
            d2.c(sSLSocket, str, list);
        }
    }

    public final synchronized est d(SSLSocket sSLSocket) {
        try {
            if (this.f14692b == null && this.f14691a.a(sSLSocket)) {
                this.f14692b = this.f14691a.b(sSLSocket);
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f14692b;
    }

    @Override // g.est
    public final boolean e(SSLSocket sSLSocket) {
        return this.f14691a.a(sSLSocket);
    }

    @Override // g.est
    public final boolean f() {
        return true;
    }

    @Override // g.est
    public final String g(SSLSocket sSLSocket) {
        est d2 = d(sSLSocket);
        if (d2 != null) {
            return d2.g(sSLSocket);
        }
        return null;
    }
}

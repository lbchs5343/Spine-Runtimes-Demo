package g;

import j$.util.Objects;
import java.net.ProxySelector;
import java.util.List;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;

/* loaded from: classes3.dex */
public final class cbm {

    /* renamed from: a, reason: collision with root package name */
    public final eyn f12590a;

    /* renamed from: b, reason: collision with root package name */
    public final HostnameVerifier f12591b;

    /* renamed from: c, reason: collision with root package name */
    public final bws f12592c;

    /* renamed from: d, reason: collision with root package name */
    public final dfw f12593d;

    /* renamed from: e, reason: collision with root package name */
    public final bfy f12594e;

    /* renamed from: f, reason: collision with root package name */
    public final List f12595f;

    /* renamed from: g, reason: collision with root package name */
    public final SocketFactory f12596g;
    public final List h;
    public final SSLSocketFactory i;
    public final ProxySelector j;

    public cbm(String str, int i, dfw dfwVar, SocketFactory socketFactory, SSLSocketFactory sSLSocketFactory, HostnameVerifier hostnameVerifier, bws bwsVar, bfy bfyVar, List list, List list2, ProxySelector proxySelector) {
        bff.p(str, "uriHost");
        bff.p(dfwVar, "dns");
        bff.p(socketFactory, "socketFactory");
        bff.p(bfyVar, "proxyAuthenticator");
        bff.p(list, "protocols");
        bff.p(list2, "connectionSpecs");
        bff.p(proxySelector, "proxySelector");
        this.f12593d = dfwVar;
        this.f12596g = socketFactory;
        this.i = sSLSocketFactory;
        this.f12591b = hostnameVerifier;
        this.f12592c = bwsVar;
        this.f12594e = bfyVar;
        this.j = proxySelector;
        ke keVar = new ke(1);
        String str2 = sSLSocketFactory != null ? "https" : "http";
        if (str2.equalsIgnoreCase("http")) {
            keVar.f19533b = "http";
        } else {
            if (!str2.equalsIgnoreCase("https")) {
                throw new IllegalArgumentException("unexpected scheme: ".concat(str2));
            }
            keVar.f19533b = "https";
        }
        String t = byh.t(gpu.h(str, 0, 0, 7));
        if (t == null) {
            throw new IllegalArgumentException("unexpected host: ".concat(str));
        }
        keVar.i = t;
        if (1 > i || i >= 65536) {
            throw new IllegalArgumentException(awf.ac(i, "unexpected port: ").toString());
        }
        keVar.f19538g = i;
        this.f12590a = keVar.n();
        this.f12595f = erq.s(list);
        this.h = erq.s(list2);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof cbm)) {
            return false;
        }
        cbm cbmVar = (cbm) obj;
        return bff.n(this.f12590a, cbmVar.f12590a) && k(cbmVar);
    }

    public final int hashCode() {
        return Objects.hashCode(this.f12592c) + ((Objects.hashCode(this.f12591b) + ((Objects.hashCode(this.i) + ((this.j.hashCode() + ((this.h.hashCode() + ((this.f12595f.hashCode() + ((this.f12594e.hashCode() + ((this.f12593d.hashCode() + tn.k(527, 31, this.f12590a.f16377g)) * 31)) * 31)) * 31)) * 31)) * 961)) * 31)) * 31);
    }

    public final boolean k(cbm cbmVar) {
        bff.p(cbmVar, "that");
        return bff.n(this.f12593d, cbmVar.f12593d) && bff.n(this.f12594e, cbmVar.f12594e) && bff.n(this.f12595f, cbmVar.f12595f) && bff.n(this.h, cbmVar.h) && bff.n(this.j, cbmVar.j) && bff.n(this.i, cbmVar.i) && bff.n(this.f12591b, cbmVar.f12591b) && bff.n(this.f12592c, cbmVar.f12592c) && this.f12590a.f16374d == cbmVar.f12590a.f16374d;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Address{");
        eyn eynVar = this.f12590a;
        sb.append(eynVar.f16373c);
        sb.append(':');
        sb.append(eynVar.f16374d);
        sb.append(", ");
        sb.append("proxySelector=" + this.j);
        sb.append('}');
        return sb.toString();
    }
}

package g;

import java.net.ProxySelector;
import java.util.Iterator;
import java.util.List;
import javax.net.SocketFactory;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;

/* loaded from: classes3.dex */
public final class fys implements Cloneable, eyd {
    public final ProxySelector aa;

    /* renamed from: ab, reason: collision with root package name */
    public final boolean f17662ab;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f17663c;

    /* renamed from: d, reason: collision with root package name */
    public final SSLSocketFactory f17664d;

    /* renamed from: e, reason: collision with root package name */
    public final gvr f17665e;

    /* renamed from: f, reason: collision with root package name */
    public final bfy f17666f;

    /* renamed from: g, reason: collision with root package name */
    public final int f17667g;
    public final aky h;
    public final SocketFactory i;
    public final ao j;
    public final List k;
    public final dfw l;
    public final fvd m;
    public final bws n;
    public final List o;
    public final List p;
    public final bco q;
    public final List r;
    public final cop s;
    public final aoy t;
    public final int u;
    public final boolean v;
    public final fc w;
    public final bfy x;
    public final int y;
    public final X509TrustManager z;

    /* renamed from: b, reason: collision with root package name */
    public static final List f17661b = erq.i(aqt.HTTP_2, aqt.HTTP_1_1);

    /* renamed from: a, reason: collision with root package name */
    public static final List f17660a = erq.i(ezm.f16415a, ezm.f16416b);

    /* JADX WARN: Removed duplicated region for block: B:11:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0165  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public fys(gjb gjbVar) {
        List list;
        this.s = gjbVar.h;
        this.w = gjbVar.o;
        this.k = erq.s(gjbVar.s);
        this.p = erq.s(gjbVar.f18235e);
        this.q = gjbVar.f18237g;
        this.f17662ab = gjbVar.j;
        this.f17666f = gjbVar.t;
        this.f17663c = gjbVar.f18231a;
        this.v = gjbVar.n;
        this.j = gjbVar.p;
        this.m = gjbVar.f18232b;
        this.l = gjbVar.f18236f;
        ProxySelector proxySelector = ProxySelector.getDefault();
        this.aa = proxySelector == null ? dwd.f14920a : proxySelector;
        this.x = gjbVar.m;
        this.i = gjbVar.f18234d;
        List list2 = gjbVar.f18233c;
        this.r = list2;
        this.o = gjbVar.l;
        this.f17665e = gjbVar.q;
        this.y = gjbVar.k;
        this.u = gjbVar.r;
        this.f17667g = gjbVar.i;
        this.t = new aoy(16);
        if (list2 == null || !list2.isEmpty()) {
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                if (((ezm) it.next()).f16418d) {
                    bop bopVar = bop.h;
                    X509TrustManager g2 = bop.h.g();
                    this.z = g2;
                    this.f17664d = bop.h.e(g2);
                    aky n = bop.h.n(g2);
                    this.h = n;
                    bws bwsVar = gjbVar.u;
                    this.n = bff.n(bwsVar.f12338c, n) ? bwsVar : new bws(bwsVar.f12337b, n);
                    X509TrustManager x509TrustManager = this.z;
                    aky akyVar = this.h;
                    SSLSocketFactory sSLSocketFactory = this.f17664d;
                    List list3 = this.p;
                    list = this.k;
                    bff.ag(list, "null cannot be cast to non-null type kotlin.collections.List<okhttp3.Interceptor?>");
                    if (!list.contains(null)) {
                        throw new IllegalStateException(("Null interceptor: " + list).toString());
                    }
                    bff.ag(list3, "null cannot be cast to non-null type kotlin.collections.List<okhttp3.Interceptor?>");
                    if (list3.contains(null)) {
                        throw new IllegalStateException(("Null network interceptor: " + list3).toString());
                    }
                    List list4 = this.r;
                    if (list4 == null || !list4.isEmpty()) {
                        Iterator it2 = list4.iterator();
                        while (it2.hasNext()) {
                            if (((ezm) it2.next()).f16418d) {
                                if (sSLSocketFactory == null) {
                                    throw new IllegalStateException("sslSocketFactory == null");
                                }
                                if (akyVar == null) {
                                    throw new IllegalStateException("certificateChainCleaner == null");
                                }
                                if (x509TrustManager == null) {
                                    throw new IllegalStateException("x509TrustManager == null");
                                }
                                return;
                            }
                        }
                    }
                    if (sSLSocketFactory != null) {
                        throw new IllegalStateException("Check failed.");
                    }
                    if (akyVar != null) {
                        throw new IllegalStateException("Check failed.");
                    }
                    if (x509TrustManager != null) {
                        throw new IllegalStateException("Check failed.");
                    }
                    if (!bff.n(this.n, bws.f12336a)) {
                        throw new IllegalStateException("Check failed.");
                    }
                    return;
                }
            }
        }
        this.f17664d = null;
        this.h = null;
        this.z = null;
        this.n = bws.f12336a;
        X509TrustManager x509TrustManager2 = this.z;
        aky akyVar2 = this.h;
        SSLSocketFactory sSLSocketFactory2 = this.f17664d;
        List list32 = this.p;
        list = this.k;
        bff.ag(list, "null cannot be cast to non-null type kotlin.collections.List<okhttp3.Interceptor?>");
        if (!list.contains(null)) {
        }
    }

    public final Object clone() {
        return super.clone();
    }
}

package g;

import java.net.InetSocketAddress;
import java.net.Proxy;

/* loaded from: classes3.dex */
public final class ego {

    /* renamed from: a, reason: collision with root package name */
    public final cbm f15500a;

    /* renamed from: b, reason: collision with root package name */
    public final Proxy f15501b;

    /* renamed from: c, reason: collision with root package name */
    public final InetSocketAddress f15502c;

    public ego(cbm cbmVar, Proxy proxy, InetSocketAddress inetSocketAddress) {
        bff.p(inetSocketAddress, "socketAddress");
        this.f15500a = cbmVar;
        this.f15501b = proxy;
        this.f15502c = inetSocketAddress;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof ego)) {
            return false;
        }
        ego egoVar = (ego) obj;
        return bff.n(egoVar.f15500a, this.f15500a) && bff.n(egoVar.f15501b, this.f15501b) && bff.n(egoVar.f15502c, this.f15502c);
    }

    public final int hashCode() {
        return this.f15502c.hashCode() + ((this.f15501b.hashCode() + ((this.f15500a.hashCode() + 527) * 31)) * 31);
    }

    public final String toString() {
        return "Route{" + this.f15502c + '}';
    }
}

package g;

import j$.util.Objects;

/* loaded from: classes.dex */
public final class aev implements cdv {

    /* renamed from: a, reason: collision with root package name */
    public final cfr f10121a;

    public aev(cfr cfrVar) {
        Objects.requireNonNull(cfrVar);
        this.f10121a = cfrVar;
    }

    @Override // g.cdv
    public final pk b() {
        return pk.DECLARATION;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof aev)) {
            return false;
        }
        return this.f10121a.equals(((aev) obj).f10121a);
    }

    public final int hashCode() {
        return this.f10121a.hashCode();
    }

    public final String toString() {
        return "NodeDeclareRef{" + this.f10121a + '}';
    }
}

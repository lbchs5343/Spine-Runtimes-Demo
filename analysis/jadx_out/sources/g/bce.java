package g;

/* loaded from: classes3.dex */
public final class bce extends ih {

    /* renamed from: a, reason: collision with root package name */
    public final byo f11256a;

    /* renamed from: b, reason: collision with root package name */
    public final cme f11257b;

    public bce(byo byoVar, cme cmeVar) {
        this.f11256a = byoVar;
        this.f11257b = cmeVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ih) {
            ih ihVar = (ih) obj;
            byo byoVar = this.f11256a;
            if (byoVar != null ? byoVar.equals(((bce) ihVar).f11256a) : ((bce) ihVar).f11256a == null) {
                cme cmeVar = this.f11257b;
                if (cmeVar != null ? cmeVar.equals(((bce) ihVar).f11257b) : ((bce) ihVar).f11257b == null) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        byo byoVar = this.f11256a;
        int hashCode = ((byoVar == null ? 0 : byoVar.hashCode()) ^ 1000003) * 1000003;
        cme cmeVar = this.f11257b;
        return (cmeVar != null ? cmeVar.hashCode() : 0) ^ hashCode;
    }

    public final String toString() {
        return "NetworkConnectionInfo{networkType=" + this.f11256a + ", mobileSubtype=" + this.f11257b + "}";
    }
}

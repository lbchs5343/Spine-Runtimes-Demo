package g;

/* loaded from: classes3.dex */
public final class fij {

    /* renamed from: a, reason: collision with root package name */
    public final fjq f16835a;

    /* renamed from: b, reason: collision with root package name */
    public final cq f16836b;

    public fij(fjq fjqVar, cq cqVar) {
        this.f16835a = fjqVar;
        if (cqVar == null) {
            throw new NullPointerException("Null priority");
        }
        this.f16836b = cqVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof fij)) {
            return false;
        }
        fij fijVar = (fij) obj;
        fijVar.getClass();
        return this.f16835a.equals(fijVar.f16835a) && this.f16836b.equals(fijVar.f16836b);
    }

    public final int hashCode() {
        return this.f16836b.hashCode() ^ (((1000003 * 1000003) ^ this.f16835a.hashCode()) * 1000003);
    }

    public final String toString() {
        return "Event{code=null, payload=" + this.f16835a + ", priority=" + this.f16836b + "}";
    }
}

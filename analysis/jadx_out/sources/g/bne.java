package g;

/* loaded from: classes.dex */
public final class bne {

    /* renamed from: a, reason: collision with root package name */
    public final Object f11865a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f11866b;

    public bne(Object obj, Object obj2) {
        this.f11865a = obj;
        this.f11866b = obj2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof bne)) {
            return false;
        }
        bne bneVar = (bne) obj;
        return this.f11865a.equals(bneVar.f11865a) && this.f11866b.equals(bneVar.f11866b);
    }

    public final int hashCode() {
        return (this.f11866b.hashCode() * 31) + this.f11865a.hashCode();
    }

    public final String toString() {
        return "(" + this.f11865a + ", " + this.f11866b + ')';
    }
}

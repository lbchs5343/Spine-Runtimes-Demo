package g;

/* loaded from: classes.dex */
public final class bmh implements hcp {

    /* renamed from: a, reason: collision with root package name */
    public final Class f11827a;

    public bmh(Class cls) {
        bff.p(cls, "jClass");
        this.f11827a = cls;
    }

    @Override // g.hcp
    public final Class e() {
        return this.f11827a;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof bmh) {
            return bff.n(this.f11827a, ((bmh) obj).f11827a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f11827a.hashCode();
    }

    public final String toString() {
        return this.f11827a + " (Kotlin reflection is not available)";
    }
}

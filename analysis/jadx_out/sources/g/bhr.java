package g;

/* loaded from: classes.dex */
public final class bhr extends dea {

    /* renamed from: a, reason: collision with root package name */
    public final dwa f11601a = dwa.f14915a;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || bhr.class != obj.getClass()) {
            return false;
        }
        return this.f11601a.equals(((bhr) obj).f11601a);
    }

    public final int hashCode() {
        return this.f11601a.hashCode() + (bhr.class.getName().hashCode() * 31);
    }

    public final String toString() {
        return "Failure {mOutputData=" + this.f11601a + '}';
    }
}

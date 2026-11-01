package g;

/* loaded from: classes.dex */
public final class aif extends dea {

    /* renamed from: a, reason: collision with root package name */
    public final dwa f10258a = dwa.f14915a;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || aif.class != obj.getClass()) {
            return false;
        }
        return this.f10258a.equals(((aif) obj).f10258a);
    }

    public final int hashCode() {
        return this.f10258a.hashCode() + (aif.class.getName().hashCode() * 31);
    }

    public final String toString() {
        return "Success {mOutputData=" + this.f10258a + '}';
    }
}

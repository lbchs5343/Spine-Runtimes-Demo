package g;

/* loaded from: classes.dex */
public final class bjm {

    /* renamed from: a, reason: collision with root package name */
    public final String f11706a;

    public bjm(String str) {
        this.f11706a = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof bjm)) {
            return false;
        }
        return this.f11706a.equals(((bjm) obj).f11706a);
    }

    public final int hashCode() {
        return this.f11706a.hashCode();
    }

    public final String toString() {
        return this.f11706a;
    }
}

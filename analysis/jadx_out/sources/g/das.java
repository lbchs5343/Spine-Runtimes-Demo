package g;

/* loaded from: classes.dex */
public final class das extends bfx {

    /* renamed from: a, reason: collision with root package name */
    public final int f13870a;

    public das(int i) {
        this.f13870a = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof das) && this.f13870a == ((das) obj).f13870a;
    }

    public final int hashCode() {
        return this.f13870a;
    }

    public final String toString() {
        return awf.s(new StringBuilder("ConstraintsNotMet(reason="), this.f13870a, ')');
    }
}

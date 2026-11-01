package g;

/* loaded from: classes.dex */
public final class cmk {

    /* renamed from: a, reason: collision with root package name */
    public final String f13121a;

    /* renamed from: b, reason: collision with root package name */
    public final Long f13122b;

    public cmk(String str, Long l) {
        this.f13121a = str;
        this.f13122b = l;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof cmk)) {
            return false;
        }
        cmk cmkVar = (cmk) obj;
        return bff.n(this.f13121a, cmkVar.f13121a) && bff.n(this.f13122b, cmkVar.f13122b);
    }

    public final int hashCode() {
        int hashCode = this.f13121a.hashCode() * 31;
        Long l = this.f13122b;
        return hashCode + (l == null ? 0 : l.hashCode());
    }

    public final String toString() {
        return "Preference(key=" + this.f13121a + ", value=" + this.f13122b + ')';
    }
}

package g;

/* loaded from: classes.dex */
public final class apn {

    /* renamed from: a, reason: collision with root package name */
    public String f10631a;

    /* renamed from: b, reason: collision with root package name */
    public gys f10632b;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof apn)) {
            return false;
        }
        apn apnVar = (apn) obj;
        return bff.n(this.f10631a, apnVar.f10631a) && this.f10632b == apnVar.f10632b;
    }

    public final int hashCode() {
        return this.f10632b.hashCode() + (this.f10631a.hashCode() * 31);
    }

    public final String toString() {
        return "IdAndState(id=" + this.f10631a + ", state=" + this.f10632b + ')';
    }
}

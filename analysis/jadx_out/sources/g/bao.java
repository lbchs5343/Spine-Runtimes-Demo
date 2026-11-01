package g;

/* loaded from: classes.dex */
public final class bao implements Comparable {

    /* renamed from: a, reason: collision with root package name */
    public static final bao f11182a = new bao();

    /* renamed from: b, reason: collision with root package name */
    public final int f11183b = 131349;

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        bao baoVar = (bao) obj;
        bff.p(baoVar, "other");
        return this.f11183b - baoVar.f11183b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        bao baoVar = obj instanceof bao ? (bao) obj : null;
        return baoVar != null && this.f11183b == baoVar.f11183b;
    }

    public final int hashCode() {
        return this.f11183b;
    }

    public final String toString() {
        return "2.1.21";
    }
}

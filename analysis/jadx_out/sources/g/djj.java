package g;

/* loaded from: classes3.dex */
public final class djj {

    /* renamed from: a, reason: collision with root package name */
    public final Class f14276a;

    /* renamed from: b, reason: collision with root package name */
    public final int f14277b;

    /* renamed from: c, reason: collision with root package name */
    public final int f14278c;

    public djj(Class cls, int i, int i2) {
        this.f14276a = cls;
        this.f14277b = i;
        this.f14278c = i2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof djj)) {
            return false;
        }
        djj djjVar = (djj) obj;
        return this.f14276a == djjVar.f14276a && this.f14277b == djjVar.f14277b && this.f14278c == djjVar.f14278c;
    }

    public final int hashCode() {
        return ((((this.f14276a.hashCode() ^ 1000003) * 1000003) ^ this.f14277b) * 1000003) ^ this.f14278c;
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("Dependency{anInterface=");
        sb.append(this.f14276a);
        sb.append(", type=");
        int i = this.f14277b;
        sb.append(i == 1 ? "required" : i == 0 ? "optional" : "set");
        sb.append(", injection=");
        int i2 = this.f14278c;
        if (i2 == 0) {
            str = "direct";
        } else if (i2 == 1) {
            str = "provider";
        } else {
            if (i2 != 2) {
                throw new AssertionError(awf.ac(i2, "Unsupported injection: "));
            }
            str = "deferred";
        }
        return awf.ad(sb, str, "}");
    }
}

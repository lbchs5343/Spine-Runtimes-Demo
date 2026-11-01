package g;

/* loaded from: classes.dex */
public final class rx {

    /* renamed from: a, reason: collision with root package name */
    public int f19934a;

    /* renamed from: b, reason: collision with root package name */
    public int f19935b;

    /* renamed from: c, reason: collision with root package name */
    public int f19936c;

    /* renamed from: d, reason: collision with root package name */
    public Object f19937d;

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof rx)) {
                return false;
            }
            rx rxVar = (rx) obj;
            int i = this.f19935b;
            if (i != rxVar.f19935b) {
                return false;
            }
            if (i != 8 || Math.abs(this.f19934a - this.f19936c) != 1 || this.f19934a != rxVar.f19936c || this.f19936c != rxVar.f19934a) {
                if (this.f19934a != rxVar.f19934a || this.f19936c != rxVar.f19936c) {
                    return false;
                }
                Object obj2 = this.f19937d;
                if (obj2 != null) {
                    if (!obj2.equals(rxVar.f19937d)) {
                        return false;
                    }
                } else if (rxVar.f19937d != null) {
                    return false;
                }
            }
        }
        return true;
    }

    public final int hashCode() {
        return (((this.f19935b * 31) + this.f19936c) * 31) + this.f19934a;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("[");
        int i = this.f19935b;
        sb.append(i != 1 ? i != 2 ? i != 4 ? i != 8 ? "??" : "mv" : "up" : "rm" : "add");
        sb.append(",s:");
        sb.append(this.f19936c);
        sb.append("c:");
        sb.append(this.f19934a);
        sb.append(",p:");
        sb.append(this.f19937d);
        sb.append("]");
        return sb.toString();
    }
}

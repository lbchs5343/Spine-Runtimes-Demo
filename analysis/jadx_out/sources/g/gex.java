package g;

/* loaded from: classes.dex */
public final class gex extends fqr {

    /* renamed from: d, reason: collision with root package name */
    public static final gex f18006d = new gex(1, 0, 1);

    @Override // g.fqr
    public final boolean equals(Object obj) {
        if (!(obj instanceof gex)) {
            return false;
        }
        if (isEmpty() && ((gex) obj).isEmpty()) {
            return true;
        }
        gex gexVar = (gex) obj;
        return this.f17256b == gexVar.f17256b && this.f17257c == gexVar.f17257c;
    }

    @Override // g.fqr
    public final int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (this.f17256b * 31) + this.f17257c;
    }

    @Override // g.fqr
    public final boolean isEmpty() {
        return this.f17256b > this.f17257c;
    }

    @Override // g.fqr
    public final String toString() {
        return this.f17256b + ".." + this.f17257c;
    }
}

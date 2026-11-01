package g;

/* loaded from: classes.dex */
public final class dod {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f14513a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f14514b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f14515c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f14516d;

    public dod(boolean z, boolean z2, boolean z3, boolean z4) {
        this.f14514b = z;
        this.f14515c = z2;
        this.f14516d = z3;
        this.f14513a = z4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof dod)) {
            return false;
        }
        dod dodVar = (dod) obj;
        return this.f14514b == dodVar.f14514b && this.f14515c == dodVar.f14515c && this.f14516d == dodVar.f14516d && this.f14513a == dodVar.f14513a;
    }

    public final int hashCode() {
        return ((((((this.f14514b ? 1231 : 1237) * 31) + (this.f14515c ? 1231 : 1237)) * 31) + (this.f14516d ? 1231 : 1237)) * 31) + (this.f14513a ? 1231 : 1237);
    }

    public final String toString() {
        return "NetworkState(isConnected=" + this.f14514b + ", isValidated=" + this.f14515c + ", isMetered=" + this.f14516d + ", isNotRoaming=" + this.f14513a + ')';
    }
}

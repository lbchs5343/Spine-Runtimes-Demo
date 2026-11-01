package g;

/* loaded from: classes.dex */
public final class cgv {

    /* renamed from: a, reason: collision with root package name */
    public final String f12855a;

    /* renamed from: b, reason: collision with root package name */
    public final int f12856b;

    /* renamed from: c, reason: collision with root package name */
    public final int f12857c;

    public cgv(String str, int i, int i2) {
        bff.p(str, "workSpecId");
        this.f12855a = str;
        this.f12856b = i;
        this.f12857c = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof cgv)) {
            return false;
        }
        cgv cgvVar = (cgv) obj;
        return bff.n(this.f12855a, cgvVar.f12855a) && this.f12856b == cgvVar.f12856b && this.f12857c == cgvVar.f12857c;
    }

    public final int hashCode() {
        return (((this.f12855a.hashCode() * 31) + this.f12856b) * 31) + this.f12857c;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SystemIdInfo(workSpecId=");
        sb.append(this.f12855a);
        sb.append(", generation=");
        sb.append(this.f12856b);
        sb.append(", systemId=");
        return awf.s(sb, this.f12857c, ')');
    }
}

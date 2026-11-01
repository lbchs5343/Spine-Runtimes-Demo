package g;

/* loaded from: classes.dex */
public final class gxm {

    /* renamed from: a, reason: collision with root package name */
    public final String f18956a;

    /* renamed from: b, reason: collision with root package name */
    public final int f18957b;

    public gxm(String str, int i) {
        bff.p(str, "workSpecId");
        this.f18956a = str;
        this.f18957b = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof gxm)) {
            return false;
        }
        gxm gxmVar = (gxm) obj;
        return bff.n(this.f18956a, gxmVar.f18956a) && this.f18957b == gxmVar.f18957b;
    }

    public final int hashCode() {
        return (this.f18956a.hashCode() * 31) + this.f18957b;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("WorkGenerationalId(workSpecId=");
        sb.append(this.f18956a);
        sb.append(", generation=");
        return awf.s(sb, this.f18957b, ')');
    }
}

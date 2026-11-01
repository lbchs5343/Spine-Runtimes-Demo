package g;

/* loaded from: classes.dex */
public final class exw extends lh {

    /* renamed from: a, reason: collision with root package name */
    public final fza f16343a;

    /* renamed from: b, reason: collision with root package name */
    public final fza f16344b;

    public exw(fza fzaVar, fza fzaVar2, boolean z) {
        if (z) {
            w(csv.SYNTHETIC);
        }
        this.f16343a = fzaVar;
        this.f16344b = fzaVar2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && exw.class == obj.getClass()) {
            exw exwVar = (exw) obj;
            if (this.f16343a.equals(exwVar.f16343a) && this.f16344b.equals(exwVar.f16344b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (this.f16344b.h * 31) + this.f16343a.h;
    }

    public final String toString() {
        return "Edge: " + this.f16343a + " -> " + this.f16344b;
    }
}

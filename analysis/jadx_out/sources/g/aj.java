package g;

/* loaded from: classes3.dex */
public final class aj {

    /* renamed from: a, reason: collision with root package name */
    public final String f10296a;

    /* renamed from: b, reason: collision with root package name */
    public final String f10297b;

    public aj(String str, String str2) {
        this.f10296a = str;
        if (str2 == null) {
            throw new NullPointerException("Null version");
        }
        this.f10297b = str2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof aj) {
            aj ajVar = (aj) obj;
            if (this.f10296a.equals(ajVar.f10296a) && this.f10297b.equals(ajVar.f10297b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((this.f10296a.hashCode() ^ 1000003) * 1000003) ^ this.f10297b.hashCode();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("LibraryVersion{libraryName=");
        sb.append(this.f10296a);
        sb.append(", version=");
        return awf.ad(sb, this.f10297b, "}");
    }
}

package g;

/* loaded from: classes3.dex */
public final class cep {

    /* renamed from: a, reason: collision with root package name */
    public final String f12749a;

    public cep(String str) {
        if (str == null) {
            throw new NullPointerException("name is null");
        }
        this.f12749a = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof cep)) {
            return false;
        }
        return this.f12749a.equals(((cep) obj).f12749a);
    }

    public final int hashCode() {
        return this.f12749a.hashCode() ^ 1000003;
    }

    public final String toString() {
        return awf.ad(new StringBuilder("Encoding{name=\""), this.f12749a, "\"}");
    }
}

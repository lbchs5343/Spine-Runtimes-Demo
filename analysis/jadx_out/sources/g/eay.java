package g;

/* loaded from: classes.dex */
public final class eay {

    /* renamed from: a, reason: collision with root package name */
    public final int f15213a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f15214b;

    public eay(int i, Object obj) {
        this.f15213a = i;
        this.f15214b = obj;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof eay)) {
            return false;
        }
        eay eayVar = (eay) obj;
        return this.f15213a == eayVar.f15213a && bff.n(this.f15214b, eayVar.f15214b);
    }

    public final int hashCode() {
        int i = this.f15213a * 31;
        Object obj = this.f15214b;
        return i + (obj == null ? 0 : obj.hashCode());
    }

    public final String toString() {
        return "IndexedValue(index=" + this.f15213a + ", value=" + this.f15214b + ')';
    }
}

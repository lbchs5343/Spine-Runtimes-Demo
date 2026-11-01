package g;

/* loaded from: classes3.dex */
public final class elz {

    /* renamed from: a, reason: collision with root package name */
    public final String f15785a;

    /* renamed from: b, reason: collision with root package name */
    public final long f15786b;

    /* renamed from: c, reason: collision with root package name */
    public final deh f15787c;

    public elz(String str, long j, deh dehVar) {
        this.f15785a = str;
        this.f15786b = j;
        this.f15787c = dehVar;
    }

    public static dzh d() {
        dzh dzhVar = new dzh(2, false);
        dzhVar.f15121f = 0L;
        return dzhVar;
    }

    public final boolean equals(Object obj) {
        deh dehVar;
        if (obj == this) {
            return true;
        }
        if (obj instanceof elz) {
            elz elzVar = (elz) obj;
            String str = this.f15785a;
            if (str != null ? str.equals(elzVar.f15785a) : elzVar.f15785a == null) {
                long j = elzVar.f15786b;
                deh dehVar2 = elzVar.f15787c;
                if (this.f15786b == j && ((dehVar = this.f15787c) != null ? dehVar.equals(dehVar2) : dehVar2 == null)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f15785a;
        int hashCode = str == null ? 0 : str.hashCode();
        long j = this.f15786b;
        int i = (((hashCode ^ 1000003) * 1000003) ^ ((int) (j ^ (j >>> 32)))) * 1000003;
        deh dehVar = this.f15787c;
        return (dehVar != null ? dehVar.hashCode() : 0) ^ i;
    }

    public final String toString() {
        return "TokenResult{token=" + this.f15785a + ", tokenExpirationTimestamp=" + this.f15786b + ", responseCode=" + this.f15787c + "}";
    }
}

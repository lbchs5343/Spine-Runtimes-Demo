package g;

/* loaded from: classes3.dex */
public final class gug {

    /* renamed from: a, reason: collision with root package name */
    public final elz f18769a;

    /* renamed from: b, reason: collision with root package name */
    public final of f18770b;

    /* renamed from: c, reason: collision with root package name */
    public final String f18771c;

    /* renamed from: d, reason: collision with root package name */
    public final String f18772d;

    /* renamed from: e, reason: collision with root package name */
    public final String f18773e;

    public gug(String str, String str2, String str3, elz elzVar, of ofVar) {
        this.f18771c = str;
        this.f18772d = str2;
        this.f18773e = str3;
        this.f18769a = elzVar;
        this.f18770b = ofVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof gug) {
            gug gugVar = (gug) obj;
            String str = this.f18771c;
            if (str != null ? str.equals(gugVar.f18771c) : gugVar.f18771c == null) {
                String str2 = this.f18772d;
                if (str2 != null ? str2.equals(gugVar.f18772d) : gugVar.f18772d == null) {
                    String str3 = this.f18773e;
                    if (str3 != null ? str3.equals(gugVar.f18773e) : gugVar.f18773e == null) {
                        elz elzVar = this.f18769a;
                        if (elzVar != null ? elzVar.equals(gugVar.f18769a) : gugVar.f18769a == null) {
                            of ofVar = this.f18770b;
                            if (ofVar != null ? ofVar.equals(gugVar.f18770b) : gugVar.f18770b == null) {
                                return true;
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f18771c;
        int hashCode = ((str == null ? 0 : str.hashCode()) ^ 1000003) * 1000003;
        String str2 = this.f18772d;
        int hashCode2 = (hashCode ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.f18773e;
        int hashCode3 = (hashCode2 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        elz elzVar = this.f18769a;
        int hashCode4 = (hashCode3 ^ (elzVar == null ? 0 : elzVar.hashCode())) * 1000003;
        of ofVar = this.f18770b;
        return (ofVar != null ? ofVar.hashCode() : 0) ^ hashCode4;
    }

    public final String toString() {
        return "InstallationResponse{uri=" + this.f18771c + ", fid=" + this.f18772d + ", refreshToken=" + this.f18773e + ", authToken=" + this.f18769a + ", responseCode=" + this.f18770b + "}";
    }
}

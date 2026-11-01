package g;

/* loaded from: classes3.dex */
public final class fsy {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f17354a = 0;

    /* renamed from: b, reason: collision with root package name */
    public final String f17355b;

    /* renamed from: c, reason: collision with root package name */
    public final long f17356c;

    /* renamed from: d, reason: collision with root package name */
    public final String f17357d;

    /* renamed from: e, reason: collision with root package name */
    public final long f17358e;

    /* renamed from: f, reason: collision with root package name */
    public final gyk f17359f;

    /* renamed from: g, reason: collision with root package name */
    public final String f17360g;
    public final String h;

    static {
        ph phVar = new ph();
        phVar.f19812d = 0L;
        phVar.j(gyk.ATTEMPT_MIGRATION);
        phVar.f19810b = 0L;
        phVar.i();
    }

    public fsy(String str, gyk gykVar, String str2, String str3, long j, long j2, String str4) {
        this.f17357d = str;
        this.f17359f = gykVar;
        this.f17360g = str2;
        this.f17355b = str3;
        this.f17356c = j;
        this.f17358e = j2;
        this.h = str4;
    }

    public final boolean equals(Object obj) {
        String str;
        String str2;
        String str3;
        if (obj == this) {
            return true;
        }
        if (obj instanceof fsy) {
            fsy fsyVar = (fsy) obj;
            String str4 = this.f17357d;
            if (str4 != null ? str4.equals(fsyVar.f17357d) : fsyVar.f17357d == null) {
                gyk gykVar = fsyVar.f17359f;
                String str5 = fsyVar.h;
                String str6 = fsyVar.f17355b;
                String str7 = fsyVar.f17360g;
                if (this.f17359f.equals(gykVar) && ((str = this.f17360g) != null ? str.equals(str7) : str7 == null) && ((str2 = this.f17355b) != null ? str2.equals(str6) : str6 == null) && this.f17356c == fsyVar.f17356c && this.f17358e == fsyVar.f17358e && ((str3 = this.h) != null ? str3.equals(str5) : str5 == null)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f17357d;
        int hashCode = ((((str == null ? 0 : str.hashCode()) ^ 1000003) * 1000003) ^ this.f17359f.hashCode()) * 1000003;
        String str2 = this.f17360g;
        int hashCode2 = (hashCode ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.f17355b;
        int hashCode3 = (hashCode2 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        long j = this.f17356c;
        int i = (hashCode3 ^ ((int) (j ^ (j >>> 32)))) * 1000003;
        long j2 = this.f17358e;
        int i2 = (i ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003;
        String str4 = this.h;
        return (str4 != null ? str4.hashCode() : 0) ^ i2;
    }

    public final ph i() {
        ph phVar = new ph();
        phVar.f19811c = this.f17357d;
        phVar.f19813e = this.f17359f;
        phVar.f19814f = this.f17360g;
        phVar.f19809a = this.f17355b;
        phVar.f19810b = Long.valueOf(this.f17356c);
        phVar.f19812d = Long.valueOf(this.f17358e);
        phVar.f19815g = this.h;
        return phVar;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PersistedInstallationEntry{firebaseInstallationId=");
        sb.append(this.f17357d);
        sb.append(", registrationStatus=");
        sb.append(this.f17359f);
        sb.append(", authToken=");
        sb.append(this.f17360g);
        sb.append(", refreshToken=");
        sb.append(this.f17355b);
        sb.append(", expiresInSecs=");
        sb.append(this.f17356c);
        sb.append(", tokenCreationEpochInSecs=");
        sb.append(this.f17358e);
        sb.append(", fisError=");
        return awf.ad(sb, this.h, "}");
    }
}

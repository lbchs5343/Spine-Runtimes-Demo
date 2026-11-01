package g;

import java.util.ArrayList;

/* loaded from: classes3.dex */
public final class dow extends cnt {

    /* renamed from: a, reason: collision with root package name */
    public final Integer f14551a;

    /* renamed from: b, reason: collision with root package name */
    public final String f14552b;

    /* renamed from: c, reason: collision with root package name */
    public final long f14553c;

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f14554d;

    /* renamed from: e, reason: collision with root package name */
    public final long f14555e;

    /* renamed from: f, reason: collision with root package name */
    public final bsp f14556f;

    /* renamed from: g, reason: collision with root package name */
    public final egd f14557g;

    public dow(long j, long j2, bsp bspVar, Integer num, String str, ArrayList arrayList, egd egdVar) {
        this.f14553c = j;
        this.f14555e = j2;
        this.f14556f = bspVar;
        this.f14551a = num;
        this.f14552b = str;
        this.f14554d = arrayList;
        this.f14557g = egdVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof cnt)) {
            return false;
        }
        dow dowVar = (dow) ((cnt) obj);
        if (this.f14553c != dowVar.f14553c) {
            return false;
        }
        egd egdVar = dowVar.f14557g;
        ArrayList arrayList = dowVar.f14554d;
        String str = dowVar.f14552b;
        Integer num = dowVar.f14551a;
        bsp bspVar = dowVar.f14556f;
        if (this.f14555e != dowVar.f14555e || !this.f14556f.equals(bspVar)) {
            return false;
        }
        Integer num2 = this.f14551a;
        if (num2 == null) {
            if (num != null) {
                return false;
            }
        } else if (!num2.equals(num)) {
            return false;
        }
        String str2 = this.f14552b;
        if (str2 == null) {
            if (str != null) {
                return false;
            }
        } else if (!str2.equals(str)) {
            return false;
        }
        if (!this.f14554d.equals(arrayList)) {
            return false;
        }
        egd egdVar2 = this.f14557g;
        return egdVar2 == null ? egdVar == null : egdVar2.equals(egdVar);
    }

    public final int hashCode() {
        long j = this.f14553c;
        long j2 = this.f14555e;
        int hashCode = (((((((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003) ^ this.f14556f.hashCode()) * 1000003;
        Integer num = this.f14551a;
        int hashCode2 = (hashCode ^ (num == null ? 0 : num.hashCode())) * 1000003;
        String str = this.f14552b;
        int hashCode3 = (((hashCode2 ^ (str == null ? 0 : str.hashCode())) * 1000003) ^ this.f14554d.hashCode()) * 1000003;
        egd egdVar = this.f14557g;
        return hashCode3 ^ (egdVar != null ? egdVar.hashCode() : 0);
    }

    public final String toString() {
        return "LogRequest{requestTimeMs=" + this.f14553c + ", requestUptimeMs=" + this.f14555e + ", clientInfo=" + this.f14556f + ", logSource=" + this.f14551a + ", logSourceName=" + this.f14552b + ", logEvents=" + this.f14554d + ", qosTier=" + this.f14557g + "}";
    }
}

package g;

import java.util.Arrays;

/* loaded from: classes3.dex */
public final class bcj extends dux {

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f11272a;

    /* renamed from: b, reason: collision with root package name */
    public final String f11273b;

    /* renamed from: c, reason: collision with root package name */
    public final long f11274c;

    /* renamed from: d, reason: collision with root package name */
    public final long f11275d;

    /* renamed from: e, reason: collision with root package name */
    public final Integer f11276e;

    /* renamed from: f, reason: collision with root package name */
    public final long f11277f;

    /* renamed from: g, reason: collision with root package name */
    public final ih f11278g;

    public bcj(long j, Integer num, long j2, byte[] bArr, String str, long j3, ih ihVar) {
        this.f11274c = j;
        this.f11276e = num;
        this.f11277f = j2;
        this.f11272a = bArr;
        this.f11273b = str;
        this.f11275d = j3;
        this.f11278g = ihVar;
    }

    public final boolean equals(Object obj) {
        Integer num;
        String str;
        ih ihVar;
        if (obj == this) {
            return true;
        }
        if (obj instanceof dux) {
            dux duxVar = (dux) obj;
            if (this.f11274c == ((bcj) duxVar).f11274c && ((num = this.f11276e) != null ? num.equals(((bcj) duxVar).f11276e) : ((bcj) duxVar).f11276e == null)) {
                bcj bcjVar = (bcj) duxVar;
                ih ihVar2 = bcjVar.f11278g;
                String str2 = bcjVar.f11273b;
                if (this.f11277f == bcjVar.f11277f) {
                    if (Arrays.equals(this.f11272a, duxVar instanceof bcj ? ((bcj) duxVar).f11272a : bcjVar.f11272a) && ((str = this.f11273b) != null ? str.equals(str2) : str2 == null) && this.f11275d == bcjVar.f11275d && ((ihVar = this.f11278g) != null ? ihVar.equals(ihVar2) : ihVar2 == null)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        long j = this.f11274c;
        int i = (((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003;
        Integer num = this.f11276e;
        int hashCode = (i ^ (num == null ? 0 : num.hashCode())) * 1000003;
        long j2 = this.f11277f;
        int hashCode2 = (((hashCode ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003) ^ Arrays.hashCode(this.f11272a)) * 1000003;
        String str = this.f11273b;
        int hashCode3 = (hashCode2 ^ (str == null ? 0 : str.hashCode())) * 1000003;
        long j3 = this.f11275d;
        int i2 = (hashCode3 ^ ((int) (j3 ^ (j3 >>> 32)))) * 1000003;
        ih ihVar = this.f11278g;
        return i2 ^ (ihVar != null ? ihVar.hashCode() : 0);
    }

    public final String toString() {
        return "LogEvent{eventTimeMs=" + this.f11274c + ", eventCode=" + this.f11276e + ", eventUptimeMs=" + this.f11277f + ", sourceExtension=" + Arrays.toString(this.f11272a) + ", sourceExtensionJsonProto3=" + this.f11273b + ", timezoneOffsetSeconds=" + this.f11275d + ", networkConnectionInfo=" + this.f11278g + "}";
    }
}

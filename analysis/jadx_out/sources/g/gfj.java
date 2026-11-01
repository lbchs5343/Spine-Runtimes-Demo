package g;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public final class gfj {

    /* renamed from: a, reason: collision with root package name */
    public final long f18026a;

    /* renamed from: b, reason: collision with root package name */
    public final long f18027b;

    /* renamed from: c, reason: collision with root package name */
    public final String f18028c;

    /* renamed from: d, reason: collision with root package name */
    public final Map f18029d;

    /* renamed from: e, reason: collision with root package name */
    public final Integer f18030e;

    /* renamed from: f, reason: collision with root package name */
    public final csl f18031f;

    public gfj(String str, Integer num, csl cslVar, long j, long j2, HashMap hashMap) {
        this.f18028c = str;
        this.f18030e = num;
        this.f18031f = cslVar;
        this.f18026a = j;
        this.f18027b = j2;
        this.f18029d = hashMap;
    }

    public final boolean equals(Object obj) {
        Integer num;
        if (obj == this) {
            return true;
        }
        if (obj instanceof gfj) {
            gfj gfjVar = (gfj) obj;
            String str = gfjVar.f18028c;
            Integer num2 = gfjVar.f18030e;
            if (this.f18028c.equals(str) && ((num = this.f18030e) != null ? num.equals(num2) : num2 == null) && this.f18031f.equals(gfjVar.f18031f) && this.f18026a == gfjVar.f18026a && this.f18027b == gfjVar.f18027b && this.f18029d.equals(gfjVar.f18029d)) {
                return true;
            }
        }
        return false;
    }

    public final String g(String str) {
        String str2 = (String) this.f18029d.get(str);
        return str2 == null ? "" : str2;
    }

    public final int h(String str) {
        String str2 = (String) this.f18029d.get(str);
        if (str2 == null) {
            return 0;
        }
        return Integer.valueOf(str2).intValue();
    }

    public final int hashCode() {
        int hashCode = (this.f18028c.hashCode() ^ 1000003) * 1000003;
        Integer num = this.f18030e;
        int hashCode2 = (((hashCode ^ (num == null ? 0 : num.hashCode())) * 1000003) ^ this.f18031f.hashCode()) * 1000003;
        long j = this.f18026a;
        int i = (hashCode2 ^ ((int) (j ^ (j >>> 32)))) * 1000003;
        long j2 = this.f18027b;
        return ((i ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003) ^ this.f18029d.hashCode();
    }

    public final daw i() {
        daw dawVar = new daw(1);
        String str = this.f18028c;
        if (str == null) {
            throw new NullPointerException("Null transportName");
        }
        dawVar.f13886e = str;
        dawVar.f13887f = this.f18030e;
        csl cslVar = this.f18031f;
        if (cslVar == null) {
            throw new NullPointerException("Null encodedPayload");
        }
        dawVar.f13882a = cslVar;
        dawVar.f13883b = Long.valueOf(this.f18026a);
        dawVar.f13885d = Long.valueOf(this.f18027b);
        dawVar.f13888g = new HashMap(this.f18029d);
        return dawVar;
    }

    public final String toString() {
        return "EventInternal{transportName=" + this.f18028c + ", code=" + this.f18030e + ", encodedPayload=" + this.f18031f + ", eventMillis=" + this.f18026a + ", uptimeMillis=" + this.f18027b + ", autoMetadata=" + this.f18029d + "}";
    }
}

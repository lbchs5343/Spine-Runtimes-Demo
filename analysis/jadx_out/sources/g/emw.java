package g;

import java.util.Set;

/* loaded from: classes3.dex */
public final class emw {

    /* renamed from: a, reason: collision with root package name */
    public final long f15822a;

    /* renamed from: b, reason: collision with root package name */
    public final long f15823b;

    /* renamed from: c, reason: collision with root package name */
    public final Set f15824c;

    public emw(long j, long j2, Set set) {
        this.f15822a = j;
        this.f15823b = j2;
        this.f15824c = set;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof emw) {
            emw emwVar = (emw) obj;
            if (this.f15822a == emwVar.f15822a && this.f15823b == emwVar.f15823b && this.f15824c.equals(emwVar.f15824c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long j = this.f15822a;
        int i = (((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003;
        long j2 = this.f15823b;
        return this.f15824c.hashCode() ^ ((i ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003);
    }

    public final String toString() {
        return "ConfigValue{delta=" + this.f15822a + ", maxAllowedDelay=" + this.f15823b + ", flags=" + this.f15824c + "}";
    }
}

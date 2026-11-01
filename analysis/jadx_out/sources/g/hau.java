package g;

import java.util.HashMap;

/* loaded from: classes3.dex */
public final class hau {

    /* renamed from: a, reason: collision with root package name */
    public final cqi f19150a;

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f19151b;

    public hau(cqi cqiVar, HashMap hashMap) {
        this.f19150a = cqiVar;
        this.f19151b = hashMap;
    }

    public final long c(cq cqVar, long j, int i) {
        long l = j - this.f19150a.l();
        emw emwVar = (emw) this.f19151b.get(cqVar);
        long j2 = emwVar.f15822a;
        return Math.min(Math.max((long) (Math.pow(3.0d, i - 1) * j2 * Math.max(1.0d, Math.log(10000.0d) / Math.log((j2 > 1 ? j2 : 2L) * r12))), l), emwVar.f15823b);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof hau)) {
            return false;
        }
        hau hauVar = (hau) obj;
        return this.f19150a.equals(hauVar.f19150a) && this.f19151b.equals(hauVar.f19151b);
    }

    public final int hashCode() {
        return ((this.f19150a.hashCode() ^ 1000003) * 1000003) ^ this.f19151b.hashCode();
    }

    public final String toString() {
        return "SchedulerConfig{clock=" + this.f19150a + ", values=" + this.f19151b + "}";
    }
}

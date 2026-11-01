package g;

/* loaded from: classes3.dex */
public final class ess {

    /* renamed from: a, reason: collision with root package name */
    public final long f16097a;

    /* renamed from: b, reason: collision with root package name */
    public final ku f16098b;

    /* renamed from: c, reason: collision with root package name */
    public final gfj f16099c;

    public ess(long j, ku kuVar, gfj gfjVar) {
        this.f16097a = j;
        this.f16098b = kuVar;
        this.f16099c = gfjVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ess) {
            ess essVar = (ess) obj;
            if (this.f16097a == essVar.f16097a && this.f16098b.equals(essVar.f16098b) && this.f16099c.equals(essVar.f16099c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long j = this.f16097a;
        return ((((((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003) ^ this.f16098b.hashCode()) * 1000003) ^ this.f16099c.hashCode();
    }

    public final String toString() {
        return "PersistedEvent{id=" + this.f16097a + ", transportContext=" + this.f16098b + ", event=" + this.f16099c + "}";
    }
}

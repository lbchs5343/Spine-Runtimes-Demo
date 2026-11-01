package g;

/* loaded from: classes3.dex */
public final class gnn {

    /* renamed from: a, reason: collision with root package name */
    public static final gnn f18458a = new gnn(10485760, 200, 10000, 604800000, 81920);

    /* renamed from: b, reason: collision with root package name */
    public final long f18459b;

    /* renamed from: c, reason: collision with root package name */
    public final int f18460c;

    /* renamed from: d, reason: collision with root package name */
    public final long f18461d;

    /* renamed from: e, reason: collision with root package name */
    public final int f18462e;

    /* renamed from: f, reason: collision with root package name */
    public final int f18463f;

    public gnn(long j, int i, int i2, long j2, int i3) {
        this.f18461d = j;
        this.f18462e = i;
        this.f18463f = i2;
        this.f18459b = j2;
        this.f18460c = i3;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof gnn) {
            gnn gnnVar = (gnn) obj;
            if (this.f18461d == gnnVar.f18461d && this.f18462e == gnnVar.f18462e && this.f18463f == gnnVar.f18463f && this.f18459b == gnnVar.f18459b && this.f18460c == gnnVar.f18460c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long j = this.f18461d;
        int i = (((((((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003) ^ this.f18462e) * 1000003) ^ this.f18463f) * 1000003;
        long j2 = this.f18459b;
        return this.f18460c ^ ((i ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("EventStoreConfig{maxStorageSizeInBytes=");
        sb.append(this.f18461d);
        sb.append(", loadBatchSize=");
        sb.append(this.f18462e);
        sb.append(", criticalSectionEnterTimeoutMs=");
        sb.append(this.f18463f);
        sb.append(", eventCleanUpAge=");
        sb.append(this.f18459b);
        sb.append(", maxBlobByteSizePerRow=");
        return awf.x(sb, this.f18460c, "}");
    }
}

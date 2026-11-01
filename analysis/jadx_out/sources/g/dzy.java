package g;

/* loaded from: classes3.dex */
public final class dzy {

    /* renamed from: a, reason: collision with root package name */
    public final ecw f15155a;

    /* renamed from: b, reason: collision with root package name */
    public final long f15156b;

    public dzy(ecw ecwVar, long j) {
        if (ecwVar == null) {
            throw new NullPointerException("Null status");
        }
        this.f15155a = ecwVar;
        this.f15156b = j;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof dzy) {
            dzy dzyVar = (dzy) obj;
            if (this.f15155a.equals(dzyVar.f15155a) && this.f15156b == dzyVar.f15156b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = (this.f15155a.hashCode() ^ 1000003) * 1000003;
        long j = this.f15156b;
        return hashCode ^ ((int) (j ^ (j >>> 32)));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("BackendResponse{status=");
        sb.append(this.f15155a);
        sb.append(", nextRequestWaitMillis=");
        return tn.f(this.f15156b, "}", sb);
    }
}

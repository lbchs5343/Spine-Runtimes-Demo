package g;

/* loaded from: classes.dex */
public final class bqc {

    /* renamed from: a, reason: collision with root package name */
    public final long f11996a;

    /* renamed from: b, reason: collision with root package name */
    public final long f11997b;

    /* renamed from: c, reason: collision with root package name */
    public final int f11998c;

    public bqc(long j, long j2, int i) {
        this.f11996a = j;
        this.f11997b = j2;
        this.f11998c = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof bqc)) {
            return false;
        }
        bqc bqcVar = (bqc) obj;
        return this.f11996a == bqcVar.f11996a && this.f11997b == bqcVar.f11997b && this.f11998c == bqcVar.f11998c;
    }

    public final int hashCode() {
        long j = this.f11996a;
        int i = ((int) (j ^ (j >>> 32))) * 31;
        long j2 = this.f11997b;
        return ((i + ((int) (j2 ^ (j2 >>> 32)))) * 31) + this.f11998c;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("TaxonomyVersion=");
        sb.append(this.f11996a);
        sb.append(", ModelVersion=");
        sb.append(this.f11997b);
        sb.append(", TopicCode=");
        return tn.x("Topic { ", awf.x(sb, this.f11998c, " }"));
    }
}

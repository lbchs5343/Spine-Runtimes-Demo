package g;

/* loaded from: classes.dex */
public final class gpf implements Comparable {

    /* renamed from: a, reason: collision with root package name */
    public final cwx f18532a;

    /* renamed from: b, reason: collision with root package name */
    public final int f18533b;

    /* renamed from: c, reason: collision with root package name */
    public final gsh f18534c;

    public gpf(int i, gsh gshVar, cwx cwxVar) {
        this.f18533b = i;
        this.f18534c = gshVar;
        this.f18532a = cwxVar;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return Integer.compare(this.f18533b, ((gpf) obj).f18533b);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f18532a);
        sb.append(" -> ");
        gsh gshVar = this.f18534c;
        sb.append(gshVar.d());
        sb.append(" in ");
        sb.append(gshVar.ae);
        return sb.toString();
    }
}

package g;

/* loaded from: classes.dex */
public final class dpl implements Comparable {

    /* renamed from: a, reason: collision with root package name */
    public int f14592a;

    /* renamed from: b, reason: collision with root package name */
    public int f14593b;

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        dpl dplVar = (dpl) obj;
        int i = this.f14593b;
        int i2 = dplVar.f14593b;
        return i != i2 ? i - i2 : this.f14592a - dplVar.f14592a;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Order{order=");
        sb.append(this.f14593b);
        sb.append(", index=");
        return awf.s(sb, this.f14592a, '}');
    }
}

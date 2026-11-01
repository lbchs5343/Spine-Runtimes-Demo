package j$.util;

/* renamed from: j$.util.l, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0282l {

    /* renamed from: c, reason: collision with root package name */
    public static final C0282l f20815c = new C0282l();

    /* renamed from: a, reason: collision with root package name */
    public final boolean f20816a;

    /* renamed from: b, reason: collision with root package name */
    public final double f20817b;

    public C0282l() {
        this.f20816a = false;
        this.f20817b = Double.NaN;
    }

    public C0282l(double d2) {
        this.f20816a = true;
        this.f20817b = d2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0282l)) {
            return false;
        }
        C0282l c0282l = (C0282l) obj;
        boolean z = this.f20816a;
        return (z && c0282l.f20816a) ? Double.compare(this.f20817b, c0282l.f20817b) == 0 : z == c0282l.f20816a;
    }

    public final int hashCode() {
        if (!this.f20816a) {
            return 0;
        }
        long doubleToLongBits = Double.doubleToLongBits(this.f20817b);
        return (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
    }

    public final String toString() {
        if (!this.f20816a) {
            return "OptionalDouble.empty";
        }
        return "OptionalDouble[" + this.f20817b + "]";
    }
}

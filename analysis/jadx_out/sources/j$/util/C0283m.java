package j$.util;

/* renamed from: j$.util.m, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0283m {

    /* renamed from: c, reason: collision with root package name */
    public static final C0283m f20818c = new C0283m();

    /* renamed from: a, reason: collision with root package name */
    public final boolean f20819a;

    /* renamed from: b, reason: collision with root package name */
    public final long f20820b;

    public C0283m() {
        this.f20819a = false;
        this.f20820b = 0L;
    }

    public C0283m(long j) {
        this.f20819a = true;
        this.f20820b = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0283m)) {
            return false;
        }
        C0283m c0283m = (C0283m) obj;
        boolean z = this.f20819a;
        return (z && c0283m.f20819a) ? this.f20820b == c0283m.f20820b : z == c0283m.f20819a;
    }

    public final int hashCode() {
        if (!this.f20819a) {
            return 0;
        }
        long j = this.f20820b;
        return (int) (j ^ (j >>> 32));
    }

    public final String toString() {
        if (!this.f20819a) {
            return "OptionalLong.empty";
        }
        return "OptionalLong[" + this.f20820b + "]";
    }
}

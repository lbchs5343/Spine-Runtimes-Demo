package g;

/* loaded from: classes3.dex */
public final class bwz {

    /* renamed from: a, reason: collision with root package name */
    public final Long f12349a;

    /* renamed from: b, reason: collision with root package name */
    public final Boolean f12350b;

    /* renamed from: c, reason: collision with root package name */
    public final long f12351c;

    /* renamed from: d, reason: collision with root package name */
    public final long f12352d;

    /* renamed from: e, reason: collision with root package name */
    public final String f12353e;

    /* renamed from: f, reason: collision with root package name */
    public final long f12354f;

    /* renamed from: g, reason: collision with root package name */
    public final Long f12355g;
    public final String h;
    public final Long i;
    public final long j;
    public final long k;

    public bwz(String str, String str2, long j, long j2, long j3, long j4, long j5, Long l, Long l2, Long l3, Boolean bool) {
        ckd.bf(str);
        ckd.bf(str2);
        ckd.u(j >= 0);
        ckd.u(j2 >= 0);
        ckd.u(j3 >= 0);
        ckd.u(j5 >= 0);
        this.f12353e = str;
        this.h = str2;
        this.j = j;
        this.f12351c = j2;
        this.f12352d = j3;
        this.f12354f = j4;
        this.k = j5;
        this.f12349a = l;
        this.f12355g = l2;
        this.i = l3;
        this.f12350b = bool;
    }

    public final bwz l(Long l, Long l2, Boolean bool) {
        return new bwz(this.f12353e, this.h, this.j, this.f12351c, this.f12352d, this.f12354f, this.k, this.f12349a, l, l2, (bool == null || bool.booleanValue()) ? bool : null);
    }

    public final bwz m(long j) {
        return new bwz(this.f12353e, this.h, this.j, this.f12351c, this.f12352d, j, this.k, this.f12349a, this.f12355g, this.i, this.f12350b);
    }
}

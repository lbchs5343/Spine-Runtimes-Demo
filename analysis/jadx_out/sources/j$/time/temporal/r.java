package j$.time.temporal;

import j$.util.Objects;

/* loaded from: classes2.dex */
public abstract class r {

    /* renamed from: a, reason: collision with root package name */
    public static final j$.time.format.a f20620a = new j$.time.format.a(1);

    /* renamed from: b, reason: collision with root package name */
    public static final j$.time.format.a f20621b = new j$.time.format.a(2);

    /* renamed from: c, reason: collision with root package name */
    public static final j$.time.format.a f20622c = new j$.time.format.a(3);

    /* renamed from: d, reason: collision with root package name */
    public static final j$.time.format.a f20623d = new j$.time.format.a(4);

    /* renamed from: e, reason: collision with root package name */
    public static final j$.time.format.a f20624e = new j$.time.format.a(5);

    /* renamed from: f, reason: collision with root package name */
    public static final j$.time.format.a f20625f = new j$.time.format.a(6);

    /* renamed from: g, reason: collision with root package name */
    public static final j$.time.format.a f20626g = new j$.time.format.a(7);

    public static int a(n nVar, q qVar) {
        u k = nVar.k(qVar);
        if (k.f20627a < -2147483648L || k.f20630d > 2147483647L) {
            throw new t("Invalid field " + qVar + " for get() method, use getLong() instead");
        }
        long w = nVar.w(qVar);
        if (k.d(w)) {
            return (int) w;
        }
        throw new j$.time.a("Invalid value for " + qVar + " (valid values " + k + "): " + w);
    }

    public static m b(m mVar, long j, s sVar) {
        long j2;
        if (j == Long.MIN_VALUE) {
            mVar = mVar.d(Long.MAX_VALUE, sVar);
            j2 = 1;
        } else {
            j2 = -j;
        }
        return mVar.d(j2, sVar);
    }

    public static Object c(n nVar, j$.time.format.a aVar) {
        if (aVar == f20620a || aVar == f20621b || aVar == f20622c) {
            return null;
        }
        return aVar.a(nVar);
    }

    public static u d(n nVar, q qVar) {
        if (!(qVar instanceof a)) {
            Objects.requireNonNull(qVar, "field");
            return qVar.j(nVar);
        }
        if (nVar.e(qVar)) {
            return ((a) qVar).f20602b;
        }
        throw new t(j$.time.b.a("Unsupported field: ", qVar));
    }
}

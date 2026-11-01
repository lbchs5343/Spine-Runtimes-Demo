package g;

/* loaded from: classes3.dex */
public final class bhd {

    /* renamed from: a, reason: collision with root package name */
    public final Object f11570a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f11571b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f11572c;

    public bhd(Object obj, Object obj2, Object obj3) {
        this.f11570a = obj;
        this.f11571b = obj2;
        this.f11572c = obj3;
    }

    public final IllegalArgumentException d() {
        Object obj = this.f11570a;
        return new IllegalArgumentException(awf.f(String.valueOf(obj), "=", String.valueOf(this.f11572c), tn.o("Multiple entries with same key: ", String.valueOf(obj), "=", String.valueOf(this.f11571b), " and ")));
    }
}

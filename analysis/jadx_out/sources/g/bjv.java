package g;

/* loaded from: classes3.dex */
public final class bjv {

    /* renamed from: a, reason: collision with root package name */
    public final Object f11715a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f11716b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f11717c;

    public bjv(Object obj, Object obj2, Object obj3) {
        this.f11715a = obj;
        this.f11716b = obj2;
        this.f11717c = obj3;
    }

    public final IllegalArgumentException d() {
        Object obj = this.f11715a;
        return new IllegalArgumentException(awf.f(String.valueOf(obj), "=", String.valueOf(this.f11717c), tn.o("Multiple entries with same key: ", String.valueOf(obj), "=", String.valueOf(this.f11716b), " and ")));
    }
}

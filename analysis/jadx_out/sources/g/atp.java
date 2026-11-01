package g;

/* loaded from: classes3.dex */
public final class atp {

    /* renamed from: a, reason: collision with root package name */
    public int f10814a;

    /* renamed from: b, reason: collision with root package name */
    public int f10815b;

    /* renamed from: c, reason: collision with root package name */
    public int f10816c;

    /* renamed from: d, reason: collision with root package name */
    public Object[] f10817d;

    /* renamed from: e, reason: collision with root package name */
    public brr f10818e;

    /* renamed from: f, reason: collision with root package name */
    public int f10819f;

    /* renamed from: g, reason: collision with root package name */
    public Object[] f10820g;
    public int h;
    public int i;
    public bdl j;

    public final Object k(int i) {
        int i2;
        if (i < this.f10814a && i >= 0) {
            Object[] objArr = this.f10820g;
            return (objArr == null || i < (i2 = this.f10816c)) ? this.f10817d[i] : objArr[(i - i2) + this.i];
        }
        StringBuilder z = tn.z(i, "Asked to get item at ", " but size is ");
        z.append(this.f10814a);
        throw new IndexOutOfBoundsException(z.toString());
    }
}

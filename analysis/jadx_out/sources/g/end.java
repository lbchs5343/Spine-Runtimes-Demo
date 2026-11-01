package g;

/* loaded from: classes.dex */
public final class end {

    /* renamed from: a, reason: collision with root package name */
    public boolean f15848a;

    /* renamed from: b, reason: collision with root package name */
    public int f15849b;

    /* renamed from: c, reason: collision with root package name */
    public int f15850c;

    /* renamed from: d, reason: collision with root package name */
    public int f15851d;

    /* renamed from: e, reason: collision with root package name */
    public int f15852e;

    /* renamed from: f, reason: collision with root package name */
    public int f15853f;

    /* renamed from: g, reason: collision with root package name */
    public int f15854g;
    public boolean h;

    public final void i(int i, int i2) {
        this.f15854g = i;
        this.f15849b = i2;
        this.f15848a = true;
        if (this.h) {
            if (i2 != Integer.MIN_VALUE) {
                this.f15851d = i2;
            }
            if (i != Integer.MIN_VALUE) {
                this.f15853f = i;
                return;
            }
            return;
        }
        if (i != Integer.MIN_VALUE) {
            this.f15851d = i;
        }
        if (i2 != Integer.MIN_VALUE) {
            this.f15853f = i2;
        }
    }
}

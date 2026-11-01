package g;

/* loaded from: classes3.dex */
public final class cvs extends dzw {

    /* renamed from: a, reason: collision with root package name */
    public int f13603a;

    /* renamed from: b, reason: collision with root package name */
    public float f13604b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f13605c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f13606d;

    /* renamed from: e, reason: collision with root package name */
    public Integer f13607e;

    /* renamed from: f, reason: collision with root package name */
    public int f13608f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f13609g;
    public int h;
    public int i;

    @Override // g.dzw
    public final void j() {
        super.j();
        if (this.i < 0) {
            throw new IllegalArgumentException("Stop indicator size must be >= 0.");
        }
        if (this.f13603a == 0) {
            if ((aa() > 0 || (this.f13606d && k() > 0)) && this.v == 0) {
                throw new IllegalArgumentException("Rounded corners without gap are not supported in contiguous indeterminate animation.");
            }
            if (this.r.length < 3) {
                throw new IllegalArgumentException("Contiguous indeterminate animation must be used with 3 or more indicator colors.");
            }
        }
    }

    public final int k() {
        return !this.f13606d ? aa() : this.f13605c ? (int) (this.s * this.f13604b) : this.h;
    }

    @Override // g.dzw
    public final boolean l() {
        return super.l() && k() == aa();
    }
}

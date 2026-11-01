package g;

/* loaded from: classes.dex */
public final class bdl extends brr {

    /* renamed from: a, reason: collision with root package name */
    public final brr f11325a;

    /* renamed from: b, reason: collision with root package name */
    public final gxt f11326b;

    public bdl(brr brrVar) {
        this.f11325a = brrVar;
        this.f11326b = new gxt(brrVar);
    }

    @Override // g.brr
    public final boolean c(Object obj, Object obj2) {
        return this.f11325a.c(obj, obj2);
    }

    @Override // g.brr, java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return this.f11325a.compare(obj, obj2);
    }

    @Override // g.brr
    public final boolean d(Object obj, Object obj2) {
        return this.f11325a.d(obj, obj2);
    }

    @Override // g.etl
    public final void e(int i, int i2) {
        this.f11326b.e(i, i2);
    }

    @Override // g.brr
    public final Object f(Object obj, Object obj2) {
        return this.f11325a.f(obj, obj2);
    }

    @Override // g.etl
    public final void g(int i, int i2) {
        this.f11326b.g(i, i2);
    }

    @Override // g.brr, g.etl
    public final void h(int i, int i2, Object obj) {
        this.f11326b.h(i, i2, obj);
    }
}

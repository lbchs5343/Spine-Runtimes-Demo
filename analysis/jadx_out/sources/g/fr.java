package g;

import java.util.List;

/* loaded from: classes3.dex */
public final class fr implements gmo {

    /* renamed from: a, reason: collision with root package name */
    public float f17270a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f17271b;

    public fr(ghi ghiVar, float f2) {
        this.f17271b = ghiVar;
        this.f17270a = f2;
    }

    public fr(List list) {
        this.f17270a = -1.0f;
        this.f17271b = (flj) list.get(0);
    }

    @Override // g.gmo
    public float _bu() {
        return ((flj) this.f17271b).u();
    }

    @Override // g.gmo
    public flj d() {
        return (flj) this.f17271b;
    }

    @Override // g.gmo
    public boolean dq() {
        return false;
    }

    @Override // g.gmo
    public boolean dq(float f2) {
        return !((flj) this.f17271b).v();
    }

    @Override // g.gmo
    public boolean g(float f2) {
        if (this.f17270a == f2) {
            return true;
        }
        this.f17270a = f2;
        return false;
    }

    @Override // g.gmo
    public float ox() {
        return ((flj) this.f17271b).t();
    }
}

package g;

/* loaded from: classes.dex */
public final class cff extends bcx {

    /* renamed from: a, reason: collision with root package name */
    public final bjt f12778a;

    public cff(bjt bjtVar) {
        this.f12778a = bjtVar;
        this.az = bjtVar.hashCode();
    }

    @Override // g.cwx
    public final boolean b(Object obj) {
        return this.f12778a == ((cff) obj).f12778a;
    }

    @Override // g.cwx
    public final bjt f() {
        return this.f12778a;
    }

    @Override // g.cwx
    public final String toString() {
        return this.f12778a.toString();
    }
}

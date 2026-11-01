package g;

/* loaded from: classes.dex */
public final class aoe extends bcx {

    /* renamed from: a, reason: collision with root package name */
    public static final bjt[] f10561a = {bjt.ARRAY};

    /* renamed from: d, reason: collision with root package name */
    public final cwx f10562d;

    public aoe(cwx cwxVar) {
        this.f10562d = cwxVar;
        this.az = cwxVar.az;
    }

    @Override // g.cwx
    public final boolean b(Object obj) {
        return this.f10562d.equals(((aoe) obj).f10562d);
    }

    @Override // g.cwx
    public final cwx e() {
        return this.f10562d.e();
    }

    @Override // g.cwx
    public final bjt f() {
        return bjt.ARRAY;
    }

    @Override // g.bcx, g.cwx
    public final bjt[] g() {
        return f10561a;
    }

    @Override // g.bcx, g.cwx
    public final boolean h() {
        return this.f10562d.h();
    }

    @Override // g.cwx
    public final int i() {
        return this.f10562d.i() + 1;
    }

    @Override // g.bcx, g.cwx
    public final cwx j() {
        return new aoe(this.f10562d.j());
    }

    @Override // g.cwx
    public final cwx k() {
        return this.f10562d;
    }

    @Override // g.cwx
    public final String toString() {
        return this.f10562d + "[]";
    }
}

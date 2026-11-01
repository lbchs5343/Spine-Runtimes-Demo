package g;

/* loaded from: classes.dex */
public final class euo implements bdp, qz {

    /* renamed from: a, reason: collision with root package name */
    public final w f16188a;

    /* renamed from: b, reason: collision with root package name */
    public final boj f16189b;

    public euo(w wVar, boj bojVar) {
        this.f16188a = wVar;
        this.f16189b = bojVar;
    }

    @Override // g.bdp
    public final void _z(Object obj) {
        this.f16188a._z(obj);
    }

    @Override // g.qz
    public final qz f() {
        return this.f16188a;
    }

    @Override // g.bdp
    public final boj getContext() {
        return this.f16189b;
    }
}

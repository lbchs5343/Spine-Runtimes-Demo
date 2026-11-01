package g;

/* loaded from: classes3.dex */
public final class agt extends ehi {

    /* renamed from: a, reason: collision with root package name */
    public final dpd f10195a;

    /* renamed from: b, reason: collision with root package name */
    public final long f10196b;

    public agt(dpd dpdVar, long j) {
        this.f10195a = dpdVar;
        this.f10196b = j;
    }

    @Override // g.ehi
    public final dsy c() {
        throw new IllegalStateException("Cannot read raw response body of a converted body.");
    }

    @Override // g.ehi
    public final long d() {
        return this.f10196b;
    }

    @Override // g.ehi
    public final dpd e() {
        return this.f10195a;
    }
}

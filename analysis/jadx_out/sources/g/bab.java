package g;

/* loaded from: classes3.dex */
public final class bab extends sz {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ dpd f11150a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f11151b;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ byte[] f11152f;

    public bab(dpd dpdVar, int i, byte[] bArr) {
        this.f11150a = dpdVar;
        this.f11151b = i;
        this.f11152f = bArr;
    }

    @Override // g.sz
    public final long c() {
        return this.f11151b;
    }

    @Override // g.sz
    public final dpd d() {
        return this.f11150a;
    }

    @Override // g.sz
    public final void e(cbs cbsVar) {
        cbsVar.d(this.f11151b, this.f11152f);
    }
}

package g;

/* loaded from: classes3.dex */
public final class dlh implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ csp f14361a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f14362b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ long f14363c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ boolean f14364d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ rs f14365e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ long f14366f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ rs f14367g;

    public dlh(csp cspVar, rs rsVar, long j, int i, long j2, boolean z, rs rsVar2) {
        this.f14361a = cspVar;
        this.f14365e = rsVar;
        this.f14366f = j;
        this.f14362b = i;
        this.f14363c = j2;
        this.f14364d = z;
        this.f14367g = rsVar2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        csp cspVar = this.f14361a;
        rs rsVar = this.f14365e;
        cspVar.ar(rsVar);
        cspVar.x(this.f14366f, false);
        csp.v(cspVar, this.f14365e, this.f14362b, this.f14363c, true, this.f14364d);
        eur.c();
        if (((cyg) cspVar.z).f13747e.g(null, gad.az)) {
            csp.w(cspVar, rsVar, this.f14367g);
        }
    }
}

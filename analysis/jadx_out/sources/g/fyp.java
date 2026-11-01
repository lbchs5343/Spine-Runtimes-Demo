package g;

/* loaded from: classes3.dex */
public final class fyp implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ long f17650a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f17651b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ rs f17652c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ rs f17653d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f17654e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ csp f17655f;

    public fyp(csp cspVar, rs rsVar, int i, long j, boolean z, rs rsVar2) {
        this.f17655f = cspVar;
        this.f17653d = rsVar;
        this.f17654e = i;
        this.f17650a = j;
        this.f17651b = z;
        this.f17652c = rsVar2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        csp cspVar = this.f17655f;
        rs rsVar = this.f17653d;
        cspVar.ar(rsVar);
        csp.v(cspVar, this.f17653d, this.f17654e, this.f17650a, false, this.f17651b);
        eur.c();
        if (((cyg) cspVar.z).f13747e.g(null, gad.az)) {
            csp.w(cspVar, rsVar, this.f17652c);
        }
    }
}

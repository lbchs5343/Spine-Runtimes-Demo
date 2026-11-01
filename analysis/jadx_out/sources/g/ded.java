package g;

/* loaded from: classes.dex */
public final class ded extends czu {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ fwx f14039c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ cgs f14040d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f14041e;

    public /* synthetic */ ded(cgs cgsVar, fwx fwxVar, int i) {
        this.f14041e = i;
        this.f14040d = cgsVar;
        this.f14039c = fwxVar;
    }

    @Override // g.czu
    public final void b() {
        switch (this.f14041e) {
            case 0:
                ctx ctxVar = this.f14040d.am;
                fgj.e().f(ctxVar, ctxVar.getPackageManager().getLaunchIntentForPackage(this.f14039c.getPackageName()));
                break;
            case 1:
                ctx ctxVar2 = this.f14040d.am;
                fwx fwxVar = this.f14039c;
                eyt.ag(ctxVar2, fwxVar.getPackageName(), fwxVar.getName(), true);
                break;
            default:
                ctx ctxVar3 = this.f14040d.am;
                fwx fwxVar2 = this.f14039c;
                eyt.ag(ctxVar3, fwxVar2.getPackageName(), fwxVar2.getName(), true);
                break;
        }
    }
}

package g;

/* loaded from: classes.dex */
public final /* synthetic */ class hdk implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f19274a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ark f19275b;

    public /* synthetic */ hdk(ark arkVar, int i) {
        this.f19274a = i;
        this.f19275b = arkVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f19274a) {
            case 0:
                ark arkVar = this.f19275b;
                if (arkVar.f10714c) {
                    arkVar.f10714c = false;
                    arkVar.y("connection_timeout", null);
                    if (arkVar.f10718g != null && arkVar.r()) {
                        try {
                            gwn.u(arkVar.f10718g);
                        } catch (RuntimeException unused) {
                        }
                    }
                    arkVar.s();
                    break;
                }
                break;
            case 1:
                ark arkVar2 = this.f19275b;
                arkVar2.m.removeCallbacks(arkVar2.f10716e);
                arkVar2.aa(false, null, "disconnected");
                arkVar2.y("disconnected", null);
                arkVar2.n = null;
                arkVar2.f10714c = false;
                if (arkVar2.f10718g != null && arkVar2.r()) {
                    try {
                        gwn.u(arkVar2.f10718g);
                    } catch (RuntimeException unused2) {
                    }
                }
                arkVar2.s();
                break;
            case 2:
                this.f19275b.s();
                break;
            default:
                ark arkVar3 = this.f19275b;
                arkVar3.n = null;
                arkVar3.f10714c = false;
                arkVar3.m.removeCallbacks(arkVar3.f10716e);
                arkVar3.y("not_running", null);
                arkVar3.t(false);
                arkVar3.s();
                break;
        }
    }
}

package g;

/* loaded from: classes.dex */
public final /* synthetic */ class cou implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13246a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ bus f13247b;

    public /* synthetic */ cou(bus busVar, int i) {
        this.f13246a = i;
        this.f13247b = busVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.f13246a;
        bus busVar = this.f13247b;
        switch (i) {
            case 0:
                bus.t(busVar);
                break;
            default:
                int i2 = bus.f12241a;
                busVar.w();
                break;
        }
    }
}

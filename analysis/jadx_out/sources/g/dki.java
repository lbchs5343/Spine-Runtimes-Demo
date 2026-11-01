package g;

/* loaded from: classes.dex */
public final /* synthetic */ class dki implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f14308a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ggk f14309b;

    public /* synthetic */ dki(ggk ggkVar, int i) {
        this.f14308a = i;
        this.f14309b = ggkVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f14308a) {
            case 0:
                ggk.p(this.f14309b);
                break;
            default:
                ggk.q(this.f14309b);
                break;
        }
    }
}

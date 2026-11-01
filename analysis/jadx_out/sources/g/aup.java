package g;

/* loaded from: classes.dex */
public final class aup implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ eum f10881a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f10882b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ cpx f10883c;

    public /* synthetic */ aup(eum eumVar, cpx cpxVar, int i) {
        this.f10882b = i;
        this.f10881a = eumVar;
        this.f10883c = cpxVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f10882b) {
            case 0:
                this.f10881a.l.add(this.f10883c);
                break;
            default:
                this.f10881a.l.remove(this.f10883c);
                break;
        }
    }
}

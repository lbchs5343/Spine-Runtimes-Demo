package g;

/* loaded from: classes3.dex */
public final class bzl implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ gyy f12510a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f12511b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ake f12512c;

    public /* synthetic */ bzl(gyy gyyVar, ake akeVar, int i) {
        this.f12511b = i;
        this.f12510a = gyyVar;
        this.f12512c = akeVar;
    }

    private final void d() {
        synchronized (this.f12510a) {
            try {
                this.f12510a.f19035b = false;
                if (!this.f12510a.f19034a.v()) {
                    bgm bgmVar = ((cyg) this.f12510a.f19034a.z).z;
                    cyg.ak(bgmVar);
                    bgmVar.f11519c.h("Connected to service");
                    dbb dbbVar = this.f12510a.f19034a;
                    ake akeVar = this.f12512c;
                    dbbVar._e();
                    dbbVar.l = akeVar;
                    dbbVar.x();
                    dbbVar.p();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f12511b) {
            case 0:
                d();
                return;
            default:
                synchronized (this.f12510a) {
                    try {
                        this.f12510a.f19035b = false;
                        if (!this.f12510a.f19034a.v()) {
                            bgm bgmVar = ((cyg) this.f12510a.f19034a.z).z;
                            cyg.ak(bgmVar);
                            bgmVar.o.h("Connected to remote service");
                            dbb dbbVar = this.f12510a.f19034a;
                            ake akeVar = this.f12512c;
                            dbbVar._e();
                            ckd.k(akeVar);
                            dbbVar.l = akeVar;
                            dbbVar.x();
                            dbbVar.p();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return;
        }
    }
}

package g;

/* loaded from: classes.dex */
public final class axi implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object f11021a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f11022b;

    /* renamed from: c, reason: collision with root package name */
    public final long f11023c;

    public /* synthetic */ axi(Object obj, long j, int i) {
        this.f11022b = i;
        this.f11021a = obj;
        this.f11023c = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f11022b) {
            case 0:
                yz yzVar = (yz) this.f11021a;
                yzVar.f20375b.setVisibility(0);
                yzVar.f20375b.dq();
                gkb.dq(yzVar.f20375b, this.f11023c);
                break;
            case 1:
                com.tencent.bugly.proguard.r rVar = (com.tencent.bugly.proguard.r) this.f11021a;
                rVar.b();
                rVar.a(this.f11023c);
                break;
            case 2:
                ((fqm) this.f11021a).j(this.f11023c);
                break;
            default:
                bcm bcmVar = (bcm) this.f11021a;
                ((cyg) bcmVar.z).am().l(this.f11023c);
                bcmVar.q = null;
                break;
        }
    }
}

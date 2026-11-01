package g;

/* loaded from: classes.dex */
public final class fig implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16831a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ com.tencent.bugly.proguard.ay f16832b;

    public /* synthetic */ fig(com.tencent.bugly.proguard.ay ayVar, int i) {
        this.f16831a = i;
        this.f16832b = ayVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f16831a) {
            case 0:
                com.tencent.bugly.proguard.ay.a(this.f16832b);
                break;
            default:
                com.tencent.bugly.proguard.ay.a(this.f16832b);
                break;
        }
    }
}

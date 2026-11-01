package g;

/* loaded from: classes.dex */
public final class dno extends Thread {

    /* renamed from: a, reason: collision with root package name */
    public String f14478a;

    /* renamed from: b, reason: collision with root package name */
    public byte[] f14479b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ com.tencent.bugly.proguard.w f14480c;

    /* renamed from: d, reason: collision with root package name */
    public final int f14481d = 4;

    /* renamed from: e, reason: collision with root package name */
    public int f14482e;

    public dno(com.tencent.bugly.proguard.w wVar) {
        this.f14480c = wVar;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        if (this.f14481d != 4) {
            return;
        }
        this.f14480c.a(this.f14482e, this.f14478a, this.f14479b, (com.tencent.bugly.proguard.v) null);
    }
}

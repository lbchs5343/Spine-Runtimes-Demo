package g;

/* loaded from: classes.dex */
public final class ana implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f10506a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f10507b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f10508c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f10509d;

    public /* synthetic */ ana(int i, String str, String str2, String str3) {
        this.f10508c = i;
        this.f10509d = str;
        this.f10506a = str2;
        this.f10507b = str3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f10508c) {
            case 0:
                com.tencent.bugly.proguard.ao.d(this.f10509d, this.f10506a, this.f10507b);
                break;
            default:
                com.tencent.bugly.proguard.ao.e(this.f10509d, this.f10506a, this.f10507b);
                break;
        }
    }
}

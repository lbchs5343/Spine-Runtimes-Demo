package g;

/* loaded from: classes3.dex */
public final /* synthetic */ class aur implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f10884a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f10885b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ dm f10886c;

    public /* synthetic */ aur(dm dmVar, String str, int i) {
        this.f10885b = i;
        this.f10886c = dmVar;
        this.f10884a = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f10885b) {
            case 0:
                ((ad) this.f10886c.f14412c).i.evaluateJavascript(this.f10884a, null);
                break;
            default:
                ((ad) this.f10886c.f14412c).i.evaluateJavascript(this.f10884a, null);
                break;
        }
    }
}

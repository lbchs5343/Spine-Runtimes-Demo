package g;

/* loaded from: classes3.dex */
public final /* synthetic */ class gdv implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f17956a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f17957b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f17958c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ eku f17959d;

    public /* synthetic */ gdv(eku ekuVar, String str, String str2, int i) {
        this.f17958c = i;
        this.f17959d = ekuVar;
        this.f17956a = str;
        this.f17957b = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.f17958c;
        String str = this.f17957b;
        String str2 = this.f17956a;
        eku ekuVar = this.f17959d;
        switch (i) {
            case 0:
                ekuVar.i.runOnUiThread(new gdv(ekuVar, str2, str, 1));
                break;
            default:
                boolean z = eku.f15714e;
                ekuVar.r(str2, str);
                break;
        }
    }
}

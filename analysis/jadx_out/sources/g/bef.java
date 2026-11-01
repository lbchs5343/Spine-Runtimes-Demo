package g;

/* loaded from: classes.dex */
public final class bef implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ b.c.d f11363a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f11364b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f11365c;

    public /* synthetic */ bef(b.c.d dVar, String str, int i) {
        this.f11364b = i;
        this.f11363a = dVar;
        this.f11365c = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.f11364b;
        String str = this.f11365c;
        b.c.d dVar = this.f11363a;
        switch (i) {
            case 0:
                int i2 = b.c.d.f355d;
                dVar.an(str);
                break;
            default:
                int i3 = b.c.d.f355d;
                dVar.ai(str);
                break;
        }
    }
}

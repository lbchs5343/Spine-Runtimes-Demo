package g;

/* loaded from: classes.dex */
public final class fwo implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f17525a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ elf f17526b;

    public /* synthetic */ fwo(elf elfVar, int i) {
        this.f17525a = i;
        this.f17526b = elfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f17525a) {
            case 0:
                this.f17526b.ag();
                break;
            case 1:
                this.f17526b.ad("pro", true);
                break;
            default:
                this.f17526b.ad("pro", true);
                break;
        }
    }
}

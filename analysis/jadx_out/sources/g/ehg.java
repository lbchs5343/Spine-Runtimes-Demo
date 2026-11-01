package g;

/* loaded from: classes3.dex */
public final class ehg implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15543a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ bcm f15544b;

    public /* synthetic */ ehg(bcm bcmVar, int i) {
        this.f15543a = i;
        this.f15544b = bcmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f15543a) {
            case 0:
                bcm bcmVar = this.f15544b;
                bcmVar.q = bcmVar.l;
                break;
            default:
                this.f15544b.l = null;
                break;
        }
    }
}

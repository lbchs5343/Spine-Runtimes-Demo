package g;

/* loaded from: classes3.dex */
public final class eod implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ cis f15887a;

    /* renamed from: b, reason: collision with root package name */
    public final long f15888b;

    /* renamed from: c, reason: collision with root package name */
    public final long f15889c;

    public eod(cis cisVar, long j, long j2) {
        this.f15887a = cisVar;
        this.f15888b = j;
        this.f15889c = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        fth fthVar = ((cyg) ((cjv) this.f15887a.f12948b).z).j;
        cyg.ak(fthVar);
        fthVar.p(new aku(16, this));
    }
}

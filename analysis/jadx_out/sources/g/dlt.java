package g;

/* loaded from: classes3.dex */
public final class dlt implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ long f14385a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f14386b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ bcm f14387c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ ein f14388d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ein f14389e;

    public dlt(bcm bcmVar, ein einVar, ein einVar2, long j, boolean z) {
        this.f14387c = bcmVar;
        this.f14388d = einVar;
        this.f14389e = einVar2;
        this.f14385a = j;
        this.f14386b = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f14387c.w(this.f14388d, this.f14389e, this.f14385a, this.f14386b, null);
    }
}

package g;

/* loaded from: classes.dex */
public final class ghk extends ghe {

    /* renamed from: g, reason: collision with root package name */
    public final gsn f18163g;
    public final /* synthetic */ er h;

    public ghk(er erVar, long j, gsn gsnVar) {
        this.h = erVar;
        this.f18151a = j;
        this.f18152b = -1;
        this.f18163g = gsnVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f18163g.t(this.h);
    }

    @Override // g.ghe
    public final String toString() {
        return super.toString() + this.f18163g;
    }
}

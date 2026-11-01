package g;

import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class bxb implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ csp f12361a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f12362b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ long f12363c;

    public /* synthetic */ bxb(csp cspVar, long j, int i) {
        this.f12362b = i;
        this.f12361a = cspVar;
        this.f12363c = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f12362b) {
            case 0:
                csp cspVar = this.f12361a;
                gmr gmrVar = ((cyg) cspVar.z).f13744b;
                cyg.ai(gmrVar);
                fou fouVar = gmrVar.o;
                long j = this.f12363c;
                fouVar.g(j);
                bgm bgmVar = ((cyg) cspVar.z).z;
                cyg.ak(bgmVar);
                bgmVar.o.i(Long.valueOf(j), "Session timeout duration set");
                break;
            default:
                long j2 = this.f12363c;
                csp cspVar2 = this.f12361a;
                cspVar2.x(j2, true);
                ((cyg) cspVar2.z).ao().r(new AtomicReference());
                break;
        }
    }
}

package g;

/* loaded from: classes3.dex */
public final class ffk implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ cjv f16705a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f16706b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ long f16707c;

    public /* synthetic */ ffk(cjv cjvVar, long j, int i) {
        this.f16706b = i;
        this.f16705a = cjvVar;
        this.f16707c = j;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0087, code lost:
    
        if (r1.x.g() != false) goto L12;
     */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() {
        switch (this.f16706b) {
            case 0:
                cjv cjvVar = this.f16705a;
                cjvVar._e();
                cjvVar.l();
                cyg cygVar = (cyg) cjvVar.z;
                bgm bgmVar = cygVar.z;
                cyg.ak(bgmVar);
                dvb dvbVar = bgmVar.f11519c;
                long j = this.f16707c;
                dvbVar.i(Long.valueOf(j), "Activity resumed, time");
                if (!cygVar.f13747e.j()) {
                    gmr gmrVar = cygVar.f13744b;
                    cyg.ai(gmrVar);
                    break;
                }
                fcw fcwVar = cjvVar.k;
                ((cjv) fcwVar.f16581b)._e();
                ((rd) fcwVar.f16580a).i();
                fcwVar.f16582d = j;
                fcwVar.f16583e = j;
                cis cisVar = cjvVar.f13007g;
                cjv cjvVar2 = (cjv) cisVar.f12948b;
                cjvVar2._e();
                eod eodVar = (eod) cisVar.f12947a;
                if (eodVar != null) {
                    cjvVar2.h.removeCallbacks(eodVar);
                }
                gmr gmrVar2 = ((cyg) cjvVar2.z).f13744b;
                cyg.ai(gmrVar2);
                gmrVar2.x.f(false);
                bzv bzvVar = cjvVar.j;
                cjv cjvVar3 = (cjv) bzvVar.f12530b;
                cyg cygVar2 = (cyg) cjvVar3.z;
                cjvVar3._e();
                if (cygVar2.as()) {
                    cygVar2.f13743ab.getClass();
                    bzvVar.g(System.currentTimeMillis(), false);
                    break;
                }
                break;
            default:
                cjv cjvVar4 = this.f16705a;
                cjvVar4._e();
                cjvVar4.l();
                cyg cygVar3 = (cyg) cjvVar4.z;
                bgm bgmVar2 = cygVar3.z;
                cyg.ak(bgmVar2);
                dvb dvbVar2 = bgmVar2.f11519c;
                long j2 = this.f16707c;
                dvbVar2.i(Long.valueOf(j2), "Activity paused, time");
                cis cisVar2 = cjvVar4.f13007g;
                cjv cjvVar5 = (cjv) cisVar2.f12948b;
                ((cyg) cjvVar5.z).f13743ab.getClass();
                eod eodVar2 = new eod(cisVar2, System.currentTimeMillis(), j2);
                cisVar2.f12947a = eodVar2;
                cjvVar5.h.postDelayed(eodVar2, 2000L);
                if (cygVar3.f13747e.j()) {
                    ((rd) cjvVar4.k.f16580a).i();
                    break;
                }
                break;
        }
    }
}

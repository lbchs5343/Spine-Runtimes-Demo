package g;

import android.os.SystemClock;

/* loaded from: classes3.dex */
public final class rd extends emo {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f19893a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f19894b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ rd(Object obj, gan ganVar, int i) {
        super(ganVar);
        this.f19893a = i;
        this.f19894b = obj;
    }

    @Override // g.emo
    public final void c() {
        switch (this.f19893a) {
            case 0:
                fcw fcwVar = (fcw) this.f19894b;
                cjv cjvVar = (cjv) fcwVar.f16581b;
                cjvVar._e();
                cyg cygVar = (cyg) cjvVar.z;
                cygVar.f13743ab.getClass();
                fcwVar.f(SystemClock.elapsedRealtime(), false, false);
                fqm am = cygVar.am();
                cygVar.f13743ab.getClass();
                am.l(SystemClock.elapsedRealtime());
                break;
            default:
                uk ukVar = (uk) this.f19894b;
                ukVar.zza();
                bgm bgmVar = ((cyg) ukVar.z).z;
                cyg.ak(bgmVar);
                bgmVar.f11519c.h("Starting upload from DelayedRunnable");
                ukVar.f10133a.bf();
                break;
        }
    }
}

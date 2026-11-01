package g;

import android.os.Looper;
import android.os.SystemClock;

/* loaded from: classes3.dex */
public final class cjv extends os {

    /* renamed from: g, reason: collision with root package name */
    public final cis f13007g;
    public dae h;
    public final bzv j;
    public final fcw k;

    public cjv(cyg cygVar) {
        super(cygVar);
        this.j = new bzv(6, this);
        fcw fcwVar = new fcw();
        fcwVar.f16581b = this;
        cyg cygVar2 = (cyg) this.z;
        fcwVar.f16580a = new rd(fcwVar, cygVar2, 0);
        cygVar2.f13743ab.getClass();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        fcwVar.f16582d = elapsedRealtime;
        fcwVar.f16583e = elapsedRealtime;
        this.k = fcwVar;
        cis cisVar = new cis();
        cisVar.f12948b = this;
        this.f13007g = cisVar;
    }

    @Override // g.os
    public final boolean b() {
        return false;
    }

    public final void l() {
        _e();
        if (this.h == null) {
            this.h = new dae(Looper.getMainLooper(), 5, false);
        }
    }
}

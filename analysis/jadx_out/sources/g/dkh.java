package g;

import android.content.SharedPreferences;
import android.os.Handler;
import android.service.quicksettings.TileService;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class dkh {

    /* renamed from: a, reason: collision with root package name */
    public Object f14303a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f14304b;

    /* renamed from: c, reason: collision with root package name */
    public long f14305c;

    /* renamed from: d, reason: collision with root package name */
    public Object f14306d;

    /* renamed from: e, reason: collision with root package name */
    public Object f14307e;

    public /* synthetic */ dkh(bsz bszVar) {
        this.f14304b = bszVar;
    }

    public dkh(fnq fnqVar, flz flzVar) {
        bff.p(fnqVar, "runnableScheduler");
        long millis = TimeUnit.MINUTES.toMillis(90L);
        this.f14306d = fnqVar;
        this.f14307e = flzVar;
        this.f14305c = millis;
        this.f14303a = new Object();
        this.f14304b = new LinkedHashMap();
    }

    public /* synthetic */ dkh(gmr gmrVar, long j) {
        this.f14304b = gmrVar;
        ckd.bf("health_monitor");
        ckd.u(j > 0);
        this.f14306d = "health_monitor:start";
        this.f14307e = "health_monitor:count";
        this.f14303a = "health_monitor:value";
        this.f14305c = j;
    }

    public void f() {
        gmr gmrVar = (gmr) this.f14304b;
        gmrVar._e();
        ((cyg) gmrVar.z).f13743ab.getClass();
        long currentTimeMillis = System.currentTimeMillis();
        SharedPreferences.Editor edit = gmrVar.ar().edit();
        edit.remove((String) this.f14307e);
        edit.remove((String) this.f14303a);
        edit.putLong((String) this.f14306d, currentTimeMillis);
        edit.apply();
    }

    public void g(aci aciVar) {
        Runnable runnable;
        bff.p(aciVar, TileService.EXTRA_TOKEN);
        synchronized (this.f14303a) {
            runnable = (Runnable) ((LinkedHashMap) this.f14304b).remove(aciVar);
        }
        if (runnable != null) {
            ((Handler) ((fnq) this.f14306d).f17099f).removeCallbacks(runnable);
        }
    }

    public void h(aci aciVar) {
        bff.p(aciVar, TileService.EXTRA_TOKEN);
        dsf dsfVar = new dsf(this, 15, aciVar);
        synchronized (this.f14303a) {
        }
        fnq fnqVar = (fnq) this.f14306d;
        ((Handler) fnqVar.f17099f).postDelayed(dsfVar, this.f14305c);
    }

    public boolean i(long j, kk kkVar) {
        bsz bszVar = (bsz) this.f14304b;
        if (((ArrayList) this.f14303a) == null) {
            this.f14303a = new ArrayList();
        }
        if (((ArrayList) this.f14307e) == null) {
            this.f14307e = new ArrayList();
        }
        if (((ArrayList) this.f14303a).isEmpty() || ((((kk) ((ArrayList) this.f14303a).get(0)).k() / 1000) / 60) / 60 == ((kkVar.k() / 1000) / 60) / 60) {
            long aa = this.f14305c + kkVar.aa();
            bszVar.bm();
            if (aa < Math.max(0, ((Integer) gad.au.h(null)).intValue())) {
                this.f14305c = aa;
                ((ArrayList) this.f14303a).add(kkVar);
                ((ArrayList) this.f14307e).add(Long.valueOf(j));
                int size = ((ArrayList) this.f14303a).size();
                bszVar.bm();
                if (size < Math.max(1, ((Integer) gad.ba.h(null)).intValue())) {
                    return true;
                }
            }
        }
        return false;
    }
}

package g;

import android.app.Activity;
import android.os.Bundle;
import android.os.SystemClock;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import j$.util.concurrent.ConcurrentHashMap;

/* loaded from: classes3.dex */
public final class bcm extends os {

    /* renamed from: g, reason: collision with root package name */
    public Activity f11282g;
    public final ConcurrentHashMap h;
    public volatile ein j;
    public boolean k;
    public ein l;
    public volatile ein m;
    public volatile ein n;
    public volatile boolean o;
    public final Object p;
    public ein q;

    public bcm(cyg cygVar) {
        super(cygVar);
        this.p = new Object();
        this.h = new ConcurrentHashMap();
    }

    @Override // g.os
    public final boolean b() {
        return false;
    }

    public final void r(Activity activity, ein einVar, boolean z) {
        ein einVar2;
        ein einVar3 = this.m == null ? this.n : this.m;
        if (einVar.f15599e == null) {
            String v = activity != null ? v(activity.getClass()) : null;
            einVar2 = new ein(einVar.f15596b, einVar.f15600f, einVar.f15598d, einVar.f15597c, v);
        } else {
            einVar2 = einVar;
        }
        this.n = this.m;
        this.m = einVar2;
        ((cyg) this.z).f13743ab.getClass();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        fth fthVar = ((cyg) this.z).j;
        cyg.ak(fthVar);
        fthVar.p(new dlt(this, einVar2, einVar3, elapsedRealtime, z));
    }

    public final ein s(Activity activity) {
        ckd.k(activity);
        ein einVar = (ein) this.h.get(activity);
        if (einVar == null) {
            String v = v(activity.getClass());
            dkq dkqVar = ((cyg) this.z).m;
            cyg.ai(dkqVar);
            ein einVar2 = new ein(null, v, dkqVar.by());
            this.h.put(activity, einVar2);
            einVar = einVar2;
        }
        return this.j != null ? this.j : einVar;
    }

    public final void t(ein einVar, boolean z, long j) {
        cyg cygVar = (cyg) this.z;
        fqm am = cygVar.am();
        cygVar.f13743ab.getClass();
        am.l(SystemClock.elapsedRealtime());
        boolean z2 = einVar != null && einVar.f15595a;
        cjv cjvVar = cygVar.n;
        cyg.aj(cjvVar);
        if (!cjvVar.k.f(j, z2, z) || einVar == null) {
            return;
        }
        einVar.f15595a = false;
    }

    public final ein u(boolean z) {
        zza();
        _e();
        if (!z) {
            return this.q;
        }
        ein einVar = this.q;
        return einVar != null ? einVar : this.l;
    }

    public final String v(Class cls) {
        cyg cygVar = (cyg) this.z;
        String canonicalName = cls.getCanonicalName();
        if (canonicalName == null) {
            return "Activity";
        }
        String[] split = canonicalName.split("\\.");
        int length = split.length;
        String str = length > 0 ? split[length - 1] : "";
        int length2 = str.length();
        cygVar.getClass();
        return length2 > 100 ? str.substring(0, 100) : str;
    }

    public final void w(ein einVar, ein einVar2, long j, boolean z, Bundle bundle) {
        boolean z2 = einVar.f15596b;
        cyg cygVar = (cyg) this.z;
        _e();
        boolean z3 = false;
        boolean z4 = (einVar2 != null && einVar2.f15600f == einVar.f15600f && ffb.cg(einVar2.f15599e, einVar.f15599e) && ffb.cg(einVar2.f15597c, einVar.f15597c)) ? false : true;
        if (z && this.q != null) {
            z3 = true;
        }
        if (z4) {
            Bundle bundle2 = bundle != null ? new Bundle(bundle) : new Bundle();
            dkq.q(einVar, bundle2, true);
            if (einVar2 != null) {
                String str = einVar2.f15597c;
                if (str != null) {
                    bundle2.putString("_pn", str);
                }
                String str2 = einVar2.f15599e;
                if (str2 != null) {
                    bundle2.putString("_pc", str2);
                }
                bundle2.putLong("_pi", einVar2.f15600f);
            }
            if (z3) {
                cjv cjvVar = cygVar.n;
                cyg.aj(cjvVar);
                fcw fcwVar = cjvVar.k;
                long j2 = j - fcwVar.f16583e;
                fcwVar.f16583e = j;
                if (j2 > 0) {
                    dkq dkqVar = cygVar.m;
                    cyg.ai(dkqVar);
                    dkqVar.bs(bundle2, j2);
                }
            }
            if (!cygVar.f13747e.j()) {
                bundle2.putLong("_mst", 1L);
            }
            String str3 = true != z2 ? LiveConfigKey.AUTO : "app";
            cygVar.f13743ab.getClass();
            long currentTimeMillis = System.currentTimeMillis();
            if (z2) {
                long j3 = einVar.f15598d;
                if (j3 != 0) {
                    currentTimeMillis = j3;
                }
            }
            csp cspVar = cygVar.f13745c;
            cyg.aj(cspVar);
            cspVar.ba(currentTimeMillis, bundle2, str3, "_vs");
        }
        if (z3) {
            t(this.q, true, j);
        }
        this.q = einVar;
        if (z2) {
            this.l = einVar;
        }
        dbb ao = cygVar.ao();
        ao._e();
        ao.zza();
        ao.s(new fuy(12, ao, einVar, false));
    }

    public final void x(Activity activity, Bundle bundle) {
        Bundle bundle2;
        if (!((cyg) this.z).f13747e.j() || bundle == null || (bundle2 = bundle.getBundle("com.google.app_measurement.screen_service")) == null) {
            return;
        }
        this.h.put(activity, new ein(bundle2.getString(abn.EXTRA_UA_APP_NAME), bundle2.getString("referrer_name"), bundle2.getLong(TTDownloadField.TT_ID)));
    }
}

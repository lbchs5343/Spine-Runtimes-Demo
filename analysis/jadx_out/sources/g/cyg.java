package g;

import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes3.dex */
public final class cyg implements gan {

    /* renamed from: a, reason: collision with root package name */
    public static volatile cyg f13742a;
    public final String aa;

    /* renamed from: ab, reason: collision with root package name */
    public final czz f13743ab;
    public fqh ac;
    public volatile Boolean ad;
    public final fqm ae;
    public final ebl af;
    public final fbc ag;
    public final long ah;

    /* renamed from: b, reason: collision with root package name */
    public final gmr f13744b;

    /* renamed from: c, reason: collision with root package name */
    public final csp f13745c;

    /* renamed from: d, reason: collision with root package name */
    public efm f13746d;

    /* renamed from: e, reason: collision with root package name */
    public final dsd f13747e;

    /* renamed from: f, reason: collision with root package name */
    public Boolean f13748f;

    /* renamed from: g, reason: collision with root package name */
    public auk f13749g;
    public final bcm h;
    public volatile boolean i;
    public final fth j;
    public final Boolean k;
    public final String l;
    public final dkq m;
    public final cjv n;
    public dbb o;
    public final String q;
    public final String r;
    public int s;
    public final boolean t;
    public final bww u;
    public final Context v;
    public long w;
    public final Boolean y;
    public final bgm z;
    public boolean x = false;
    public final AtomicInteger p = new AtomicInteger(0);

    public cyg(acu acuVar) {
        Bundle bundle;
        Context context = acuVar.f10006d;
        fbc fbcVar = new fbc(17);
        this.ag = fbcVar;
        buj.l = fbcVar;
        this.v = context;
        this.aa = acuVar.f10009g;
        this.l = acuVar.i;
        this.r = acuVar.f10004b;
        this.t = acuVar.f10003a;
        this.ad = acuVar.f10005c;
        this.q = acuVar.h;
        this.i = true;
        apu apuVar = acuVar.j;
        if (apuVar != null && (bundle = apuVar.zzg) != null) {
            Object obj = bundle.get("measurementEnabled");
            if (obj instanceof Boolean) {
                this.y = (Boolean) obj;
            }
            Object obj2 = apuVar.zzg.get("measurementDeactivated");
            if (obj2 instanceof Boolean) {
                this.k = (Boolean) obj2;
            }
        }
        if (duh.f14823a == null) {
            Object obj3 = duh.f14825c;
            synchronized (obj3) {
                try {
                    if (duh.f14823a == null) {
                        synchronized (obj3) {
                            avo avoVar = duh.f14823a;
                            Context applicationContext = context.getApplicationContext();
                            if (applicationContext == null) {
                                applicationContext = context;
                            }
                            if (avoVar != null) {
                                if (avoVar.f10927a != applicationContext) {
                                }
                            }
                            fod.k();
                            bkb.c();
                            clx.j();
                            ato atoVar = new ato();
                            atoVar.f10813a = applicationContext;
                            duh.f14823a = new avo(applicationContext, baf.bh(atoVar));
                            duh.f14824b.incrementAndGet();
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                } finally {
                }
            }
        }
        this.f13743ab = czz.f13830a;
        Long l = acuVar.f10008f;
        this.ah = l != null ? l.longValue() : System.currentTimeMillis();
        dsd dsdVar = new dsd(this);
        dsdVar.f14698b = bfy.u;
        this.f13747e = dsdVar;
        gmr gmrVar = new gmr(this);
        gmrVar.ao();
        this.f13744b = gmrVar;
        bgm bgmVar = new bgm(this);
        bgmVar.ao();
        this.z = bgmVar;
        dkq dkqVar = new dkq(this);
        dkqVar.ao();
        this.m = dkqVar;
        this.af = new ebl(new dnb(this));
        this.ae = new fqm(this);
        bcm bcmVar = new bcm(this);
        bcmVar.c();
        this.h = bcmVar;
        csp cspVar = new csp(this);
        cspVar.c();
        this.f13745c = cspVar;
        cjv cjvVar = new cjv(this);
        cjvVar.c();
        this.n = cjvVar;
        bww bwwVar = new bww(this);
        bwwVar.ao();
        this.u = bwwVar;
        fth fthVar = new fth(this);
        fthVar.ao();
        this.j = fthVar;
        apu apuVar2 = acuVar.j;
        boolean z = apuVar2 == null || apuVar2.zzb == 0;
        if (context.getApplicationContext() instanceof Application) {
            aj(cspVar);
            if (((cyg) cspVar.z).v.getApplicationContext() instanceof Application) {
                Application application = (Application) ((cyg) cspVar.z).v.getApplicationContext();
                if (cspVar.o == null) {
                    cspVar.o = new eoa(2, cspVar);
                }
                if (z) {
                    application.unregisterActivityLifecycleCallbacks(cspVar.o);
                    application.registerActivityLifecycleCallbacks(cspVar.o);
                    bgm bgmVar2 = ((cyg) cspVar.z).z;
                    ak(bgmVar2);
                    bgmVar2.f11519c.h("Registered activity lifecycle callback");
                }
            }
        } else {
            ak(bgmVar);
            bgmVar.f11520g.h("Application context is not an Application");
        }
        fthVar.p(new fuy(3, this, acuVar, false));
    }

    public static final void ai(bgf bgfVar) {
        if (bgfVar == null) {
            throw new IllegalStateException("Component not created");
        }
    }

    public static final void aj(os osVar) {
        if (osVar == null) {
            throw new IllegalStateException("Component not created");
        }
        if (!osVar.f19772a) {
            throw new IllegalStateException("Component not initialized: ".concat(String.valueOf(osVar.getClass())));
        }
    }

    public static final void ak(bkw bkwVar) {
        if (bkwVar == null) {
            throw new IllegalStateException("Component not created");
        }
        if (!bkwVar.am) {
            throw new IllegalStateException("Component not initialized: ".concat(String.valueOf(bkwVar.getClass())));
        }
    }

    public static cyg al(Context context, apu apuVar, Long l) {
        Bundle bundle;
        if (apuVar != null && (apuVar.zze == null || apuVar.zzf == null)) {
            apuVar = new apu(apuVar.zza, apuVar.zzb, apuVar.zzc, apuVar.zzd, null, null, apuVar.zzg, null);
        }
        ckd.k(context);
        ckd.k(context.getApplicationContext());
        if (f13742a == null) {
            synchronized (cyg.class) {
                try {
                    if (f13742a == null) {
                        f13742a = new cyg(new acu(context, apuVar, l));
                    }
                } finally {
                }
            }
        } else if (apuVar != null && (bundle = apuVar.zzg) != null && bundle.containsKey("dataCollectionDefaultEnabled")) {
            ckd.k(f13742a);
            f13742a.ad = Boolean.valueOf(apuVar.zzg.getBoolean("dataCollectionDefaultEnabled"));
        }
        ckd.k(f13742a);
        return f13742a;
    }

    public final fqm am() {
        fqm fqmVar = this.ae;
        if (fqmVar != null) {
            return fqmVar;
        }
        throw new IllegalStateException("Component not created");
    }

    public final efm an() {
        aj(this.f13746d);
        return this.f13746d;
    }

    public final dbb ao() {
        aj(this.o);
        return this.o;
    }

    public final ebl ap() {
        return this.af;
    }

    public final void aq() {
        this.p.incrementAndGet();
    }

    public final auk ar() {
        ak(this.f13749g);
        return this.f13749g;
    }

    public final boolean as() {
        return av() == 0;
    }

    public final fqh at() {
        aj(this.ac);
        return this.ac;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0032, code lost:
    
        if (java.lang.Math.abs(android.os.SystemClock.elapsedRealtime() - r7.w) > 1000) goto L12;
     */
    /* JADX WARN: Removed duplicated region for block: B:29:0x007f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean au() {
        boolean z;
        if (!this.x) {
            throw new IllegalStateException("AppMeasurement is not initialized");
        }
        fth fthVar = this.j;
        ak(fthVar);
        fthVar._e();
        Boolean bool = this.f13748f;
        czz czzVar = this.f13743ab;
        if (bool != null && this.w != 0) {
            if (!bool.booleanValue()) {
                czzVar.getClass();
            }
            return this.f13748f.booleanValue();
        }
        czzVar.getClass();
        this.w = SystemClock.elapsedRealtime();
        dkq dkqVar = this.m;
        ai(dkqVar);
        boolean z2 = true;
        if (dkqVar.bk("android.permission.INTERNET") && dkqVar.bk("android.permission.ACCESS_NETWORK_STATE")) {
            Context context = this.v;
            if (chk.c(context).d() || this.f13747e.s() || (dkq.p(context) && dkq.o(context))) {
                z = true;
                this.f13748f = Boolean.valueOf(z);
                if (z) {
                    String v = at().v();
                    fqh at = at();
                    at.zza();
                    if (!dkqVar.bo(v, at.r)) {
                        fqh at2 = at();
                        at2.zza();
                        if (TextUtils.isEmpty(at2.r)) {
                            z2 = false;
                        }
                    }
                    this.f13748f = Boolean.valueOf(z2);
                }
                return this.f13748f.booleanValue();
            }
        }
        z = false;
        this.f13748f = Boolean.valueOf(z);
        if (z) {
        }
        return this.f13748f.booleanValue();
    }

    public final int av() {
        fth fthVar = this.j;
        ak(fthVar);
        fthVar._e();
        if (this.f13747e.m()) {
            return 1;
        }
        Boolean bool = this.k;
        if (bool != null && bool.booleanValue()) {
            return 2;
        }
        fth fthVar2 = this.j;
        ak(fthVar2);
        fthVar2._e();
        if (!this.i) {
            return 8;
        }
        gmr gmrVar = this.f13744b;
        ai(gmrVar);
        gmrVar._e();
        Boolean valueOf = gmrVar.ar().contains("measurement_enabled") ? Boolean.valueOf(gmrVar.ar().getBoolean("measurement_enabled", true)) : null;
        if (valueOf != null) {
            return valueOf.booleanValue() ? 0 : 3;
        }
        dsd dsdVar = this.f13747e;
        fbc fbcVar = ((cyg) dsdVar.z).ag;
        Boolean h = dsdVar.h("firebase_analytics_collection_enabled");
        if (h != null) {
            return h.booleanValue() ? 0 : 4;
        }
        Boolean bool2 = this.y;
        return bool2 != null ? bool2.booleanValue() ? 0 : 5 : (this.ad == null || this.ad.booleanValue()) ? 0 : 7;
    }

    @Override // g.gan
    public final Context zzau() {
        return this.v;
    }

    @Override // g.gan
    public final cvb zzav() {
        return this.f13743ab;
    }

    @Override // g.gan
    public final fbc zzaw() {
        return this.ag;
    }

    @Override // g.gan
    public final bgm zzay() {
        bgm bgmVar = this.z;
        ak(bgmVar);
        return bgmVar;
    }

    @Override // g.gan
    public final fth zzaz() {
        fth fthVar = this.j;
        ak(fthVar);
        return fthVar;
    }
}

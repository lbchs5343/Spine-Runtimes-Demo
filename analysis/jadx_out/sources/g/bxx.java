package g;

import android.content.Context;
import android.os.Build;
import android.os.SystemClock;
import java.util.Collections;
import java.util.Set;

/* loaded from: classes3.dex */
public abstract class bxx {

    /* renamed from: b, reason: collision with root package name */
    public final ecd f12416b;

    /* renamed from: c, reason: collision with root package name */
    public final ao f12417c;

    /* renamed from: d, reason: collision with root package name */
    public final akj f12418d;

    /* renamed from: e, reason: collision with root package name */
    public final ama f12419e;

    /* renamed from: f, reason: collision with root package name */
    public final dzu f12420f;

    /* renamed from: g, reason: collision with root package name */
    public final Context f12421g;
    public final String h;
    public final int i;

    public bxx(Context context, akj akjVar, ama amaVar, cqe cqeVar) {
        ckd.w(context, "Null context is not permitted.");
        ckd.w(akjVar, "Api must not be null.");
        ckd.w(cqeVar, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead.");
        Context applicationContext = context.getApplicationContext();
        ckd.w(applicationContext, "The provided context did not have an application context.");
        this.f12421g = applicationContext;
        String attributionTag = Build.VERSION.SDK_INT >= 30 ? context.getAttributionTag() : null;
        this.h = attributionTag;
        this.f12418d = akjVar;
        this.f12419e = amaVar;
        this.f12420f = new dzu(akjVar, amaVar, attributionTag);
        ecd s = ecd.s(applicationContext);
        this.f12416b = s;
        this.i = s.f15292e.getAndIncrement();
        this.f12417c = cqeVar.f13331b;
        dae daeVar = s.q;
        daeVar.sendMessage(daeVar.obtainMessage(7, this));
    }

    public final fpd j() {
        fpd fpdVar = new fpd(4);
        Set set = Collections.EMPTY_SET;
        if (((glm) fpdVar.f17190f) == null) {
            fpdVar.f17190f = new glm(0);
        }
        ((glm) fpdVar.f17190f).addAll(set);
        Context context = this.f12421g;
        fpdVar.f17188d = context.getClass().getName();
        fpdVar.f17187c = context.getPackageName();
        return fpdVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0076  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final chw k(int i, cpq cpqVar) {
        aic aicVar;
        eeo eeoVar = new eeo();
        ecd ecdVar = this.f12416b;
        dae daeVar = ecdVar.q;
        int i2 = cpqVar.f13286d;
        chw chwVar = eeoVar.f15402a;
        if (i2 != 0) {
            if (ecdVar.v()) {
                fzo fzoVar = cbn.d().f12599c;
                dzu dzuVar = this.f12420f;
                boolean z = true;
                if (fzoVar != null) {
                    if (fzoVar.getMethodInvocationTelemetryEnabled()) {
                        boolean methodTimingTelemetryEnabled = fzoVar.getMethodTimingTelemetryEnabled();
                        fbd fbdVar = (fbd) ecdVar.f15294g.get(dzuVar);
                        if (fbdVar != null) {
                            Object obj = fbdVar.l;
                            if (obj instanceof adw) {
                                adw adwVar = (adw) obj;
                                if (adwVar.hasConnectionInfo() && !adwVar.isConnecting()) {
                                    csf f2 = aic.f(fbdVar, adwVar, i2);
                                    if (f2 != null) {
                                        fbdVar.f16505e++;
                                        z = f2.getMethodTimingTelemetryEnabled();
                                    }
                                }
                            }
                        }
                        z = methodTimingTelemetryEnabled;
                    }
                }
                aicVar = new aic(ecdVar, i2, dzuVar, z ? System.currentTimeMillis() : 0L, z ? SystemClock.elapsedRealtime() : 0L);
                if (aicVar != null) {
                    daeVar.getClass();
                    dbi dbiVar = new dbi(daeVar, 2);
                    chwVar.getClass();
                    chwVar.i.f(new err(dbiVar, aicVar));
                    chwVar.n();
                }
            }
            aicVar = null;
            if (aicVar != null) {
            }
        }
        daeVar.sendMessage(daeVar.obtainMessage(4, new clf(new fdb(i, cpqVar, eeoVar, this.f12417c), ecdVar.n.get(), this)));
        return chwVar;
    }
}

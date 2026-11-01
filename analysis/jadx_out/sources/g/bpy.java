package g;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import j$.util.Objects;
import java.util.List;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes.dex */
public final class bpy extends tq {
    public volatile ScheduledExecutorService bh;
    public volatile int bi;
    public final Context bj;
    public volatile aco bk;
    public volatile exa bl;

    public bpy(cuf cufVar, Context context, eoy eoyVar, feb febVar) {
        super(cufVar, context, eoyVar, febVar);
        this.bi = 0;
        this.bj = context;
    }

    public bpy(cuf cufVar, Context context, feb febVar) {
        super(cufVar, context, febVar);
        this.bi = 0;
        this.bj = context;
    }

    @Override // g.tq
    public final void am(aoy aoyVar, emr emrVar) {
        bs(7, new gmv(2, emrVar), new eax(this, aoyVar, emrVar, 8, false));
    }

    @Override // g.tq
    public final void ap(eie eieVar) {
        synchronized (this) {
            if (bp()) {
                gbs.i("BillingClientTesting", "Billing Override Service connection is valid. No need to re-initialize.");
                bo(26);
            } else if (this.bi == 1) {
                int i = gbs.f17875a;
            } else if (this.bi == 3) {
                int i2 = gbs.f17875a;
                bq(hm.BILLING_CLIENT_CLOSED, 26, edc.s(-1, "Billing Override Service connection is disconnected."));
            } else {
                this.bi = 1;
                gbs.i("BillingClientTesting", "Starting Billing Override Service setup.");
                this.bk = new aco(7, this);
                Intent intent = new Intent("com.google.android.apps.play.billingtestcompanion.BillingOverrideService.BIND");
                intent.setPackage("com.google.android.apps.play.billingtestcompanion");
                Context context = this.bj;
                List<ResolveInfo> queryIntentServices = context.getPackageManager().queryIntentServices(intent, 0);
                hm hmVar = hm.REASON_UNSPECIFIED;
                if (queryIntentServices == null || queryIntentServices.isEmpty()) {
                    hmVar = hm.INTENT_SERVICE_NOT_FOUND;
                } else {
                    ServiceInfo serviceInfo = queryIntentServices.get(0).serviceInfo;
                    if (serviceInfo != null) {
                        String str = serviceInfo.packageName;
                        String str2 = serviceInfo.name;
                        if (!Objects.equals(str, "com.google.android.apps.play.billingtestcompanion") || str2 == null) {
                            hmVar = hm.BILLING_SERVICE_BLOCKED;
                        } else {
                            ComponentName componentName = new ComponentName(str, str2);
                            Intent intent2 = new Intent(intent);
                            intent2.setComponent(componentName);
                            if (context.bindService(intent2, this.bk, 1)) {
                                gbs.i("BillingClientTesting", "Billing Override Service was bonded successfully.");
                            } else {
                                hmVar = hm.BILLING_SERVICE_BLOCKED;
                            }
                        }
                    }
                }
                this.bi = 0;
                gbs.i("BillingClientTesting", "Billing Override Service unavailable on device.");
                bq(hmVar, 26, edc.s(2, "Billing Override Service unavailable on device."));
            }
        }
        az(eieVar);
    }

    @Override // g.tq
    public final void aq(czw czwVar, dzt dztVar) {
        bs(3, new gmv(3, dztVar), new eax(this, czwVar, dztVar, 9, false));
    }

    @Override // g.tq
    public final void bb() {
        synchronized (this) {
            bo(27);
            try {
                try {
                    if (this.bk != null && this.bl != null) {
                        gbs.i("BillingClientTesting", "Unbinding from Billing Override Service.");
                        this.bj.unbindService(this.bk);
                        this.bk = new aco(7, this);
                    }
                    this.bl = null;
                    if (this.bh != null) {
                        this.bh.shutdownNow();
                        this.bh = null;
                    }
                } catch (RuntimeException unused) {
                    int i = gbs.f17875a;
                }
                this.bi = 3;
            } catch (Throwable th) {
                this.bi = 3;
                throw th;
            }
        }
        super.bb();
    }

    @Override // g.tq
    public final ejd bf(elf elfVar, dxb dxbVar) {
        int i = 0;
        try {
            i = ((Integer) br(2).get(28500L, TimeUnit.MILLISECONDS)).intValue();
        } catch (TimeoutException unused) {
            bq(hm.BILLING_OVERRIDE_SERVICE_CALL_TIMEOUT, 28, edc.r);
            int i2 = gbs.f17875a;
        } catch (Exception e2) {
            if (e2 instanceof InterruptedException) {
                Thread.currentThread().interrupt();
            }
            bq(hm.BILLING_OVERRIDE_SERVICE_CALL_EXCEPTION, 28, edc.r);
            int i3 = gbs.f17875a;
        }
        if (i > 0) {
            ejd s = edc.s(i, "Billing override value was set by a license tester.");
            bq(hm.LICENSE_TESTER_BILLING_OVERRIDE, 2, s);
            bg(s);
            return s;
        }
        try {
            return super.bf(elfVar, dxbVar);
        } catch (Exception unused2) {
            hm hmVar = hm.BILLING_OVERRIDE_SERVICE_FALLBACK_ERROR;
            ejd ejdVar = edc.f15337a;
            bq(hmVar, 2, ejdVar);
            int i4 = gbs.f17875a;
            return ejdVar;
        }
    }

    public final void bo(int i) {
        int i2 = cgl.f12845a;
        eag d2 = cgl.d(i, apl.BROADCAST_ACTION_UNSPECIFIED);
        Objects.requireNonNull(d2, "ApiSuccess should not be null");
        ffr ffrVar = this.f20056b;
        ffrVar.getClass();
        try {
            ffrVar.ai(d2, (djs) ffrVar.f16721f);
        } catch (Throwable unused) {
            int i3 = gbs.f17875a;
        }
    }

    public final synchronized boolean bp() {
        if (this.bi == 2 && this.bl != null) {
            if (this.bk != null) {
                return true;
            }
        }
        return false;
    }

    public final void bq(hm hmVar, int i, ejd ejdVar) {
        int i2 = cgl.f12845a;
        hd c2 = cgl.c(hmVar, i, ejdVar, null, apl.BROADCAST_ACTION_UNSPECIFIED);
        Objects.requireNonNull(c2, "ApiFailure should not be null");
        ffr ffrVar = this.f20056b;
        ffrVar.getClass();
        try {
            ffrVar.z(c2, (djs) ffrVar.f16721f);
        } catch (Throwable unused) {
            int i3 = gbs.f17875a;
        }
    }

    public final gew br(int i) {
        int i2 = 0;
        if (!bp()) {
            int i3 = gbs.f17875a;
            bq(hm.BILLING_OVERRIDE_SERVICE_CONNECTION_NOT_READY, 28, edc.s(-1, "Billing Override Service connection is disconnected."));
            return new fjp(0);
        }
        gqc gqcVar = new gqc(this, i, i2);
        ewi ewiVar = new ewi();
        ewiVar.f16275d = new eou();
        apy apyVar = new apy(ewiVar);
        ewiVar.f16274c = apyVar;
        ewiVar.f16273b = gqc.class;
        try {
            gqcVar.aq(ewiVar);
            ewiVar.f16273b = "billingOverrideService.getBillingOverride";
            return apyVar;
        } catch (Exception e2) {
            fdv fdvVar = new fdv(e2);
            cux cuxVar = afp.f10146d;
            ggp ggpVar = apyVar.f10639b;
            if (cuxVar.f(ggpVar, null, fdvVar)) {
                afp.i(ggpVar);
            }
            return apyVar;
        }
    }

    public final void bs(int i, dts dtsVar, Runnable runnable) {
        ScheduledExecutorService scheduledExecutorService;
        gew br = br(i);
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        synchronized (this) {
            try {
                if (this.bh == null) {
                    this.bh = Executors.newSingleThreadScheduledExecutor();
                }
                scheduledExecutorService = this.bh;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (!br.isDone()) {
            alw alwVar = new alw();
            alwVar.i = br;
            aku akuVar = new aku(4);
            akuVar.f10417b = alwVar;
            alwVar.j = scheduledExecutorService.schedule(akuVar, 28500L, timeUnit);
            br.l(akuVar, fyh.zza);
            br = alwVar;
        }
        fkn fknVar = new fkn();
        fknVar.f16938b = i;
        fknVar.f16939c = dtsVar;
        fknVar.f16940d = runnable;
        fknVar.f16937a = this;
        br.l(new gfh(br, 0, fknVar), aw());
    }
}

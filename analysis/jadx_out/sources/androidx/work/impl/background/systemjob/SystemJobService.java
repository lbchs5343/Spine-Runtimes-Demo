package androidx.work.impl.background.systemjob;

import android.app.Application;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.os.Build;
import android.os.Looper;
import android.os.PersistableBundle;
import g.aci;
import g.cml;
import g.cyl;
import g.dsp;
import g.egu;
import g.eiv;
import g.eyo;
import g.flz;
import g.frk;
import g.fxb;
import g.gcn;
import g.gxm;
import g.tn;
import java.util.Arrays;
import java.util.HashMap;

/* loaded from: classes.dex */
public class SystemJobService extends JobService implements eiv {

    /* renamed from: a, reason: collision with root package name */
    public static final String f340a = cyl.g("SystemJobService");

    /* renamed from: c, reason: collision with root package name */
    public flz f342c;

    /* renamed from: d, reason: collision with root package name */
    public fxb f343d;

    /* renamed from: e, reason: collision with root package name */
    public final HashMap f344e = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public final frk f341b = new frk(1);

    public static void f(String str) {
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            throw new IllegalStateException(tn.ad("Cannot invoke ", str, " on a background thread"));
        }
    }

    public static gxm g(JobParameters jobParameters) {
        try {
            PersistableBundle extras = jobParameters.getExtras();
            if (extras == null || !extras.containsKey("EXTRA_WORK_SPEC_ID")) {
                return null;
            }
            return new gxm(extras.getString("EXTRA_WORK_SPEC_ID"), extras.getInt("EXTRA_WORK_SPEC_GENERATION"));
        } catch (NullPointerException unused) {
            return null;
        }
    }

    @Override // g.eiv
    public final void h(gxm gxmVar, boolean z) {
        f("onExecuted");
        cyl f2 = cyl.f();
        String str = gxmVar.f18956a;
        f2.getClass();
        JobParameters jobParameters = (JobParameters) this.f344e.remove(gxmVar);
        this.f341b.e(gxmVar);
        if (jobParameters != null) {
            jobFinished(jobParameters, z);
        }
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        try {
            fxb be = fxb.be(getApplicationContext());
            this.f343d = be;
            egu eguVar = be.ax;
            this.f342c = new flz(eguVar, be.bb);
            eguVar.p(this);
        } catch (IllegalStateException e2) {
            if (!Application.class.equals(getApplication().getClass())) {
                throw new IllegalStateException("WorkManager needs to be initialized via a ContentProvider#onCreate() or an Application#onCreate().", e2);
            }
            cyl.f().getClass();
        }
    }

    @Override // android.app.Service
    public final void onDestroy() {
        super.onDestroy();
        fxb fxbVar = this.f343d;
        if (fxbVar != null) {
            fxbVar.ax.v(this);
        }
    }

    @Override // android.app.job.JobService
    public final boolean onStartJob(JobParameters jobParameters) {
        dsp dspVar;
        f("onStartJob");
        if (this.f343d == null) {
            cyl.f().getClass();
            jobFinished(jobParameters, true);
            return false;
        }
        gxm g2 = g(jobParameters);
        if (g2 == null) {
            cyl.f().i(f340a, "WorkSpec id not found!");
            return false;
        }
        HashMap hashMap = this.f344e;
        if (hashMap.containsKey(g2)) {
            cyl f2 = cyl.f();
            g2.toString();
            f2.getClass();
            return false;
        }
        cyl f3 = cyl.f();
        g2.toString();
        f3.getClass();
        hashMap.put(g2, jobParameters);
        int i = Build.VERSION.SDK_INT;
        if (i >= 24) {
            dspVar = new dsp();
            if (cml.j(jobParameters) != null) {
                dspVar.f14730b = Arrays.asList(cml.j(jobParameters));
            }
            if (cml.e(jobParameters) != null) {
                dspVar.f14729a = Arrays.asList(cml.e(jobParameters));
            }
            if (i >= 28) {
                dspVar.f14731c = eyo.e(jobParameters);
            }
        } else {
            dspVar = null;
        }
        this.f342c.c(this.f341b.b(g2), dspVar);
        return true;
    }

    @Override // android.app.job.JobService
    public final boolean onStopJob(JobParameters jobParameters) {
        boolean contains;
        f("onStopJob");
        if (this.f343d == null) {
            cyl.f().getClass();
            return true;
        }
        gxm g2 = g(jobParameters);
        if (g2 == null) {
            cyl.f().i(f340a, "WorkSpec id not found!");
            return false;
        }
        cyl f2 = cyl.f();
        g2.toString();
        f2.getClass();
        this.f344e.remove(g2);
        aci e2 = this.f341b.e(g2);
        if (e2 != null) {
            int a2 = Build.VERSION.SDK_INT >= 31 ? gcn.a(jobParameters) : -512;
            flz flzVar = this.f342c;
            flzVar.getClass();
            flzVar.b(e2, a2);
        }
        egu eguVar = this.f343d.ax;
        String str = g2.f18956a;
        synchronized (eguVar.f15515c) {
            contains = eguVar.h.contains(str);
        }
        return !contains;
    }
}

package g;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.net.NetworkRequest;
import android.os.Build;
import android.os.PersistableBundle;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkDatabase_Impl;
import androidx.work.impl.background.systemjob.SystemJobService;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class eyp implements giw {

    /* renamed from: a, reason: collision with root package name */
    public static final String f16378a = cyl.g("SystemJobScheduler");

    /* renamed from: b, reason: collision with root package name */
    public final dbt f16379b;

    /* renamed from: c, reason: collision with root package name */
    public final WorkDatabase f16380c;

    /* renamed from: d, reason: collision with root package name */
    public final flk f16381d;

    /* renamed from: e, reason: collision with root package name */
    public final Context f16382e;

    /* renamed from: f, reason: collision with root package name */
    public final JobScheduler f16383f;

    public eyp(Context context, WorkDatabase workDatabase, flk flkVar) {
        JobScheduler c2 = dlm.c(context);
        dbt dbtVar = new dbt(context, flkVar.f16981c, flkVar.f16982d);
        this.f16382e = context;
        this.f16383f = c2;
        this.f16379b = dbtVar;
        this.f16380c = workDatabase;
        this.f16381d = flkVar;
    }

    public static ArrayList g(Context context, JobScheduler jobScheduler, String str) {
        ArrayList h = h(context, jobScheduler);
        if (h == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(2);
        Iterator it = h.iterator();
        while (it.hasNext()) {
            JobInfo jobInfo = (JobInfo) it.next();
            gxm j = j(jobInfo);
            if (j != null && str.equals(j.f18956a)) {
                arrayList.add(Integer.valueOf(jobInfo.getId()));
            }
        }
        return arrayList;
    }

    public static ArrayList h(Context context, JobScheduler jobScheduler) {
        List<JobInfo> b2 = dlm.b(jobScheduler);
        if (b2 == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(b2.size());
        ComponentName componentName = new ComponentName(context, (Class<?>) SystemJobService.class);
        for (JobInfo jobInfo : b2) {
            if (componentName.equals(jobInfo.getService())) {
                arrayList.add(jobInfo);
            }
        }
        return arrayList;
    }

    public static void i(JobScheduler jobScheduler, int i) {
        try {
            jobScheduler.cancel(i);
        } catch (Throwable th) {
            cyl.f().j(f16378a, String.format(Locale.getDefault(), "Exception while trying to cancel job (%d)", Integer.valueOf(i)), th);
        }
    }

    public static gxm j(JobInfo jobInfo) {
        PersistableBundle extras = jobInfo.getExtras();
        if (extras == null) {
            return null;
        }
        try {
            if (!extras.containsKey("EXTRA_WORK_SPEC_ID")) {
                return null;
            }
            return new gxm(extras.getString("EXTRA_WORK_SPEC_ID"), extras.getInt("EXTRA_WORK_SPEC_GENERATION", 0));
        } catch (NullPointerException unused) {
            return null;
        }
    }

    public final void k(fkj fkjVar, int i) {
        int i2;
        String str;
        String str2 = f16378a;
        dbt dbtVar = this.f16379b;
        dbtVar.getClass();
        bho bhoVar = fkjVar.r;
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putString("EXTRA_WORK_SPEC_ID", fkjVar.h);
        persistableBundle.putInt("EXTRA_WORK_SPEC_GENERATION", fkjVar.t);
        persistableBundle.putBoolean("EXTRA_IS_PERIODIC", fkjVar.z());
        JobInfo.Builder requiresCharging = new JobInfo.Builder(i, dbtVar.f13931a).setRequiresCharging(bhoVar.i);
        boolean z = bhoVar.f11593c;
        JobInfo.Builder extras = requiresCharging.setRequiresDeviceIdle(z).setExtras(persistableBundle);
        NetworkRequest k = bhoVar.k();
        int i3 = Build.VERSION.SDK_INT;
        if (i3 < 28 || k == null) {
            dnx dnxVar = bhoVar.f11595e;
            if (i3 < 30 || dnxVar != dnx.TEMPORARILY_UNMETERED) {
                int i4 = cog.f13219a[dnxVar.ordinal()];
                if (i4 != 1) {
                    if (i4 != 2) {
                        if (i4 == 3) {
                            i2 = 2;
                        } else if (i4 != 4) {
                            if (i4 == 5 && i3 >= 26) {
                                i2 = 4;
                            }
                            cyl f2 = cyl.f();
                            dnxVar.toString();
                            f2.getClass();
                        } else {
                            if (i3 >= 24) {
                                i2 = 3;
                            }
                            cyl f22 = cyl.f();
                            dnxVar.toString();
                            f22.getClass();
                        }
                    }
                    i2 = 1;
                } else {
                    i2 = 0;
                }
                extras.setRequiredNetworkType(i2);
            } else {
                extras.setRequiredNetwork(new NetworkRequest.Builder().addCapability(25).build());
            }
        } else {
            bff.p(extras, "builder");
            extras.setRequiredNetwork(k);
        }
        if (!z) {
            extras.setBackoffCriteria(fkjVar.o, fkjVar.f16931f == ay.LINEAR ? 0 : 1);
        }
        long aa = fkjVar.aa();
        dbtVar.f13932b.getClass();
        long max = Math.max(aa - System.currentTimeMillis(), 0L);
        if (i3 <= 28) {
            extras.setMinimumLatency(max);
        } else if (max > 0) {
            extras.setMinimumLatency(max);
        } else if (!fkjVar.s && dbtVar.f13933c) {
            extras.setImportantWhileForeground(true);
        }
        if (i3 >= 24 && bhoVar.l()) {
            for (cdc cdcVar : bhoVar.f11597g) {
                boolean z2 = cdcVar.f12679b;
                ayr.c();
                extras.addTriggerContentUri(ayr.aa(cdcVar.f12678a, z2 ? 1 : 0));
            }
            extras.setTriggerContentUpdateDelay(bhoVar.j);
            extras.setTriggerContentMaxDelay(bhoVar.f11592b);
        }
        extras.setPersisted(false);
        int i5 = Build.VERSION.SDK_INT;
        if (i5 >= 26) {
            extras.setRequiresBatteryNotLow(bhoVar.f11594d);
            extras.setRequiresStorageNotLow(bhoVar.f11596f);
        }
        boolean z3 = fkjVar.f16927b > 0;
        boolean z4 = max > 0;
        if (i5 >= 31 && fkjVar.s && !z3 && !z4) {
            extras.setExpedited(true);
        }
        if (i5 >= 35 && (str = fkjVar.v) != null) {
            extras.setTraceTag(str);
        }
        JobInfo build = extras.build();
        cyl.f().getClass();
        try {
            try {
                if (this.f16383f.schedule(build) == 0) {
                    cyl.f().getClass();
                    if (fkjVar.s) {
                        if (fkjVar.x == ahc.RUN_AS_NON_EXPEDITED_WORK_REQUEST) {
                            try {
                                fkjVar.s = false;
                                cyl.f().getClass();
                                k(fkjVar, i);
                            } catch (IllegalStateException e2) {
                                e = e2;
                                String str3 = dlm.f14373a;
                                Context context = this.f16382e;
                                bff.p(context, "context");
                                WorkDatabase workDatabase = this.f16380c;
                                bff.p(workDatabase, "workDatabase");
                                flk flkVar = this.f16381d;
                                bff.p(flkVar, "configuration");
                                int i6 = Build.VERSION.SDK_INT;
                                int i7 = i6 >= 31 ? 150 : 100;
                                int size = workDatabase.a().x().size();
                                String str4 = "<faulty JobScheduler failed to getPendingJobs>";
                                if (i6 >= 34) {
                                    JobScheduler c2 = dlm.c(context);
                                    List b2 = dlm.b(c2);
                                    if (b2 != null) {
                                        ArrayList h = h(context, c2);
                                        int size2 = h != null ? b2.size() - h.size() : 0;
                                        String str5 = size2 == 0 ? null : size2 + " of which are not owned by WorkManager";
                                        Object systemService = context.getSystemService("jobscheduler");
                                        bff.ag(systemService, "null cannot be cast to non-null type android.app.job.JobScheduler");
                                        ArrayList h2 = h(context, (JobScheduler) systemService);
                                        int size3 = h2 != null ? h2.size() : 0;
                                        str4 = gsv.bh(fuv.b(new String[]{b2.size() + " jobs in \"androidx.work.systemjobscheduler\" namespace", str5, size3 == 0 ? null : size3 + " from WorkManager in the default namespace"}), ",\n", null, 62);
                                    }
                                } else {
                                    ArrayList h3 = h(context, dlm.c(context));
                                    if (h3 != null) {
                                        str4 = h3.size() + " jobs from WorkManager";
                                    }
                                }
                                StringBuilder sb = new StringBuilder("JobScheduler ");
                                sb.append(i7);
                                sb.append(" job limit exceeded.\nIn JobScheduler there are ");
                                sb.append(str4);
                                sb.append(".\nThere are ");
                                sb.append(size);
                                sb.append(" jobs tracked by WorkManager's database;\nthe Configuration limit is ");
                                String s = awf.s(sb, flkVar.f16980b, '.');
                                cyl.f().i(str2, s);
                                throw new IllegalStateException(s, e);
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                cyl.f().j(str2, "Unable to schedule " + fkjVar, th);
            }
        } catch (IllegalStateException e3) {
            e = e3;
        }
    }

    @Override // g.giw
    public final void q(String str) {
        Context context = this.f16382e;
        JobScheduler jobScheduler = this.f16383f;
        ArrayList g2 = g(context, jobScheduler, str);
        if (g2 == null || g2.isEmpty()) {
            return;
        }
        Iterator it = g2.iterator();
        while (it.hasNext()) {
            i(jobScheduler, ((Integer) it.next()).intValue());
        }
        duw g3 = this.f16380c.g();
        WorkDatabase_Impl workDatabase_Impl = (WorkDatabase_Impl) g3.h;
        workDatabase_Impl.al();
        bnh bnhVar = (bnh) g3.f14866f;
        cap i = bnhVar.i();
        i.e(1, str);
        try {
            workDatabase_Impl.an();
            try {
                i.h();
                workDatabase_Impl.ah();
            } finally {
                workDatabase_Impl.am();
            }
        } finally {
            bnhVar.h(i);
        }
    }

    @Override // g.giw
    public final void r(fkj... fkjVarArr) {
        int intValue;
        ArrayList g2;
        int intValue2;
        WorkDatabase workDatabase = this.f16380c;
        final dcq dcqVar = new dcq(workDatabase);
        WorkDatabase workDatabase2 = (WorkDatabase) dcqVar.f13976f;
        for (fkj fkjVar : fkjVarArr) {
            workDatabase.an();
            try {
                fkj p = workDatabase.a().p(fkjVar.h);
                if (p == null) {
                    cyl.f().getClass();
                    workDatabase.ah();
                } else if (p.q != gys.ENQUEUED) {
                    cyl.f().getClass();
                    workDatabase.ah();
                } else {
                    gxm j = awt.j(fkjVar);
                    cgv o = workDatabase.g().o(j);
                    flk flkVar = this.f16381d;
                    if (o != null) {
                        intValue = o.f12857c;
                    } else {
                        flkVar.getClass();
                        final int i = flkVar.i;
                        Object ai = workDatabase2.ai(new Callable() { // from class: g.gmt
                            @Override // java.util.concurrent.Callable
                            public final Object call() {
                                WorkDatabase workDatabase3 = (WorkDatabase) dcq.this.f13976f;
                                Long ag = workDatabase3.e().ag("next_job_scheduler_id");
                                int i2 = 0;
                                int longValue = ag != null ? (int) ag.longValue() : 0;
                                workDatabase3.e().p(new cmk("next_job_scheduler_id", Long.valueOf(longValue == Integer.MAX_VALUE ? 0 : longValue + 1)));
                                if (longValue < 0 || longValue > i) {
                                    workDatabase3.e().p(new cmk("next_job_scheduler_id", Long.valueOf(1)));
                                } else {
                                    i2 = longValue;
                                }
                                return Integer.valueOf(i2);
                            }
                        });
                        bff.e(ai, "workDatabase.runInTransa…d\n            }\n        )");
                        intValue = ((Number) ai).intValue();
                    }
                    if (o == null) {
                        workDatabase.g().u(new cgv(j.f18956a, j.f18957b, intValue));
                    }
                    k(fkjVar, intValue);
                    if (Build.VERSION.SDK_INT == 23 && (g2 = g(this.f16382e, this.f16383f, fkjVar.h)) != null) {
                        int indexOf = g2.indexOf(Integer.valueOf(intValue));
                        if (indexOf >= 0) {
                            g2.remove(indexOf);
                        }
                        if (g2.isEmpty()) {
                            flkVar.getClass();
                            final int i2 = flkVar.i;
                            Object ai2 = workDatabase2.ai(new Callable() { // from class: g.gmt
                                @Override // java.util.concurrent.Callable
                                public final Object call() {
                                    WorkDatabase workDatabase3 = (WorkDatabase) dcq.this.f13976f;
                                    Long ag = workDatabase3.e().ag("next_job_scheduler_id");
                                    int i22 = 0;
                                    int longValue = ag != null ? (int) ag.longValue() : 0;
                                    workDatabase3.e().p(new cmk("next_job_scheduler_id", Long.valueOf(longValue == Integer.MAX_VALUE ? 0 : longValue + 1)));
                                    if (longValue < 0 || longValue > i2) {
                                        workDatabase3.e().p(new cmk("next_job_scheduler_id", Long.valueOf(1)));
                                    } else {
                                        i22 = longValue;
                                    }
                                    return Integer.valueOf(i22);
                                }
                            });
                            bff.e(ai2, "workDatabase.runInTransa…d\n            }\n        )");
                            intValue2 = ((Number) ai2).intValue();
                        } else {
                            intValue2 = ((Integer) g2.get(0)).intValue();
                        }
                        k(fkjVar, intValue2);
                    }
                    workDatabase.ah();
                }
            } finally {
                workDatabase.am();
            }
        }
    }

    @Override // g.giw
    public final boolean t() {
        return true;
    }
}

package g;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.Context;
import android.os.Build;
import java.util.List;

/* loaded from: classes.dex */
public abstract class dlm {

    /* renamed from: a, reason: collision with root package name */
    public static final String f14373a;

    static {
        String g2 = cyl.g("SystemJobScheduler");
        bff.e(g2, "tagWithPrefix(\"SystemJobScheduler\")");
        f14373a = g2;
    }

    public static final List b(JobScheduler jobScheduler) {
        bff.p(jobScheduler, "<this>");
        try {
            List<JobInfo> allPendingJobs = jobScheduler.getAllPendingJobs();
            bff.e(allPendingJobs, "jobScheduler.allPendingJobs");
            return allPendingJobs;
        } catch (Throwable th) {
            cyl.f().j(f14373a, "getAllPendingJobs() is not reliable on this device.", th);
            return null;
        }
    }

    public static final JobScheduler c(Context context) {
        JobScheduler forNamespace;
        bff.p(context, "<this>");
        Object systemService = context.getSystemService("jobscheduler");
        bff.ag(systemService, "null cannot be cast to non-null type android.app.job.JobScheduler");
        JobScheduler jobScheduler = (JobScheduler) systemService;
        if (Build.VERSION.SDK_INT < 34) {
            return jobScheduler;
        }
        forNamespace = jobScheduler.forNamespace("androidx.work.systemjobscheduler");
        bff.e(forNamespace, "jobScheduler.forNamespace(WORKMANAGER_NAMESPACE)");
        return forNamespace;
    }
}

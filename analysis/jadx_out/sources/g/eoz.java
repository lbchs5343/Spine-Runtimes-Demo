package g;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.os.Build;
import android.os.UserHandle;
import android.util.Log;
import java.lang.reflect.Method;

/* loaded from: classes3.dex */
public abstract class eoz {

    /* renamed from: a, reason: collision with root package name */
    public static final Method f15924a;

    /* renamed from: b, reason: collision with root package name */
    public static final Method f15925b;

    /* JADX WARN: Removed duplicated region for block: B:11:0x003b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    static {
        Method method;
        Method method2 = null;
        if (Build.VERSION.SDK_INT >= 24) {
            try {
                method = JobScheduler.class.getDeclaredMethod("scheduleAsPackage", JobInfo.class, String.class, Integer.TYPE, String.class);
            } catch (NoSuchMethodException unused) {
                if (Log.isLoggable("JobSchedulerCompat", 6)) {
                    Log.e("JobSchedulerCompat", "No scheduleAsPackage method available, falling back to schedule");
                }
            }
            f15924a = method;
            if (Build.VERSION.SDK_INT >= 24) {
                try {
                    method2 = UserHandle.class.getDeclaredMethod("myUserId", null);
                } catch (NoSuchMethodException unused2) {
                    if (Log.isLoggable("JobSchedulerCompat", 6)) {
                        Log.e("JobSchedulerCompat", "No myUserId method available");
                    }
                }
            }
            f15925b = method2;
        }
        method = null;
        f15924a = method;
        if (Build.VERSION.SDK_INT >= 24) {
        }
        f15925b = method2;
    }
}

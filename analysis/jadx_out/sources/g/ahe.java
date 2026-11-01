package g;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.database.Cursor;
import android.os.PersistableBundle;
import android.util.Base64;
import android.util.Log;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.JobInfoSchedulerService;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.Set;
import java.util.zip.Adler32;

/* loaded from: classes3.dex */
public final class ahe {

    /* renamed from: a, reason: collision with root package name */
    public final Context f10211a;

    /* renamed from: b, reason: collision with root package name */
    public final ahy f10212b;

    /* renamed from: c, reason: collision with root package name */
    public final hau f10213c;

    public ahe(Context context, ahy ahyVar, hau hauVar) {
        this.f10211a = context;
        this.f10212b = ahyVar;
        this.f10213c = hauVar;
    }

    public final void d(ku kuVar, int i, boolean z) {
        char c2;
        Context context = this.f10211a;
        ComponentName componentName = new ComponentName(context, (Class<?>) JobInfoSchedulerService.class);
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        Adler32 adler32 = new Adler32();
        adler32.update(context.getPackageName().getBytes(Charset.forName("UTF-8")));
        String str = kuVar.f19566a;
        String str2 = kuVar.f19566a;
        adler32.update(str.getBytes(Charset.forName("UTF-8")));
        ByteBuffer allocate = ByteBuffer.allocate(4);
        cq cqVar = kuVar.f19568c;
        adler32.update(allocate.putInt(eow.c(cqVar)).array());
        byte[] bArr = kuVar.f19567b;
        if (bArr != null) {
            adler32.update(bArr);
        }
        int value = (int) adler32.getValue();
        if (!z) {
            Iterator<JobInfo> it = jobScheduler.getAllPendingJobs().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                JobInfo next = it.next();
                int i2 = next.getExtras().getInt("attemptNumber");
                if (next.getId() == value) {
                    if (i2 >= i) {
                        baf.ax("JobInfoScheduler", "Upload for context %s is already scheduled. Returning...", kuVar);
                        return;
                    }
                }
            }
        }
        Cursor rawQuery = ((cga) this.f10212b).m().rawQuery("SELECT next_request_ms FROM transport_contexts WHERE backend_name = ? and priority = ?", new String[]{str2, String.valueOf(eow.c(cqVar))});
        try {
            Long valueOf = rawQuery.moveToNext() ? Long.valueOf(rawQuery.getLong(0)) : 0L;
            rawQuery.close();
            long longValue = valueOf.longValue();
            JobInfo.Builder builder = new JobInfo.Builder(value, componentName);
            hau hauVar = this.f10213c;
            builder.setMinimumLatency(hauVar.c(cqVar, longValue, i));
            Set set = ((emw) hauVar.f19151b.get(cqVar)).f15824c;
            if (set.contains(ftx.NETWORK_UNMETERED)) {
                builder.setRequiredNetworkType(2);
            } else {
                builder.setRequiredNetworkType(1);
            }
            if (set.contains(ftx.DEVICE_CHARGING)) {
                builder.setRequiresCharging(true);
            }
            if (set.contains(ftx.DEVICE_IDLE)) {
                builder.setRequiresDeviceIdle(true);
            }
            PersistableBundle persistableBundle = new PersistableBundle();
            persistableBundle.putInt("attemptNumber", i);
            persistableBundle.putString("backendName", str2);
            persistableBundle.putInt("priority", eow.c(cqVar));
            if (bArr != null) {
                c2 = 0;
                persistableBundle.putString("extras", Base64.encodeToString(bArr, 0));
            } else {
                c2 = 0;
            }
            builder.setExtras(persistableBundle);
            Integer valueOf2 = Integer.valueOf(value);
            Long valueOf3 = Long.valueOf(hauVar.c(cqVar, longValue, i));
            Integer valueOf4 = Integer.valueOf(i);
            Object[] objArr = new Object[5];
            objArr[c2] = kuVar;
            objArr[1] = valueOf2;
            objArr[2] = valueOf3;
            objArr[3] = valueOf;
            objArr[4] = valueOf4;
            if (Log.isLoggable(baf.as("JobInfoScheduler"), 3)) {
                String.format("Scheduling upload for context %s with jobId=%d in %dms(Backend next call timestamp %d). Attempt %d", objArr);
            }
            jobScheduler.schedule(builder.build());
        } catch (Throwable th) {
            rawQuery.close();
            throw th;
        }
    }
}

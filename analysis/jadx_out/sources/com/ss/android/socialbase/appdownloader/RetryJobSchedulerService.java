package com.ss.android.socialbase.appdownloader;

import android.annotation.TargetApi;
import android.app.job.JobInfo;
import android.app.job.JobParameters;
import android.app.job.JobScheduler;
import android.app.job.JobService;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import com.ss.android.socialbase.downloader.downloader.Downloader;
import com.ss.android.socialbase.downloader.downloader.cd;
import com.ss.android.socialbase.downloader.model.DownloadInfo;

@TargetApi(21)
/* loaded from: classes.dex */
public class RetryJobSchedulerService extends JobService {
    /* JADX WARN: Removed duplicated region for block: B:23:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0083 A[Catch: all -> 0x00b9, TryCatch #0 {all -> 0x00b9, blocks: (B:12:0x002b, B:20:0x004a, B:21:0x0052, B:24:0x0072, B:26:0x0083, B:27:0x0086, B:29:0x0090, B:31:0x0096, B:33:0x00a4, B:35:0x00a9, B:44:0x0040, B:15:0x0037), top: B:11:0x002b, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00a9 A[Catch: all -> 0x00b9, TRY_LEAVE, TryCatch #0 {all -> 0x00b9, blocks: (B:12:0x002b, B:20:0x004a, B:21:0x0052, B:24:0x0072, B:26:0x0083, B:27:0x0086, B:29:0x0090, B:31:0x0096, B:33:0x00a4, B:35:0x00a9, B:44:0x0040, B:15:0x0037), top: B:11:0x002b, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0071  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void dq(DownloadInfo downloadInfo, long j, boolean z, int i) {
        Context ob;
        long j2;
        int schedule;
        cd reserveWifiStatusListener;
        cd reserveWifiStatusListener2;
        if (downloadInfo == null || j <= 0 || (ob = com.ss.android.socialbase.downloader.downloader.ox.ob()) == null) {
            return;
        }
        int i2 = 2;
        if (downloadInfo.isPauseReserveOnWifi() && (reserveWifiStatusListener2 = Downloader.getInstance(com.ss.android.socialbase.downloader.downloader.ox.ob()).getReserveWifiStatusListener()) != null) {
            reserveWifiStatusListener2.dq(downloadInfo, 2, 3);
        }
        try {
            JobScheduler jobScheduler = (JobScheduler) ob.getSystemService("jobscheduler");
            if (jobScheduler == null) {
                return;
            }
            try {
                jobScheduler.cancel(downloadInfo.getId());
            } catch (Throwable th) {
                th.printStackTrace();
            }
            if (i != 0 && (!z || i == 2)) {
                j2 = 60000 + j;
                JobInfo.Builder minimumLatency = new JobInfo.Builder(downloadInfo.getId(), new ComponentName(ob.getPackageName(), RetryJobSchedulerService.class.getName())).setMinimumLatency(j);
                if (z) {
                    i2 = 1;
                }
                JobInfo.Builder requiresDeviceIdle = minimumLatency.setRequiredNetworkType(i2).setRequiresCharging(false).setRequiresDeviceIdle(false);
                if (j2 > 0) {
                    requiresDeviceIdle.setOverrideDeadline(j2);
                }
                schedule = jobScheduler.schedule(requiresDeviceIdle.build());
                if (schedule > 0 && downloadInfo.isPauseReserveOnWifi() && (reserveWifiStatusListener = Downloader.getInstance(com.ss.android.socialbase.downloader.downloader.ox.ob()).getReserveWifiStatusListener()) != null) {
                    reserveWifiStatusListener.dq(downloadInfo, 3, 3);
                }
                if (schedule > 0) {
                    com.ss.android.socialbase.downloader.ox.dq.p("RetrySchedulerService", "schedule err errCode = ".concat(String.valueOf(schedule)));
                    return;
                }
                return;
            }
            j = 1000;
            j2 = 0;
            JobInfo.Builder minimumLatency2 = new JobInfo.Builder(downloadInfo.getId(), new ComponentName(ob.getPackageName(), RetryJobSchedulerService.class.getName())).setMinimumLatency(j);
            if (z) {
            }
            JobInfo.Builder requiresDeviceIdle2 = minimumLatency2.setRequiredNetworkType(i2).setRequiresCharging(false).setRequiresDeviceIdle(false);
            if (j2 > 0) {
            }
            schedule = jobScheduler.schedule(requiresDeviceIdle2.build());
            if (schedule > 0) {
                reserveWifiStatusListener.dq(downloadInfo, 3, 3);
            }
            if (schedule > 0) {
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        com.ss.android.socialbase.downloader.downloader.ox.dq(this);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        int onStartCommand = super.onStartCommand(intent, i, i2);
        if (com.ss.android.socialbase.downloader.downloader.ox.o()) {
            return 2;
        }
        return onStartCommand;
    }

    @Override // android.app.job.JobService
    public boolean onStartJob(JobParameters jobParameters) {
        if (jobParameters == null) {
            return false;
        }
        int jobId = jobParameters.getJobId();
        com.ss.android.socialbase.downloader.ox.dq.ox("RetrySchedulerService", "onStartJob, id = ".concat(String.valueOf(jobId)));
        com.ss.android.socialbase.downloader.impls.cd.dq().dq(jobId);
        return false;
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters jobParameters) {
        return false;
    }
}

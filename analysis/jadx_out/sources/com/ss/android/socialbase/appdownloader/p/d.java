package com.ss.android.socialbase.appdownloader.p;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.ss.android.socialbase.appdownloader.ox.mn;
import com.ss.android.socialbase.appdownloader.p;
import com.ss.android.socialbase.downloader.downloader.Downloader;
import com.ss.android.socialbase.downloader.downloader.cd;
import com.ss.android.socialbase.downloader.downloader.ig;
import com.ss.android.socialbase.downloader.downloader.ox;
import com.ss.android.socialbase.downloader.kk.iw;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class d implements ig {

    /* renamed from: d, reason: collision with root package name */
    private BroadcastReceiver f9297d;
    private List<Integer> dq;

    /* JADX INFO: Access modifiers changed from: private */
    public void d(List<DownloadInfo> list, int i) {
        if (list == null || list.isEmpty()) {
            return;
        }
        p.o();
        Context ob = ox.ob();
        if (ob == null) {
            return;
        }
        boolean d2 = iw.d(ob);
        Iterator<DownloadInfo> it = list.iterator();
        while (it.hasNext()) {
            dq(ob, it.next(), d2, i);
        }
        List<Integer> list2 = this.dq;
        if (list2 == null || list2.isEmpty() || this.f9297d != null) {
            return;
        }
        this.f9297d = new BroadcastReceiver() { // from class: com.ss.android.socialbase.appdownloader.p.d.2
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                final Context applicationContext = context.getApplicationContext();
                if (iw.d(applicationContext)) {
                    com.ss.android.socialbase.downloader.ox.dq.d("LaunchResume", "onReceive : wifi connected !!!");
                    ox.ig().execute(new Runnable() { // from class: com.ss.android.socialbase.appdownloader.p.d.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                if (d.this.dq != null && !d.this.dq.isEmpty()) {
                                    int size = d.this.dq.size();
                                    Integer[] numArr = new Integer[size];
                                    d.this.dq.toArray(numArr);
                                    d.this.dq.clear();
                                    for (int i2 = 0; i2 < size; i2++) {
                                        DownloadInfo downloadInfo = Downloader.getInstance(applicationContext).getDownloadInfo(numArr[i2].intValue());
                                        if (downloadInfo != null) {
                                            if (downloadInfo.getRealStatus() != -5) {
                                                if (downloadInfo.getRealStatus() == -2 && downloadInfo.isPauseReserveOnWifi()) {
                                                }
                                            }
                                            d.this.dq(applicationContext, downloadInfo, true, 2);
                                        }
                                    }
                                }
                            } catch (Exception e2) {
                                e2.printStackTrace();
                            }
                        }
                    });
                    try {
                        applicationContext.unregisterReceiver(d.this.f9297d);
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                    d.this.f9297d = null;
                }
            }
        };
        try {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            ob.registerReceiver(this.f9297d, intentFilter);
        } catch (Throwable th) {
            th.printStackTrace();
            this.f9297d = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:97:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:99:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void dq(Context context, DownloadInfo downloadInfo, boolean z, int i) {
        double d2;
        boolean z2;
        mn q;
        if (downloadInfo == null || !downloadInfo.isShowNotification()) {
            return;
        }
        int realStatus = downloadInfo.getRealStatus();
        if (realStatus == -5) {
            d2 = 3600000.0d;
            if ("application/ttpatch".equalsIgnoreCase(downloadInfo.getMimeType()) || !downloadInfo.isDownloaded()) {
                com.ss.android.socialbase.downloader.mn.dq dq = com.ss.android.socialbase.downloader.mn.dq.dq(downloadInfo.getId());
                int dq2 = dq.dq("failed_resume_max_count", 0);
                double dq3 = dq.dq("failed_resume_max_hours", 72.0d);
                double dq4 = dq.dq("failed_resume_min_hours", 12.0d);
                long currentTimeMillis = System.currentTimeMillis();
                boolean z3 = downloadInfo.getFailedResumeCount() < dq2 && ((double) (currentTimeMillis - downloadInfo.getLastDownloadTime())) < dq3 * 3600000.0d && ((double) (currentTimeMillis - downloadInfo.getLastFailedResumeTime())) > dq4 * 3600000.0d;
                if (downloadInfo.isPauseReserveOnWifi() && z) {
                    z3 = true;
                }
                if (z3) {
                    boolean z4 = dq.dq("failed_resume_need_wifi", 1) == 1;
                    boolean z5 = dq.dq("failed_resume_need_wait_wifi", 0) == 1;
                    if (z || !z4 || !z5) {
                        com.ss.android.socialbase.appdownloader.ox.dq(downloadInfo, true, z4);
                        downloadInfo.setLastFailedResumeTime(currentTimeMillis);
                        downloadInfo.setFailedResumeCount(downloadInfo.getFailedResumeCount() + 1);
                        downloadInfo.updateSpData();
                        if (downloadInfo.isPauseReserveOnWifi() && z) {
                            downloadInfo.setDownloadFromReserveWifi(true);
                            cd jy = p.o().jy();
                            if (jy != null) {
                                jy.dq(downloadInfo, 5, i);
                            }
                        }
                        z2 = true;
                        com.ss.android.socialbase.downloader.ox.dq.ox("LaunchResume", "launchResume, name = " + downloadInfo.getTitle() + ", canShowNotification = " + z3 + ", downloadResumed = " + z2);
                        q = p.o().q();
                        if (q == null) {
                            q.dq(downloadInfo, z2);
                            return;
                        }
                        return;
                    }
                    if (this.dq == null) {
                        this.dq = new ArrayList();
                    }
                    int id = downloadInfo.getId();
                    if (!this.dq.contains(Integer.valueOf(id))) {
                        this.dq.add(Integer.valueOf(id));
                    }
                    downloadInfo.setOnlyWifi(true);
                    com.ss.android.socialbase.downloader.impls.cd.dq().dq(downloadInfo);
                }
                z2 = false;
                com.ss.android.socialbase.downloader.ox.dq.ox("LaunchResume", "launchResume, name = " + downloadInfo.getTitle() + ", canShowNotification = " + z3 + ", downloadResumed = " + z2);
                q = p.o().q();
                if (q == null) {
                }
            }
        } else {
            d2 = 3600000.0d;
        }
        if (realStatus != -3 || !dq(downloadInfo)) {
            if (realStatus == -2) {
                if (downloadInfo.isPauseReserveOnWifi()) {
                    if (z) {
                        com.ss.android.socialbase.appdownloader.ox.dq(downloadInfo, true, true);
                        downloadInfo.updateSpData();
                        downloadInfo.setDownloadFromReserveWifi(true);
                        mn q2 = p.o().q();
                        if (q2 != null) {
                            q2.dq(downloadInfo, true);
                        }
                        cd jy2 = p.o().jy();
                        if (jy2 != null) {
                            jy2.dq(downloadInfo, 5, i);
                            return;
                        }
                        return;
                    }
                    if (this.dq == null) {
                        this.dq = new ArrayList();
                    }
                    int id2 = downloadInfo.getId();
                    if (!this.dq.contains(Integer.valueOf(id2))) {
                        this.dq.add(Integer.valueOf(id2));
                    }
                    com.ss.android.socialbase.downloader.impls.cd.dq().dq(downloadInfo);
                }
                dq(downloadInfo, context);
                return;
            }
            return;
        }
        com.ss.android.socialbase.downloader.mn.dq dq5 = com.ss.android.socialbase.downloader.mn.dq.dq(downloadInfo.getId());
        if (com.ss.android.socialbase.appdownloader.ox.dq(context, downloadInfo)) {
            return;
        }
        int dq6 = dq5.dq("uninstall_resume_max_count", 0);
        double dq7 = dq5.dq("uninstall_resume_max_hours", 72.0d);
        double dq8 = dq5.dq("uninstall_resume_min_hours", 12.0d);
        long currentTimeMillis2 = System.currentTimeMillis();
        boolean z6 = downloadInfo.getUninstallResumeCount() < dq6 && ((double) (currentTimeMillis2 - downloadInfo.getLastDownloadTime())) < dq7 * d2 && ((double) (currentTimeMillis2 - downloadInfo.getLastUninstallResumeTime())) > dq8 * d2;
        com.ss.android.socialbase.downloader.ox.dq.ox("LaunchResume", "uninstallResume, name = " + downloadInfo.getTitle() + ", canShowNotification = " + z6);
        if (z6) {
            com.ss.android.socialbase.downloader.notification.dq s = com.ss.android.socialbase.downloader.notification.d.dq().s(downloadInfo.getId());
            if (s == null) {
                com.ss.android.socialbase.appdownloader.s.dq dqVar = new com.ss.android.socialbase.appdownloader.s.dq(context, downloadInfo.getId(), downloadInfo.getTitle(), downloadInfo.getSavePath(), downloadInfo.getName(), downloadInfo.getExtra());
                com.ss.android.socialbase.downloader.notification.d.dq().dq(dqVar);
                s = dqVar;
            } else {
                s.dq(downloadInfo);
            }
            s.d(downloadInfo.getTotalBytes());
            s.dq(downloadInfo.getTotalBytes());
            s.dq(downloadInfo.getStatus(), null, false, false);
            downloadInfo.setLastUninstallResumeTime(currentTimeMillis2);
            downloadInfo.setUninstallResumeCount(downloadInfo.getUninstallResumeCount() + 1);
            downloadInfo.updateSpData();
        }
    }

    private void dq(DownloadInfo downloadInfo, Context context) {
        com.ss.android.socialbase.downloader.mn.dq dq = com.ss.android.socialbase.downloader.mn.dq.dq(downloadInfo.getId());
        int dq2 = dq.dq("paused_resume_max_count", 0);
        double dq3 = dq.dq("paused_resume_max_hours", 72.0d);
        int pausedResumeCount = downloadInfo.getPausedResumeCount();
        if (pausedResumeCount >= dq2 || System.currentTimeMillis() - downloadInfo.getLastDownloadTime() >= dq3 * 3600000.0d) {
            return;
        }
        com.ss.android.socialbase.downloader.notification.dq s = com.ss.android.socialbase.downloader.notification.d.dq().s(downloadInfo.getId());
        if (s == null) {
            com.ss.android.socialbase.appdownloader.s.dq dqVar = new com.ss.android.socialbase.appdownloader.s.dq(context, downloadInfo.getId(), downloadInfo.getTitle(), downloadInfo.getSavePath(), downloadInfo.getName(), downloadInfo.getExtra());
            com.ss.android.socialbase.downloader.notification.d.dq().dq(dqVar);
            s = dqVar;
        } else {
            s.dq(downloadInfo);
        }
        s.d(downloadInfo.getTotalBytes());
        s.dq(downloadInfo.getCurBytes());
        s.dq(downloadInfo.getStatus(), null, false, false);
        downloadInfo.setPausedResumeCount(pausedResumeCount + 1);
        downloadInfo.updateSpData();
    }

    private boolean dq(DownloadInfo downloadInfo) {
        return com.ss.android.socialbase.downloader.mn.dq.dq(downloadInfo.getId()).d("uninstall_can_not_resume_for_force_task", false) ? iw.dq(downloadInfo, false, downloadInfo.getMd5()) : downloadInfo.isDownloaded();
    }

    @Override // com.ss.android.socialbase.downloader.downloader.ig
    public List<String> dq() {
        return com.ss.android.socialbase.appdownloader.ox.ox();
    }

    @Override // com.ss.android.socialbase.downloader.downloader.ig
    public void dq(final List<DownloadInfo> list, final int i) {
        if (iw.p()) {
            ox.ig().execute(new Runnable() { // from class: com.ss.android.socialbase.appdownloader.p.d.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        d.this.d(list, i);
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
            });
        } else {
            d(list, i);
        }
    }
}

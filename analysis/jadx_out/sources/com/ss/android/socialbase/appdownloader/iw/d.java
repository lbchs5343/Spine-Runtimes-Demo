package com.ss.android.socialbase.appdownloader.iw;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.text.TextUtils;
import com.ss.android.socialbase.downloader.depend.kx;
import com.ss.android.socialbase.downloader.downloader.Downloader;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import java.io.File;

/* loaded from: classes.dex */
public class d {
    private static void d(final DownloadInfo downloadInfo) {
        final Context ob = com.ss.android.socialbase.downloader.downloader.ox.ob();
        final int dq = (((!downloadInfo.isAutoResumed() || downloadInfo.isShowNotificationForNetworkResumed()) && !com.ss.android.socialbase.appdownloader.ox.d(downloadInfo.getExtra()) && !TextUtils.isEmpty(downloadInfo.getMimeType()) && downloadInfo.getMimeType().equals("application/vnd.android.package-archive")) || com.ss.android.socialbase.downloader.mn.dq.dq(downloadInfo.getId()).dq("auto_install_when_resume", 0) == 1) ? com.ss.android.socialbase.appdownloader.ox.dq(ob, downloadInfo.getId(), false) : 2;
        com.ss.android.socialbase.downloader.downloader.ox.ig().execute(new Runnable() { // from class: com.ss.android.socialbase.appdownloader.iw.d.1
            @Override // java.lang.Runnable
            public void run() {
                com.ss.android.socialbase.appdownloader.ox.p d2 = com.ss.android.socialbase.appdownloader.p.o().d();
                kx downloadNotificationEventListener = Downloader.getInstance(ob).getDownloadNotificationEventListener(downloadInfo.getId());
                if (d2 == null && downloadNotificationEventListener == null) {
                    return;
                }
                File file = new File(downloadInfo.getSavePath(), downloadInfo.getName());
                if (file.exists()) {
                    try {
                        PackageInfo dq2 = com.ss.android.socialbase.appdownloader.ox.dq(downloadInfo, file);
                        if (dq2 != null) {
                            String packageName = (dq == 1 || TextUtils.isEmpty(downloadInfo.getPackageName())) ? dq2.packageName : downloadInfo.getPackageName();
                            if (d2 != null) {
                                d2.dq(downloadInfo.getId(), 1, packageName, -3, downloadInfo.getDownloadTime());
                            }
                            if (downloadNotificationEventListener != null) {
                                downloadNotificationEventListener.dq(1, downloadInfo, packageName, "");
                            }
                        }
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
            }
        });
    }

    public static void dq(DownloadInfo downloadInfo) {
        d(downloadInfo);
    }
}

package com.ss.android.downloadlib.ox;

import android.content.Context;
import com.ss.android.downloadlib.addownload.no;
import com.ss.android.socialbase.downloader.downloader.Downloader;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class iw implements com.ss.android.socialbase.appdownloader.ox.p {
    private Context dq;

    public iw(Context context) {
        this.dq = context.getApplicationContext();
    }

    @Override // com.ss.android.socialbase.appdownloader.ox.p
    public void dq(int i, int i2, String str, int i3, long j) {
        DownloadInfo downloadInfo;
        com.ss.android.downloadad.api.dq.d dq;
        Context context = this.dq;
        if (context == null || (downloadInfo = Downloader.getInstance(context).getDownloadInfo(i)) == null || downloadInfo.getStatus() == 0 || (dq = com.ss.android.downloadlib.addownload.d.iw.dq().dq(downloadInfo)) == null) {
            return;
        }
        if (i2 == 1) {
            com.ss.android.downloadlib.dq.dq(downloadInfo, dq);
            if ("application/vnd.android.package-archive".equals(downloadInfo.getMimeType())) {
                com.ss.android.downloadlib.addownload.dq.dq().dq(downloadInfo, dq.d(), dq.ig(), dq.s(), downloadInfo.getTitle(), dq.p(), downloadInfo.getTargetFilePath());
                return;
            }
            return;
        }
        if (i2 == 3) {
            com.ss.android.downloadlib.p.dq.dq().dq("download_notification", "download_notification_install", com.ss.android.downloadlib.dq.d(new JSONObject(), downloadInfo), dq);
            return;
        }
        if (i2 == 5) {
            com.ss.android.downloadlib.p.dq.dq().dq("download_notification", "download_notification_pause", dq);
        } else if (i2 == 6) {
            com.ss.android.downloadlib.p.dq.dq().dq("download_notification", "download_notification_continue", dq);
        } else {
            if (i2 != 7) {
                return;
            }
            com.ss.android.downloadlib.p.dq.dq().dq("download_notification", "download_notification_click", dq);
        }
    }

    @Override // com.ss.android.socialbase.appdownloader.ox.p
    public void dq(int i, int i2, String str, String str2, String str3) {
        DownloadInfo downloadInfo;
        Context context = this.dq;
        if (context == null || (downloadInfo = Downloader.getInstance(context).getDownloadInfo(i)) == null || downloadInfo.getStatus() != -3) {
            return;
        }
        downloadInfo.setPackageName(str2);
        com.ss.android.downloadlib.addownload.d.dq().dq(this.dq, downloadInfo);
    }

    @Override // com.ss.android.socialbase.appdownloader.ox.p
    public void dq(Context context, String str) {
        com.ss.android.downloadlib.dq.dq().dq(str);
    }

    @Override // com.ss.android.socialbase.appdownloader.ox.p
    public void dq(DownloadInfo downloadInfo) {
        if (downloadInfo == null) {
            return;
        }
        com.ss.android.downloadlib.ia.dq().dq(downloadInfo);
        if (com.ss.android.socialbase.downloader.mn.dq.dq(downloadInfo.getId()).dq("report_download_cancel", 1) == 1) {
            com.ss.android.downloadlib.p.dq.dq().dq(downloadInfo, new BaseException(1012, ""));
        } else {
            com.ss.android.downloadlib.p.dq.dq().d(downloadInfo, new BaseException(1012, ""));
        }
    }

    @Override // com.ss.android.socialbase.appdownloader.ox.p
    public boolean dq() {
        return com.ss.android.downloadlib.addownload.d.dq().d();
    }

    @Override // com.ss.android.socialbase.appdownloader.ox.p
    public boolean dq(int i, boolean z) {
        if (no.jy() != null) {
            return no.jy().dq(z);
        }
        return false;
    }
}

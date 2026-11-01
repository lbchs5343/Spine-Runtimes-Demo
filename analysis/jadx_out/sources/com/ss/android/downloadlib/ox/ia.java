package com.ss.android.downloadlib.ox;

import com.ss.android.downloadlib.addownload.no;
import com.ss.android.downloadlib.mn.mp;
import com.ss.android.socialbase.downloader.downloader.Downloader;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ia {

    public static class dq {
        private static ia dq = new ia();
    }

    private ia() {
    }

    private void d(final com.ss.android.downloadad.api.dq.d dVar, long j) {
        final int gh = dVar.gh();
        if (com.ss.android.socialbase.downloader.mn.dq.dq(gh).d("notification_opt_2") != 1) {
            return;
        }
        dq(gh);
        com.ss.android.downloadlib.s.dq().dq(new Runnable() { // from class: com.ss.android.downloadlib.ox.ia.1
            @Override // java.lang.Runnable
            public void run() {
                DownloadInfo downloadInfo = Downloader.getInstance(no.getContext()).getDownloadInfo(gh);
                JSONObject jSONObject = new JSONObject();
                mp.dq(jSONObject, "ttdownloader_type", (Object) 1);
                com.ss.android.downloadlib.mn.iw.ox(downloadInfo, jSONObject);
                if (downloadInfo == null || -2 != downloadInfo.getRealStatus() || downloadInfo.isPauseReserveOnWifi()) {
                    mp.dq(jSONObject, "error_code", (Object) 1001);
                } else {
                    ia.this.dq(gh, dVar, jSONObject);
                }
                com.ss.android.downloadlib.p.dq.dq().d("download_notification_try_show", jSONObject, dVar);
            }
        }, j * 1000);
    }

    public static ia dq() {
        return dq.dq;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(int i, com.ss.android.downloadad.api.dq.d dVar, JSONObject jSONObject) {
        if (!com.ss.android.socialbase.appdownloader.s.p.dq()) {
            mp.dq(jSONObject, "error_code", (Object) 1004);
            return;
        }
        DownloadInfo downloadInfo = Downloader.getInstance(no.getContext()).getDownloadInfo(i);
        if (downloadInfo == null) {
            mp.dq(jSONObject, "error_code", (Object) 1005);
            return;
        }
        if (com.ss.android.socialbase.downloader.notification.d.dq().s(i) != null) {
            com.ss.android.socialbase.downloader.notification.d.dq().iw(i);
        }
        com.ss.android.socialbase.appdownloader.s.dq dqVar = new com.ss.android.socialbase.appdownloader.s.dq(no.getContext(), i, downloadInfo.getTitle(), downloadInfo.getSavePath(), downloadInfo.getName(), downloadInfo.getExtra());
        dqVar.dq(downloadInfo.getCurBytes());
        dqVar.d(downloadInfo.getTotalBytes());
        dqVar.dq(downloadInfo.getStatus(), null, false, false);
        com.ss.android.socialbase.downloader.notification.d.dq().dq(dqVar);
        dqVar.dq((BaseException) null, false);
        com.ss.android.downloadlib.p.dq.dq().d("download_notification_show", jSONObject, dVar);
    }

    private void ox(final com.ss.android.downloadad.api.dq.d dVar, long j) {
        final int gh = dVar.gh();
        if (com.ss.android.socialbase.downloader.mn.dq.dq(gh).d("notification_opt_2") != 1) {
            return;
        }
        dq(gh);
        com.ss.android.downloadlib.s.dq().dq(new Runnable() { // from class: com.ss.android.downloadlib.ox.ia.2
            @Override // java.lang.Runnable
            public void run() {
                DownloadInfo downloadInfo = Downloader.getInstance(no.getContext()).getDownloadInfo(gh);
                JSONObject jSONObject = new JSONObject();
                mp.dq(jSONObject, "ttdownloader_type", (Object) 2);
                com.ss.android.downloadlib.mn.iw.ox(downloadInfo, jSONObject);
                if (mp.d(dVar)) {
                    mp.dq(jSONObject, "error_code", (Object) 1002);
                } else {
                    ia.this.dq(gh, dVar, jSONObject);
                }
                com.ss.android.downloadlib.p.dq.dq().d("download_notification_try_show", jSONObject, dVar);
            }
        }, j * 1000);
    }

    public void d(com.ss.android.downloadad.api.dq.d dVar) {
        if (dVar == null) {
            return;
        }
        d(dVar, com.ss.android.socialbase.downloader.mn.dq.dq(dVar.gh()).dq("noti_continue_delay_secs", 5));
    }

    public void dq(int i) {
        DownloadInfo downloadInfo;
        if (com.ss.android.socialbase.appdownloader.s.ox.dq().dq(i) != null || (downloadInfo = Downloader.getInstance(no.getContext()).getDownloadInfo(i)) == null) {
            return;
        }
        com.ss.android.socialbase.appdownloader.s.ox.dq().dq(i, downloadInfo.getIconUrl());
    }

    public void dq(com.ss.android.downloadad.api.dq.d dVar) {
        d(dVar, 5L);
    }

    public void dq(final com.ss.android.downloadad.api.dq.d dVar, long j) {
        final int gh = dVar.gh();
        if (com.ss.android.socialbase.downloader.mn.dq.dq(gh).d("notification_opt_2") != 1) {
            return;
        }
        dq(gh);
        com.ss.android.downloadlib.s.dq().dq(new Runnable() { // from class: com.ss.android.downloadlib.ox.ia.3
            @Override // java.lang.Runnable
            public void run() {
                DownloadInfo downloadInfo = Downloader.getInstance(no.getContext()).getDownloadInfo(gh);
                JSONObject jSONObject = new JSONObject();
                mp.dq(jSONObject, "ttdownloader_type", (Object) 3);
                com.ss.android.downloadlib.mn.iw.ox(downloadInfo, jSONObject);
                if (mp.ox(dVar.s())) {
                    mp.dq(jSONObject, "error_code", (Object) 1003);
                } else {
                    ia.this.dq(gh, dVar, jSONObject);
                }
                com.ss.android.downloadlib.p.dq.dq().d("download_notification_try_show", jSONObject, dVar);
            }
        }, j * 1000);
    }

    public void iw(com.ss.android.downloadad.api.dq.d dVar) {
        dq(dVar, com.ss.android.socialbase.downloader.mn.dq.dq(dVar.gh()).dq("noti_open_delay_secs", 5));
    }

    public void ox(com.ss.android.downloadad.api.dq.d dVar) {
        ox(dVar, 5L);
    }

    public void p(com.ss.android.downloadad.api.dq.d dVar) {
        ox(dVar, com.ss.android.socialbase.downloader.mn.dq.dq(dVar.gh()).dq("noti_install_delay_secs", 5));
    }

    public void s(com.ss.android.downloadad.api.dq.d dVar) {
        dq(dVar, 5L);
    }
}

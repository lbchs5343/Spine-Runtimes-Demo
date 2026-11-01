package com.ss.android.downloadlib.ox;

import com.bytedance.android.live.base.api.push.model.PushUIConfig;
import com.ss.android.downloadlib.addownload.d.kk;
import com.ss.android.downloadlib.mn.mp;
import com.ss.android.socialbase.downloader.depend.no;
import com.ss.android.socialbase.downloader.downloader.Downloader;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import g.abn;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class p implements com.ss.android.socialbase.appdownloader.ox.mn, no {
    @Override // com.ss.android.socialbase.downloader.depend.no
    public void dq() {
        com.ss.android.downloadlib.s.dq().dq(new Runnable() { // from class: com.ss.android.downloadlib.ox.p.1
            @Override // java.lang.Runnable
            public void run() {
                DownloadInfo downloadInfo;
                int spIntVal;
                com.ss.android.downloadlib.addownload.d.iw.dq().d();
                for (com.ss.android.downloadad.api.dq.d dVar : com.ss.android.downloadlib.addownload.d.iw.dq().ox().values()) {
                    int gh = dVar.gh();
                    if (gh != 0) {
                        com.ss.android.socialbase.downloader.mn.dq dq = com.ss.android.socialbase.downloader.mn.dq.dq(gh);
                        if (dq.d("notification_opt_2") == 1 && (downloadInfo = Downloader.getInstance(com.ss.android.downloadlib.addownload.no.getContext()).getDownloadInfo(gh)) != null) {
                            if (mp.d(dVar) && !mp.ox(dVar.s())) {
                                int spIntVal2 = downloadInfo.getSpIntVal("restart_notify_open_app_count");
                                if (spIntVal2 < dq.dq("noti_open_restart_times", 1)) {
                                    ia.dq().s(dVar);
                                    downloadInfo.setSpValue("restart_notify_open_app_count", String.valueOf(spIntVal2 + 1));
                                }
                            } else if (downloadInfo.getRealStatus() == -2) {
                                int spIntVal3 = downloadInfo.getSpIntVal("restart_notify_continue_count");
                                if (spIntVal3 < dq.dq("noti_continue_restart_times", 1)) {
                                    ia.dq().dq(dVar);
                                    downloadInfo.setSpValue("restart_notify_continue_count", String.valueOf(spIntVal3 + 1));
                                }
                            } else if (downloadInfo.getRealStatus() == -3 && com.ss.android.socialbase.downloader.kk.iw.ox(downloadInfo) && !mp.d(dVar) && (spIntVal = downloadInfo.getSpIntVal("restart_notify_install_count")) < dq.dq("noti_install_restart_times", 1)) {
                                ia.dq().ox(dVar);
                                downloadInfo.setSpValue("restart_notify_install_count", String.valueOf(spIntVal + 1));
                            }
                        }
                    }
                }
            }
        }, PushUIConfig.dismissTime);
    }

    public void dq(DownloadInfo downloadInfo, int i, boolean z) {
        com.ss.android.downloadlib.addownload.d.iw.dq().d();
        com.ss.android.downloadad.api.dq.d dq = com.ss.android.downloadlib.addownload.d.iw.dq().dq(downloadInfo);
        if (dq == null) {
            return;
        }
        try {
            if (z) {
                dq.ox(downloadInfo.getFailedResumeCount());
            } else if (dq.n() == -1) {
                return;
            } else {
                dq.ox(-1);
            }
            kk.dq().dq(dq);
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("download_id", downloadInfo.getId());
            jSONObject.put(abn.EXTRA_UA_APP_NAME, downloadInfo.getName());
            jSONObject.put(abn.EXTRA_URL, downloadInfo.getUrl());
            jSONObject.put("download_time", downloadInfo.getDownloadTime());
            jSONObject.put("download_status", i);
            jSONObject.put("cur_bytes", downloadInfo.getCurBytes());
            jSONObject.put("total_bytes", downloadInfo.getTotalBytes());
            jSONObject.put("only_wifi", downloadInfo.isOnlyWifi() ? 1 : 0);
            jSONObject.put("chunk_count", downloadInfo.getChunkCount());
            jSONObject.put("launch_resumed", z ? 1 : 2);
            jSONObject.put("failed_resume_count", downloadInfo.getFailedResumeCount());
            com.ss.android.downloadlib.p.dq.dq().dq("embeded_ad", "download_uncompleted", jSONObject, dq);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.appdownloader.ox.mn
    public void dq(DownloadInfo downloadInfo, boolean z) {
        if (downloadInfo == null) {
            return;
        }
        dq(downloadInfo, downloadInfo.getRealStatus(), z);
    }
}

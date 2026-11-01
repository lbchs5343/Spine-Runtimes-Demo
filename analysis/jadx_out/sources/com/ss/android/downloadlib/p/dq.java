package com.ss.android.downloadlib.p;

import android.os.Build;
import com.ss.android.download.api.download.DownloadController;
import com.ss.android.download.api.download.DownloadEventConfig;
import com.ss.android.download.api.download.DownloadModel;
import com.ss.android.download.api.model.ox;
import com.ss.android.downloadad.api.download.AdDownloadModel;
import com.ss.android.downloadlib.addownload.d.kk;
import com.ss.android.downloadlib.addownload.no;
import com.ss.android.downloadlib.mn.iw;
import com.ss.android.downloadlib.mn.mp;
import com.ss.android.socialbase.appdownloader.iw.s;
import com.ss.android.socialbase.appdownloader.s.p;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class dq {

    /* renamed from: com.ss.android.downloadlib.p.dq$dq, reason: collision with other inner class name */
    public static class C0223dq {
        private static dq dq = new dq();
    }

    private dq() {
    }

    public static dq dq() {
        return C0223dq.dq;
    }

    private JSONObject dq(com.ss.android.downloadad.api.dq.dq dqVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            mp.dq(dqVar.mn(), jSONObject);
            mp.dq(dqVar.f(), jSONObject);
            jSONObject.putOpt("download_url", dqVar.dq());
            jSONObject.putOpt("package_name", dqVar.s());
            jSONObject.putOpt("android_int", Integer.valueOf(Build.VERSION.SDK_INT));
            jSONObject.putOpt("rom_name", s.ia());
            jSONObject.putOpt("rom_version", s.kk());
            jSONObject.putOpt("ttdownloader", 1);
            jSONObject.putOpt("funnel_type", Integer.valueOf(dqVar.ia()));
            if (dqVar.ia() == 2) {
                iw.d(jSONObject, dqVar);
            }
            if (s.f()) {
                iw.dq(jSONObject);
            }
            return jSONObject;
        } catch (Exception e2) {
            no.r().dq(e2, "getBaseJson");
            return jSONObject;
        }
    }

    private void dq(com.ss.android.download.api.model.ox oxVar) {
        if (no.dq() == null) {
            return;
        }
        if (oxVar.mp()) {
            no.dq().dq(oxVar);
        } else {
            no.dq().d(oxVar);
        }
    }

    private void dq(String str, String str2, JSONObject jSONObject, long j, int i, com.ss.android.downloadad.api.dq.dq dqVar) {
        if (dqVar == null) {
            com.ss.android.downloadlib.s.ox.dq().dq("onEvent data null");
            return;
        }
        if ((dqVar instanceof com.ss.android.downloadlib.addownload.d.s) && ((com.ss.android.downloadlib.addownload.d.s) dqVar).wp()) {
            com.ss.android.downloadlib.s.ox.dq().dq("onEvent ModelBox notValid");
            return;
        }
        try {
            ox.dq ox = new ox.dq().dq(mp.dq(str, dqVar.o(), "embeded_ad")).d(str2).d(dqVar.ox()).dq(dqVar.d()).ox(dqVar.p());
            if (j <= 0) {
                j = dqVar.ig();
            }
            ox.dq dq = ox.d(j).p(dqVar.kk()).dq(dqVar.q()).dq(mp.dq(dq(dqVar), jSONObject)).d(dqVar.no()).dq(dqVar.jy());
            if (i <= 0) {
                i = 2;
            }
            dq(dq.dq(i).dq(dqVar.mp()).dq());
        } catch (Exception e2) {
            com.ss.android.downloadlib.s.ox.dq().dq(e2, "onEvent");
        }
    }

    public void d(long j, int i) {
        dq(j, i, (DownloadInfo) null);
    }

    public void d(DownloadInfo downloadInfo, BaseException baseException) {
        if (downloadInfo == null) {
            return;
        }
        com.ss.android.downloadad.api.dq.d dq = com.ss.android.downloadlib.addownload.d.iw.dq().dq(downloadInfo);
        if (dq == null) {
            com.ss.android.downloadlib.s.ox.dq().dq("sendDownloadFailedEvent nativeModel null");
            return;
        }
        if (dq.ox.get()) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            iw.ox(downloadInfo, jSONObject);
            com.ss.android.downloadlib.dq.dq(jSONObject, downloadInfo);
            if (baseException != null) {
                jSONObject.putOpt("fail_status", Integer.valueOf(baseException.getErrorCode()));
                jSONObject.putOpt("fail_msg", baseException.getErrorMessage());
                dq.p(baseException.getErrorCode());
                dq.dq(baseException.getErrorMessage());
            }
            dq.e();
            jSONObject.put("download_failed_times", dq.wp());
            if (downloadInfo.getTotalBytes() > 0) {
                jSONObject.put("download_percent", downloadInfo.getCurBytes() / downloadInfo.getTotalBytes());
            }
            jSONObject.put("has_send_download_failed_finally", dq.p.get() ? 1 : 2);
            iw.dq(dq, jSONObject);
            jSONObject.put("is_update_download", dq.yy() ? 1 : 2);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        dq(dq.o(), "download_failed", jSONObject, dq);
        kk.dq().dq(dq);
    }

    public void d(String str, com.ss.android.downloadad.api.dq.dq dqVar) {
        dq((String) null, str, dqVar);
    }

    public void d(String str, JSONObject jSONObject, com.ss.android.downloadad.api.dq.dq dqVar) {
        dq((String) null, str, jSONObject, dqVar);
    }

    public void dq(long j, int i) {
        com.ss.android.downloadlib.addownload.d.s s = com.ss.android.downloadlib.addownload.d.iw.dq().s(j);
        if (s.wp()) {
            com.ss.android.downloadlib.s.ox.dq().dq("sendClickEvent ModelBox notValid");
            return;
        }
        if (s.ox.isEnableClickEvent()) {
            int i2 = 1;
            DownloadEventConfig downloadEventConfig = s.ox;
            String clickItemTag = i == 1 ? downloadEventConfig.getClickItemTag() : downloadEventConfig.getClickButtonTag();
            String dq = mp.dq(s.ox.getClickLabel(), "click");
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.putOpt("download_click_type", Integer.valueOf(i));
                jSONObject.putOpt("permission_notification", Integer.valueOf(p.dq() ? 1 : 2));
                if (!com.ss.android.socialbase.downloader.kk.iw.ox(no.getContext())) {
                    i2 = 2;
                }
                jSONObject.putOpt("network_available", Integer.valueOf(i2));
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
            dq(clickItemTag, dq, jSONObject, s);
            if (!"click".equals(dq) || s.f9152d == null) {
                return;
            }
            ox.dq().dq(j, s.f9152d.getLogExtra());
        }
    }

    public void dq(long j, int i, DownloadInfo downloadInfo) {
        String dq;
        com.ss.android.downloadlib.addownload.d.s s = com.ss.android.downloadlib.addownload.d.iw.dq().s(j);
        if (s.wp()) {
            com.ss.android.downloadlib.s.ox.dq().dq("sendEvent ModelBox notValid");
            return;
        }
        JSONObject jSONObject = new JSONObject();
        mp.dq(jSONObject, "download_scene", Integer.valueOf(s.r()));
        if (i == 1) {
            dq = mp.dq(s.ox.getStorageDenyLabel(), "storage_deny");
        } else if (i == 2) {
            dq = mp.dq(s.ox.getClickStartLabel(), "click_start");
            iw.dq(downloadInfo, jSONObject);
        } else if (i == 3) {
            dq = mp.dq(s.ox.getClickPauseLabel(), "click_pause");
            iw.d(downloadInfo, jSONObject);
        } else if (i == 4) {
            dq = mp.dq(s.ox.getClickContinueLabel(), "click_continue");
            iw.ox(downloadInfo, jSONObject);
        } else if (i != 5) {
            dq = null;
        } else {
            if (downloadInfo != null) {
                try {
                    iw.dq(jSONObject, downloadInfo.getId());
                    com.ss.android.downloadlib.dq.d(jSONObject, downloadInfo);
                } catch (Throwable unused) {
                }
            }
            dq = mp.dq(s.ox.getClickInstallLabel(), "click_install");
        }
        dq(null, dq, jSONObject, 0L, 1, s);
    }

    public void dq(long j, BaseException baseException) {
        com.ss.android.downloadlib.addownload.d.s s = com.ss.android.downloadlib.addownload.d.iw.dq().s(j);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("download_time", 0);
            if (baseException != null) {
                jSONObject.putOpt("fail_status", Integer.valueOf(baseException.getErrorCode()));
                jSONObject.putOpt("fail_msg", baseException.getErrorMessage());
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        d("download_failed", jSONObject, s);
    }

    public void dq(long j, boolean z, int i) {
        com.ss.android.downloadlib.addownload.d.s s = com.ss.android.downloadlib.addownload.d.iw.dq().s(j);
        if (s.wp()) {
            com.ss.android.downloadlib.s.ox.dq().dq("sendQuickAppEvent ModelBox notValid");
            return;
        }
        if (s.f9152d.getQuickAppModel() == null) {
            return;
        }
        DownloadModel downloadModel = s.f9152d;
        if (downloadModel instanceof AdDownloadModel) {
            ((AdDownloadModel) downloadModel).setFunnelType(3);
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("download_click_type", Integer.valueOf(i));
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        d(z ? "deeplink_quickapp_success" : "deeplink_quickapp_failed", jSONObject, s);
    }

    public void dq(DownloadInfo downloadInfo) {
        com.ss.android.downloadad.api.dq.d dq = com.ss.android.downloadlib.addownload.d.iw.dq().dq(downloadInfo);
        if (dq == null) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            iw.ox(downloadInfo, jSONObject);
            dq.dq(System.currentTimeMillis());
            dq(dq.o(), "download_resume", jSONObject, dq);
            kk.dq().dq(dq);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void dq(DownloadInfo downloadInfo, BaseException baseException) {
        com.ss.android.downloadad.api.dq.d dq;
        if (downloadInfo == null || (dq = com.ss.android.downloadlib.addownload.d.iw.dq().dq(downloadInfo)) == null || dq.ox.get()) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            com.ss.android.downloadlib.dq.dq(jSONObject, downloadInfo);
            jSONObject.putOpt("fail_status", Integer.valueOf(dq.op()));
            jSONObject.putOpt("fail_msg", dq.ir());
            jSONObject.put("download_failed_times", dq.wp());
            if (downloadInfo.getTotalBytes() > 0) {
                jSONObject.put("download_percent", downloadInfo.getCurBytes() / downloadInfo.getTotalBytes());
            }
            jSONObject.put("download_status", downloadInfo.getRealStatus());
            long currentTimeMillis = System.currentTimeMillis();
            if (dq.c() > 0) {
                jSONObject.put("time_from_start_download", currentTimeMillis - dq.c());
            }
            if (dq.ji() > 0) {
                jSONObject.put("time_from_download_resume", currentTimeMillis - dq.ji());
            }
            jSONObject.put("is_update_download", dq.yy() ? 1 : 2);
            jSONObject.put("can_show_notification", p.dq() ? 1 : 2);
            jSONObject.put("has_send_download_failed_finally", dq.p.get() ? 1 : 2);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        dq(dq.o(), "download_cancel", jSONObject, dq);
    }

    public void dq(String str, int i, com.ss.android.downloadlib.addownload.d.s sVar) {
        dq(null, str, null, i, 0, sVar);
    }

    public void dq(String str, long j) {
        com.ss.android.downloadad.api.dq.d p = com.ss.android.downloadlib.addownload.d.iw.dq().p(j);
        if (p != null) {
            d(str, p);
        } else {
            d(str, com.ss.android.downloadlib.addownload.d.iw.dq().s(j));
        }
    }

    public void dq(String str, DownloadModel downloadModel, DownloadEventConfig downloadEventConfig, DownloadController downloadController) {
        d(str, new com.ss.android.downloadlib.addownload.d.s(downloadModel.getId(), downloadModel, downloadEventConfig, downloadController));
    }

    public void dq(String str, com.ss.android.downloadad.api.dq.dq dqVar) {
        dq(str, (JSONObject) null, dqVar);
    }

    public void dq(String str, String str2, com.ss.android.downloadad.api.dq.dq dqVar) {
        dq(str, str2, (JSONObject) null, dqVar);
    }

    public void dq(String str, String str2, JSONObject jSONObject, com.ss.android.downloadad.api.dq.dq dqVar) {
        dq(str, str2, jSONObject, 0L, 0, dqVar);
    }

    public void dq(String str, JSONObject jSONObject, long j) {
        com.ss.android.downloadad.api.dq.dq p = com.ss.android.downloadlib.addownload.d.iw.dq().p(j);
        if (p != null) {
            dq(str, jSONObject, p);
            return;
        }
        com.ss.android.downloadlib.addownload.d.s s = com.ss.android.downloadlib.addownload.d.iw.dq().s(j);
        if (s.wp()) {
            com.ss.android.downloadlib.s.ox.dq().dq("sendUnityEvent ModelBox notValid");
        } else {
            dq(str, jSONObject, s);
        }
    }

    public void dq(String str, JSONObject jSONObject, com.ss.android.downloadad.api.dq.dq dqVar) {
        JSONObject jSONObject2 = new JSONObject();
        mp.dq(jSONObject2, "unity_label", str);
        dq("embeded_ad", "ttdownloader_unity", mp.dq(jSONObject, jSONObject2), dqVar);
    }

    public void dq(JSONObject jSONObject, com.ss.android.downloadad.api.dq.d dVar) {
        dq(dVar.o(), "install_finish", jSONObject, dVar);
    }
}

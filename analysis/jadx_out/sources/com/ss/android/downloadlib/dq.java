package com.ss.android.downloadlib;

import android.content.Intent;
import android.content.pm.PackageInfo;
import android.os.Environment;
import android.text.TextUtils;
import android.util.Pair;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import com.bytedance.pangle.ZeusPluginEventCallback;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.ss.android.download.api.constant.BaseConstants;
import com.ss.android.downloadad.api.constant.AdBaseConstants;
import com.ss.android.downloadlib.addownload.d.p;
import com.ss.android.downloadlib.addownload.ig;
import com.ss.android.downloadlib.addownload.no;
import com.ss.android.downloadlib.mn.mp;
import com.ss.android.socialbase.appdownloader.d;
import com.ss.android.socialbase.downloader.constants.DownloadStatus;
import com.ss.android.socialbase.downloader.depend.ir;
import com.ss.android.socialbase.downloader.downloader.Downloader;
import com.ss.android.socialbase.downloader.dq.dq;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import g.abn;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class dq implements com.ss.android.downloadad.api.dq, d.ox, ir, dq.InterfaceC0248dq {
    private static String dq = "dq";
    private static volatile dq p;

    /* renamed from: d, reason: collision with root package name */
    private long f9209d;
    private d ox;

    public static class d implements Runnable {

        /* renamed from: d, reason: collision with root package name */
        private int f9214d;
        private long dq;
        private long ox;
        private int p;
        private long s;

        private d(long j, int i, long j2, int i2) {
            this.dq = j;
            this.f9214d = i;
            this.ox = j2;
            this.p = i2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void d() {
            this.s = System.currentTimeMillis();
        }

        private int dq(boolean z, com.ss.android.downloadad.api.dq.d dVar, DownloadInfo downloadInfo, boolean z2, JSONObject jSONObject) {
            com.ss.android.socialbase.downloader.mn.dq dq = com.ss.android.socialbase.downloader.mn.dq.dq(downloadInfo.getId());
            int i = 1;
            if (dq.dq("install_failed_check_ttmd5", 1) == 1) {
                int checkMd5Status = downloadInfo.checkMd5Status();
                try {
                    jSONObject.put("ttmd5_status", checkMd5Status);
                } catch (Throwable unused) {
                }
                if (!com.ss.android.socialbase.downloader.kk.iw.dq(checkMd5Status)) {
                    return 2005;
                }
            }
            int i2 = this.p;
            if (i2 != 2000) {
                return i2;
            }
            if (dq.dq("install_failed_check_signature", 1) == 1 && mp.s(no.getContext(), dVar.s())) {
                if (!mp.dq(mp.kk(no.getContext(), downloadInfo.getTargetFilePath()), mp.ia(no.getContext(), dVar.s()))) {
                    return 2006;
                }
            }
            if (!z) {
                return 2002;
            }
            long j = this.s;
            long j2 = this.ox;
            if (j <= j2) {
                return ZeusPluginEventCallback.EVENT_START_LOAD;
            }
            try {
                jSONObject.put("install_time", j - j2);
                if (dVar.bl() <= this.ox) {
                    i = 0;
                }
                jSONObject.put("install_again", i);
            } catch (Throwable unused2) {
            }
            return !z2 ? 2003 : 2004;
        }

        public boolean dq() {
            DownloadInfo downloadInfo;
            com.ss.android.downloadad.api.dq.d p = com.ss.android.downloadlib.addownload.d.iw.dq().p(this.dq);
            if (p == null || mp.d(p) || p.ox.get() || (downloadInfo = Downloader.getInstance(no.getContext()).getDownloadInfo(p.gh())) == null) {
                return false;
            }
            long nh = p.nh();
            long dq = mp.dq(Environment.getDataDirectory());
            long min = Math.min(524288000L, dq / 10);
            long totalBytes = downloadInfo.getTotalBytes();
            double d2 = totalBytes;
            boolean z = nh <= -1 || totalBytes <= -1 || ((double) nh) >= (2.5d * d2) + ((double) min);
            boolean dq2 = com.ss.android.socialbase.appdownloader.d.dq(no.getContext());
            JSONObject jSONObject = new JSONObject();
            int dq3 = dq(z, p, downloadInfo, dq2, jSONObject);
            this.p = dq3;
            try {
                jSONObject.putOpt("fail_status", Integer.valueOf(dq3));
                jSONObject.putOpt("available_space", Long.valueOf(nh / BaseConstants.MB_VALUE));
                jSONObject.putOpt("total_space", Long.valueOf(dq / BaseConstants.MB_VALUE));
                if (totalBytes > 0) {
                    jSONObject.putOpt("package_size", Long.valueOf(totalBytes / BaseConstants.MB_VALUE));
                }
                jSONObject.putOpt("space_enough", Integer.valueOf(z ? 1 : 2));
                if (nh > 0 && totalBytes > 0) {
                    jSONObject.put("available_space_ratio", nh / d2);
                }
                jSONObject.putOpt("permission_unknown_source_install", Integer.valueOf(dq2 ? 1 : 2));
                jSONObject.put("is_update_download", p.yy() ? 1 : 2);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            com.ss.android.downloadlib.p.dq.dq().d("install_failed", jSONObject, p);
            return true;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (dq()) {
                    dq.dq().dq(this.dq, this.f9214d);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    /* renamed from: com.ss.android.downloadlib.dq$dq, reason: collision with other inner class name */
    public class RunnableC0217dq implements Runnable {

        /* renamed from: d, reason: collision with root package name */
        private final int f9215d;

        public RunnableC0217dq(int i) {
            this.f9215d = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                com.ss.android.downloadlib.addownload.d.iw.dq().d();
                ConcurrentHashMap<Long, com.ss.android.downloadad.api.dq.d> ox = com.ss.android.downloadlib.addownload.d.iw.dq().ox();
                if (ox == null || ox.isEmpty()) {
                    return;
                }
                dq.this.dq(ox, this.f9215d);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    private dq() {
        com.ss.android.socialbase.appdownloader.d.dq(this);
        com.ss.android.socialbase.downloader.dq.dq.dq().dq(this);
    }

    private int d(com.ss.android.downloadad.api.dq.d dVar) {
        int realStatus;
        double dq2 = com.ss.android.socialbase.downloader.mn.dq.dq(dVar.gh()).dq("download_failed_finally_hours", 48.0d);
        if (dq2 <= 0.0d) {
            return -1;
        }
        if (System.currentTimeMillis() - dVar.c() < dq2 * 60.0d * 60.0d * 1000.0d) {
            return 1;
        }
        if (dVar.p.get()) {
            return 0;
        }
        DownloadInfo downloadInfo = Downloader.getInstance(no.getContext()).getDownloadInfo(dVar.gh());
        if (downloadInfo == null || (realStatus = downloadInfo.getRealStatus()) == -3 || realStatus == -4) {
            return -1;
        }
        if (!DownloadStatus.isDownloading(realStatus) && dVar.p.compareAndSet(false, true)) {
            try {
                JSONObject jSONObject = new JSONObject();
                dq(jSONObject, downloadInfo);
                jSONObject.putOpt("download_status", Integer.valueOf(realStatus));
                jSONObject.putOpt("fail_status", Integer.valueOf(dVar.op()));
                jSONObject.putOpt("fail_msg", dVar.ir());
                jSONObject.put("download_failed_times", dVar.wp());
                if (downloadInfo.getTotalBytes() > 0) {
                    jSONObject.put("download_percent", downloadInfo.getCurBytes() / downloadInfo.getTotalBytes());
                }
                jSONObject.put("is_update_download", dVar.yy() ? 1 : 2);
                com.ss.android.downloadlib.p.dq.dq().dq(dVar.o(), "download_failed_finally", jSONObject, dVar);
                com.ss.android.downloadlib.addownload.d.kk.dq().dq(dVar);
                return 0;
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return 1;
    }

    private JSONObject d(DownloadInfo downloadInfo, com.ss.android.socialbase.appdownloader.dq dqVar) {
        com.ss.android.downloadad.api.dq.d dq2 = com.ss.android.downloadlib.addownload.d.iw.dq().dq(downloadInfo);
        if (dq2 == null) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        dqVar.dq(jSONObject);
        try {
            jSONObject.put("download_id", downloadInfo.getId());
            jSONObject.put(abn.EXTRA_UA_APP_NAME, downloadInfo.getName());
        } catch (Throwable th) {
            th.printStackTrace();
        }
        com.ss.android.downloadlib.mn.iw.dq(jSONObject, downloadInfo.getId());
        com.ss.android.downloadlib.p.dq.dq().dq("embeded_ad", "ah_result", jSONObject, dq2);
        return jSONObject;
    }

    public static JSONObject d(JSONObject jSONObject, DownloadInfo downloadInfo) {
        if (jSONObject != null && downloadInfo != null && com.ss.android.socialbase.downloader.mn.dq.dq(downloadInfo.getId()).dq("download_event_opt", 1) != 0) {
            try {
                long d2 = mp.d(0L);
                double d3 = d2;
                jSONObject.put("available_space", d3 / 1048576.0d);
                long totalBytes = downloadInfo.getTotalBytes();
                double d4 = totalBytes;
                jSONObject.put("apk_size", d4 / 1048576.0d);
                if (d2 > 0 && totalBytes > 0) {
                    jSONObject.put("available_space_ratio", d3 / d4);
                    return jSONObject;
                }
            } catch (Throwable th) {
                th.printStackTrace();
                return jSONObject;
            }
        }
        return jSONObject;
    }

    private int dq(com.ss.android.downloadad.api.dq.d dVar, DownloadInfo downloadInfo, String str, JSONObject jSONObject) {
        int d2 = com.ss.android.socialbase.appdownloader.ox.d(no.getContext(), downloadInfo);
        int d3 = mp.d(no.getContext(), str);
        if (d2 > 0 && d3 > 0 && d2 != d3) {
            return d3 > d2 ? 3011 : 3010;
        }
        if (com.ss.android.socialbase.downloader.mn.dq.dq(dVar.gh()).dq("install_finish_check_ttmd5", 1) != 1) {
            return 3001;
        }
        String string = no.getContext().getSharedPreferences("sp_ttdownloader_md5", 0).getString(String.valueOf(dVar.d()), null);
        if (TextUtils.isEmpty(string) && downloadInfo != null) {
            string = com.ss.android.downloadlib.mn.dq.dq(downloadInfo.getTargetFilePath());
        }
        int dq2 = com.ss.android.downloadlib.mn.dq.dq(string, com.ss.android.downloadlib.mn.dq.d(str));
        try {
            jSONObject.put("ttmd5_status", dq2);
        } catch (Throwable unused) {
        }
        if (dq2 == 0) {
            return 3000;
        }
        return dq2 == 1 ? 3002 : 3001;
    }

    public static dq dq() {
        if (p == null) {
            synchronized (dq.class) {
                try {
                    if (p == null) {
                        p = new dq();
                    }
                } finally {
                }
            }
        }
        return p;
    }

    private static DownloadInfo dq(List<DownloadInfo> list, String str) {
        if (list != null && !list.isEmpty() && !TextUtils.isEmpty(str)) {
            for (DownloadInfo downloadInfo : list) {
                if (downloadInfo != null) {
                    if (!str.equals(downloadInfo.getPackageName())) {
                        if (mp.dq(no.getContext(), downloadInfo.getTargetFilePath(), str)) {
                        }
                    }
                    return downloadInfo;
                }
            }
        }
        return null;
    }

    private JSONObject dq(com.ss.android.downloadad.api.dq.d dVar, String str, int i) {
        com.ss.android.socialbase.appdownloader.dq dq2;
        JSONObject jSONObject = new JSONObject();
        try {
            DownloadInfo downloadInfo = Downloader.getInstance(no.getContext()).getDownloadInfo(dVar.gh());
            jSONObject.putOpt("scene", Integer.valueOf(i));
            com.ss.android.downloadlib.mn.iw.dq(jSONObject, dVar.gh());
            com.ss.android.downloadlib.mn.iw.dq(dVar, jSONObject);
            jSONObject.put("is_update_download", dVar.yy() ? 1 : 2);
            jSONObject.put("install_after_back_app", dVar.dc() ? 1 : 2);
            jSONObject.putOpt("clean_space_install_params", dVar.gx() ? "1" : "2");
            if (downloadInfo != null) {
                dq(jSONObject, downloadInfo);
                try {
                    jSONObject.put("uninstall_resume_count", downloadInfo.getUninstallResumeCount());
                    if (dVar.bl() > 0) {
                        long currentTimeMillis = System.currentTimeMillis() - dVar.bl();
                        jSONObject.put("install_time", currentTimeMillis);
                        if (currentTimeMillis > com.ss.android.socialbase.downloader.mn.dq.dq(downloadInfo.getId()).dq("check_install_finish_expired_duration", AdBaseConstants.DEFAULT_DELAY_TIMESTAMP)) {
                            jSONObject.put("install_expired", 1);
                        } else {
                            jSONObject.put("install_expired", 0);
                        }
                    }
                } catch (Throwable unused) {
                }
                String dq3 = com.ss.android.socialbase.downloader.kk.iw.dq(downloadInfo.getTempCacheData().get("ah_attempt"), (String) null);
                if (!TextUtils.isEmpty(dq3) && (dq2 = com.ss.android.socialbase.appdownloader.dq.dq(dq3)) != null) {
                    dq2.dq(jSONObject);
                }
            }
            int dq4 = dq(dVar, downloadInfo, str, jSONObject);
            jSONObject.put("fail_status", dq4);
            if (dq4 == 3000) {
                jSONObject.put("hijack", 2);
            } else if (dq4 == 3001) {
                jSONObject.put("hijack", 0);
            } else {
                jSONObject.put("hijack", 1);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return jSONObject;
    }

    public static JSONObject dq(JSONObject jSONObject, DownloadInfo downloadInfo) {
        if (jSONObject != null && downloadInfo != null) {
            int i = 1;
            if (com.ss.android.socialbase.downloader.mn.dq.dq(downloadInfo.getId()).dq("download_event_opt", 1) != 0) {
                try {
                    jSONObject.put("download_id", downloadInfo.getId());
                    jSONObject.put(abn.EXTRA_UA_APP_NAME, downloadInfo.getName());
                    jSONObject.put("cur_bytes", downloadInfo.getCurBytes());
                    jSONObject.put("total_bytes", downloadInfo.getTotalBytes());
                    jSONObject.put("network_quality", downloadInfo.getNetworkQuality());
                    jSONObject.put("current_network_quality", com.ss.android.socialbase.downloader.network.no.dq().d().name());
                    jSONObject.put("only_wifi", downloadInfo.isOnlyWifi() ? 1 : 0);
                    jSONObject.put("need_https_degrade", downloadInfo.isNeedHttpsToHttpRetry() ? 1 : 0);
                    jSONObject.put("https_degrade_retry_used", downloadInfo.isHttpsToHttpRetryUsed() ? 1 : 0);
                    jSONObject.put("chunk_count", downloadInfo.getChunkCount());
                    jSONObject.put("retry_count", downloadInfo.getRetryCount());
                    jSONObject.put("cur_retry_time", downloadInfo.getCurRetryTime());
                    jSONObject.put("need_retry_delay", downloadInfo.isNeedRetryDelay() ? 1 : 0);
                    jSONObject.put("backup_url_used", downloadInfo.isBackUpUrlUsed() ? 1 : 0);
                    jSONObject.put("head_connection_error_msg", downloadInfo.getHeadConnectionException() != null ? downloadInfo.getHeadConnectionException() : "");
                    jSONObject.put("need_independent_process", downloadInfo.isNeedIndependentProcess() ? 1 : 0);
                    jSONObject.put("total_retry_count", downloadInfo.getTotalRetryCount());
                    jSONObject.put("cur_retry_time_in_total", downloadInfo.getCurRetryTimeInTotal());
                    jSONObject.put("real_download_time", downloadInfo.getRealDownloadTime());
                    jSONObject.put("first_speed_time", downloadInfo.getFirstSpeedTime());
                    jSONObject.put("all_connect_time", downloadInfo.getAllConnectTime());
                    jSONObject.put("download_prepare_time", downloadInfo.getDownloadPrepareTime());
                    jSONObject.put("download_time", downloadInfo.getRealDownloadTime() + downloadInfo.getAllConnectTime() + downloadInfo.getDownloadPrepareTime());
                    jSONObject.put("chunk_downgrade_retry_used", downloadInfo.isChunkDowngradeRetryUsed() ? 1 : 0);
                    jSONObject.put("need_chunk_downgrade_retry", downloadInfo.isNeedChunkDowngradeRetry() ? 1 : 0);
                    jSONObject.put("failed_resume_count", downloadInfo.getFailedResumeCount());
                    jSONObject.put("preconnect_level", downloadInfo.getPreconnectLevel());
                    jSONObject.put(TTDownloadField.TT_MD5, downloadInfo.getMd5());
                    jSONObject.put("expect_file_length", downloadInfo.getExpectFileLength());
                    jSONObject.put("retry_schedule_count", downloadInfo.getRetryScheduleCount());
                    jSONObject.put("rw_concurrent", downloadInfo.isRwConcurrent() ? 1 : 0);
                    double curBytes = downloadInfo.getCurBytes() / 1048576.0d;
                    double realDownloadTime = downloadInfo.getRealDownloadTime() / 1000.0d;
                    if (curBytes > 0.0d && realDownloadTime > 0.0d) {
                        double d2 = curBytes / realDownloadTime;
                        try {
                            jSONObject.put("download_speed", d2);
                        } catch (Exception unused) {
                        }
                        com.ss.android.socialbase.downloader.ox.dq.d(dq, "download speed : " + d2 + "MB/s");
                    }
                    try {
                        jSONObject.put("is_download_service_foreground", Downloader.getInstance(no.getContext()).isDownloadServiceForeground(downloadInfo.getId()) ? 1 : 0);
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                    if (downloadInfo.getBackUpUrls() != null) {
                        jSONObject.put("backup_url_count", downloadInfo.getBackUpUrls().size());
                        jSONObject.put("cur_backup_url_index", downloadInfo.getCurBackUpUrlIndex());
                    }
                    jSONObject.put("clear_space_restart_times", com.ss.android.downloadlib.addownload.ox.p.dq().d(downloadInfo.getUrl()));
                    jSONObject.put("mime_type", downloadInfo.getMimeType());
                    if (!com.ss.android.socialbase.downloader.kk.iw.ox(no.getContext())) {
                        i = 2;
                    }
                    jSONObject.put("network_available", i);
                    jSONObject.put("status_code", downloadInfo.getHttpStatusCode());
                    d(jSONObject, downloadInfo);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
        return jSONObject;
    }

    private static void dq(com.ss.android.downloadad.api.dq.d dVar) {
        if (dVar == null) {
            return;
        }
        String l = TextUtils.isEmpty(dVar.l()) ? "" : dVar.l();
        DownloadInfo downloadInfo = Downloader.getInstance(no.getContext()).getDownloadInfo(dVar.gh());
        dVar.ig("");
        com.ss.android.downloadlib.addownload.d.kk.dq().dq(dVar);
        JSONObject dq2 = dq(new JSONObject(), downloadInfo);
        try {
            dq2.putOpt("finish_reason", l);
            dq2.putOpt("finish_from_reserve_wifi", Integer.valueOf(downloadInfo.isDownloadFromReserveWifi() ? 1 : 0));
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        com.ss.android.downloadad.api.dq.d dq3 = com.ss.android.downloadlib.addownload.d.iw.dq().dq(downloadInfo);
        com.ss.android.downloadlib.mn.iw.dq(dq2, downloadInfo.getId());
        try {
            dq2.put("download_failed_times", dq3.wp());
            dq2.put("can_show_notification", com.ss.android.socialbase.appdownloader.s.p.dq() ? 1 : 2);
            if (downloadInfo.getExpectFileLength() > 0 && downloadInfo.getTotalBytes() > 0) {
                dq2.put("file_length_gap", downloadInfo.getExpectFileLength() - downloadInfo.getTotalBytes());
            }
            dq2.put("ttmd5_status", downloadInfo.getTTMd5CheckStatus());
            dq2.put("has_send_download_failed_finally", dq3.p.get() ? 1 : 2);
            dq2.put("is_update_download", dq3.yy() ? 1 : 2);
            com.ss.android.downloadlib.mn.iw.dq(dq3, dq2);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        com.ss.android.downloadlib.p.dq.dq().d("download_finish", dq2, dVar);
    }

    public static synchronized void dq(DownloadInfo downloadInfo, com.ss.android.downloadad.api.dq.d dVar) {
        synchronized (dq.class) {
            if (downloadInfo == null) {
                com.ss.android.downloadlib.s.ox.dq().dq("onDownloadFinish info null");
                return;
            }
            if (dVar == null) {
                com.ss.android.downloadlib.s.ox.dq().dq("onDownloadFinish nativeModel null");
                return;
            }
            if (dVar.u() != 1) {
                return;
            }
            com.ss.android.downloadlib.ox.ia.dq().p(dVar);
            String ox = ox(downloadInfo, dVar);
            com.ss.android.downloadlib.addownload.d.iw.dq().d(downloadInfo.getUrl(), ox);
            Map<Long, com.ss.android.downloadad.api.dq.d> dq2 = com.ss.android.downloadlib.addownload.d.iw.dq().dq(downloadInfo.getUrl(), ox);
            dVar.iw(System.currentTimeMillis());
            dVar.s(2);
            dVar.d(ox);
            dq2.put(Long.valueOf(dVar.d()), dVar);
            com.ss.android.downloadlib.addownload.d.kk.dq().dq(dq2.values());
            dq(dVar);
            ia.dq().dq(downloadInfo, ox);
            if ("application/vnd.android.package-archive".equals(downloadInfo.getMimeType())) {
                if (com.ss.android.downloadlib.mn.s.dq((com.ss.android.downloadad.api.dq.dq) dVar).dq("enable_app_install_receiver", 1) != 1 && no.kk().optInt("enable_app_install_receiver", 1) != 1) {
                    ig.dq().dq(dVar);
                }
                dq().d(downloadInfo, dVar);
                if (dVar.j()) {
                    com.ss.android.downloadlib.addownload.dq.dq.dq().dq(downloadInfo.getId(), dVar.d(), dVar.ig(), ox, downloadInfo.getTitle(), dVar.p(), downloadInfo.getTargetFilePath());
                }
                dVar.d();
                dVar.p();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(ConcurrentHashMap<Long, com.ss.android.downloadad.api.dq.d> concurrentHashMap, int i) {
        ArrayList arrayList = new ArrayList();
        long currentTimeMillis = System.currentTimeMillis();
        for (com.ss.android.downloadad.api.dq.d dVar : concurrentHashMap.values()) {
            if (dVar.ox.get()) {
                if (currentTimeMillis - dVar.c() >= com.ss.android.socialbase.downloader.mn.dq.dq(dVar.gh()).dq("start_event_expire_hours", 168) * 3600000) {
                    arrayList.add(Long.valueOf(dVar.d()));
                }
            } else if (dVar.u() == 1) {
                if (d(dVar) <= 0 && currentTimeMillis - dVar.c() >= com.ss.android.socialbase.downloader.mn.dq.dq(dVar.gh()).dq("start_event_expire_hours", 168) * 3600000) {
                    arrayList.add(Long.valueOf(dVar.d()));
                }
            } else if (dVar.u() != 2) {
                arrayList.add(Long.valueOf(dVar.d()));
            } else if (!dVar.vw()) {
                if (mp.d(dVar)) {
                    if (dVar.wn() == 4) {
                        i = dVar.wn();
                    }
                    dVar.o(false);
                    com.ss.android.downloadlib.p.dq.dq().dq(dq(dVar, dVar.s(), i), dVar);
                    arrayList.add(Long.valueOf(dVar.d()));
                    com.ss.android.downloadlib.addownload.ox.p.dq(dVar);
                } else if (dVar.vw() && dVar.wn() == 4 && i == 1 && !mp.d(dVar)) {
                    com.ss.android.downloadlib.mn.ig.dq().dq(dq, "trySendAndRefreshAdEvent", "命中兜底逻辑,尝试对广播监听执行冷启兜底逻辑");
                    kk.dq().dq(dVar);
                } else if (currentTimeMillis - dVar.c() >= com.ss.android.socialbase.downloader.mn.dq.dq(dVar.gh()).dq("finish_event_expire_hours", 168) * 3600000) {
                    arrayList.add(Long.valueOf(dVar.d()));
                } else if (TextUtils.isEmpty(dVar.s())) {
                    arrayList.add(Long.valueOf(dVar.d()));
                }
            }
        }
        com.ss.android.downloadlib.addownload.d.iw.dq().dq(arrayList);
    }

    public static String ox(DownloadInfo downloadInfo, com.ss.android.downloadad.api.dq.d dVar) {
        File file = new File(downloadInfo.getSavePath(), downloadInfo.getName());
        String str = null;
        if (file.exists()) {
            try {
                PackageInfo packageArchiveInfo = no.getContext().getPackageManager().getPackageArchiveInfo(file.getAbsolutePath(), com.ss.android.socialbase.appdownloader.ox.dq());
                if (packageArchiveInfo != null) {
                    str = packageArchiveInfo.packageName;
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        if (TextUtils.isEmpty(str) || str.equals(downloadInfo.getPackageName())) {
            return downloadInfo.getPackageName();
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("real_package_name", str);
            jSONObject.put("input_package_name", downloadInfo.getPackageName());
        } catch (JSONException e3) {
            e3.printStackTrace();
        }
        com.ss.android.downloadlib.p.dq.dq().dq("embeded_ad", "package_name_error", jSONObject, dVar);
        return str;
    }

    @Override // com.ss.android.socialbase.downloader.dq.dq.InterfaceC0248dq
    public void d() {
        com.ss.android.socialbase.downloader.ox.dq.d(dq, "onAppForeground()");
        p();
        dq(5);
    }

    public void d(DownloadInfo downloadInfo, final com.ss.android.downloadad.api.dq.d dVar) {
        if (downloadInfo == null || dVar == null || com.ss.android.socialbase.downloader.mn.dq.dq(downloadInfo.getId()).dq("install_finish_check_ttmd5", 1) == 0) {
            return;
        }
        final String targetFilePath = downloadInfo.getTargetFilePath();
        if (TextUtils.isEmpty(targetFilePath)) {
            return;
        }
        s.dq().d(new Runnable() { // from class: com.ss.android.downloadlib.dq.3
            @Override // java.lang.Runnable
            public void run() {
                String dq2 = com.ss.android.downloadlib.mn.dq.dq(targetFilePath);
                if (TextUtils.isEmpty(dq2)) {
                    return;
                }
                no.getContext().getSharedPreferences("sp_ttdownloader_md5", 0).edit().putString(String.valueOf(dVar.d()), dq2).apply();
            }
        });
    }

    @Override // com.ss.android.downloadad.api.dq
    public void dq(int i) {
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this.f9209d < 120000) {
            return;
        }
        s.dq().dq(new RunnableC0217dq(i), this.f9209d > 0 ? 2000L : 8000L);
        this.f9209d = currentTimeMillis;
    }

    public void dq(long j) {
        p.dq dq2;
        int i;
        try {
            com.ss.android.downloadad.api.dq.d p2 = com.ss.android.downloadlib.addownload.d.iw.dq().p(j);
            if (p2 != null && !mp.d(p2) && !p2.ox.get()) {
                Pair<p.dq, Integer> d2 = com.ss.android.downloadlib.addownload.d.p.dq().d(p2);
                if (d2 != null) {
                    dq2 = (p.dq) d2.first;
                    i = ((Integer) d2.second).intValue();
                } else {
                    dq2 = com.ss.android.downloadlib.addownload.d.p.dq().dq(p2);
                    i = -1;
                }
                if (dq2 == null) {
                    return;
                }
                com.ss.android.downloadlib.addownload.d.p.dq().d(dq2.dq);
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("installed_app_name", dq2.p);
                jSONObject.put("installed_pkg_name", dq2.dq);
                if (i == -1) {
                    com.ss.android.downloadlib.p.dq.dq().d("install_finish_may_hijack", jSONObject, p2);
                    return;
                }
                jSONObject.put("error_code", i);
                com.ss.android.downloadlib.mn.iw.dq(jSONObject, p2.gh());
                com.ss.android.downloadlib.p.dq.dq().d("install_finish_hijack", jSONObject, p2);
            }
        } catch (Throwable th) {
            com.ss.android.downloadlib.s.ox.dq().dq(th, "trySendInstallFinishHijack");
        }
    }

    public void dq(final long j, int i) {
        long dq2 = com.ss.android.socialbase.downloader.mn.dq.dq(i).dq("check_install_finish_hijack_delay_time", 900000L);
        if (dq2 < 0) {
            return;
        }
        s.dq().dq(new Runnable() { // from class: com.ss.android.downloadlib.dq.2
            @Override // java.lang.Runnable
            public void run() {
                dq.dq().dq(j);
            }
        }, Math.max(dq2, 300000L));
    }

    public void dq(DownloadInfo downloadInfo, long j, long j2, long j3, long j4, long j5, boolean z) {
        com.ss.android.downloadad.api.dq.d dq2 = com.ss.android.downloadlib.addownload.d.iw.dq().dq(downloadInfo);
        if (dq2 == null) {
            com.ss.android.downloadlib.s.ox.dq().dq("trySendClearSpaceEvent nativeModel null");
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.putOpt("space_before", Double.valueOf(j / 1048576.0d));
            jSONObject.putOpt("space_cleaned", Double.valueOf((j2 - j) / 1048576.0d));
            jSONObject.putOpt("clean_up_time_cost", Long.valueOf(j4));
            jSONObject.putOpt("is_download_restarted", Integer.valueOf(z ? 1 : 0));
            jSONObject.putOpt("byte_required", Long.valueOf(j3));
            jSONObject.putOpt("byte_required_after", Double.valueOf((j3 - j2) / 1048576.0d));
            jSONObject.putOpt("clear_sleep_time", Long.valueOf(j5));
            com.ss.android.downloadlib.mn.iw.ox(downloadInfo, jSONObject);
            com.ss.android.downloadlib.p.dq.dq().dq("cleanup", jSONObject, dq2);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void dq(DownloadInfo downloadInfo, com.ss.android.downloadad.api.dq.d dVar, int i) {
        long max;
        if (downloadInfo == null || dVar == null) {
            return;
        }
        p();
        long currentTimeMillis = System.currentTimeMillis();
        dVar.d(currentTimeMillis);
        dVar.mn(mp.dq(Environment.getDataDirectory(), -1L));
        if (i != 2000) {
            max = 2000;
        } else {
            long dq2 = com.ss.android.socialbase.downloader.mn.dq.dq(downloadInfo.getId()).dq("check_install_failed_delay_time", 120000L);
            if (dq2 < 0) {
                return;
            } else {
                max = Math.max(dq2, 30000L);
            }
        }
        long j = max;
        d dVar2 = new d(dVar.d(), downloadInfo.getId(), currentTimeMillis, i);
        s.dq().dq(dVar2, j);
        this.ox = dVar2;
        com.ss.android.downloadlib.addownload.d.kk.dq().dq(dVar);
    }

    @Override // com.ss.android.socialbase.appdownloader.d.ox
    public void dq(DownloadInfo downloadInfo, com.ss.android.socialbase.appdownloader.dq dqVar) {
        JSONObject d2;
        if (downloadInfo == null || dqVar == null) {
            return;
        }
        JSONArray s = com.ss.android.socialbase.downloader.mn.dq.dq(downloadInfo.getId()).s("ah_report_config");
        if (dqVar.f9272d != 0) {
            downloadInfo.getTempCacheData().remove("intent");
        }
        if (s == null || (d2 = d(downloadInfo, dqVar)) == null) {
            return;
        }
        downloadInfo.getTempCacheData().put("ah_ext_json", d2);
    }

    @Override // com.ss.android.socialbase.downloader.depend.ir
    public void dq(final DownloadInfo downloadInfo, String str) {
        if (downloadInfo == null) {
            com.ss.android.downloadlib.s.ox.dq().dq("info is null");
        } else if ((com.ss.android.socialbase.downloader.mn.dq.dq(downloadInfo).d("check_applink_mode") & 2) != 0) {
            final JSONObject jSONObject = (JSONObject) downloadInfo.getTempCacheData().get("ah_ext_json");
            com.ss.android.downloadlib.d.s.dq().d(new com.ss.android.downloadlib.d.p() { // from class: com.ss.android.downloadlib.dq.4
                @Override // com.ss.android.downloadlib.d.p
                public void dq(boolean z) {
                    if (!z) {
                        Intent intent = (Intent) downloadInfo.getTempCacheData().get("intent");
                        if (intent != null) {
                            downloadInfo.getTempCacheData().remove("intent");
                            com.ss.android.socialbase.appdownloader.ox.dq(no.getContext(), intent);
                            mp.dq(jSONObject, LiveConfigKey.BACKUP, (Object) 1);
                        } else {
                            mp.dq(jSONObject, LiveConfigKey.BACKUP, (Object) 2);
                        }
                    }
                    com.ss.android.downloadad.api.dq.d dq2 = com.ss.android.downloadlib.addownload.d.iw.dq().dq(downloadInfo);
                    if (dq2 != null) {
                        com.ss.android.downloadlib.p.dq.dq().dq(z ? "installer_delay_success" : "installer_delay_failed", jSONObject, dq2);
                    } else {
                        com.ss.android.downloadlib.s.ox.dq().d("ah nativeModel=null");
                    }
                    if (z) {
                        no.i();
                        no.getContext();
                    }
                }
            });
        }
    }

    public synchronized void dq(final String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (mp.d()) {
            throw new RuntimeException("handleAppInstalled in main thread.");
        }
        final com.ss.android.downloadad.api.dq.d dq2 = com.ss.android.downloadlib.addownload.d.iw.dq().dq(str);
        if (dq2 == null) {
            com.ss.android.downloadlib.addownload.d.p.dq().dq(str);
            return;
        }
        com.ss.android.downloadlib.addownload.s dq3 = ia.dq().dq(dq2.dq());
        if (dq3 != null) {
            dq3.iw();
        }
        if (dq2.ox.get()) {
            return;
        }
        if (com.ss.android.socialbase.downloader.mn.dq.dq(dq2.gh()).d("notification_opt_2") == 1) {
            com.ss.android.socialbase.downloader.notification.d.dq().iw(dq2.gh());
        }
        new com.ss.android.downloadlib.d.d().dq(dq2, new com.ss.android.downloadlib.d.mn() { // from class: com.ss.android.downloadlib.dq.1
            @Override // com.ss.android.downloadlib.d.mn
            public void dq(boolean z) {
                com.ss.android.socialbase.downloader.ox.dq.d(dq.dq, "appBackForeground->".concat(String.valueOf(z)));
                if (!z) {
                    if (com.ss.android.downloadlib.d.dq.dq(str, dq2) || dq2.wn() != 4) {
                        return;
                    }
                    com.ss.android.downloadlib.addownload.dq.dq.dq().dq(dq2);
                    return;
                }
                if (!(com.ss.android.downloadlib.d.iw.ox(dq2) ? com.ss.android.downloadlib.d.dq.dq(str, dq2) : false) && com.ss.android.downloadlib.d.iw.p(dq2) && dq2.wn() == 4) {
                    com.ss.android.downloadlib.addownload.dq.dq.dq().dq(dq2);
                }
            }
        }, com.ss.android.downloadlib.mn.s.dq((com.ss.android.downloadad.api.dq.dq) dq2).dq("try_applink_delay_after_installed", 0));
        com.ss.android.downloadlib.ox.ia.dq().iw(dq2);
        dq(str, dq2);
        com.ss.android.downloadlib.addownload.dq.dq.dq().d(str);
        DownloadInfo dq4 = dq((List<DownloadInfo>) Downloader.getInstance(no.getContext()).getSuccessedDownloadInfosWithMimeType("application/vnd.android.package-archive"), str);
        if (dq4 == null) {
            ia.dq().d(null, str);
            return;
        }
        if (com.ss.android.socialbase.downloader.mn.dq.dq(dq4.getId()).d("no_hide_notification") != 1) {
            com.ss.android.socialbase.downloader.notification.d.dq().dq(dq4.getId());
        }
        ia.dq().d(dq4, str);
        com.ss.android.downloadlib.addownload.ox.p.dq(dq4);
    }

    public void dq(String str, com.ss.android.downloadad.api.dq.d dVar) {
        if (dVar != null && mp.d(dVar) && dVar.ox.compareAndSet(false, true)) {
            com.ss.android.downloadlib.p.dq.dq().dq(dVar.o(), "install_finish", dq(dVar, str, dVar.wn() != 4 ? 3 : 4), dVar);
            com.ss.android.downloadlib.addownload.d.kk.dq().dq(dVar);
        }
    }

    @Override // com.ss.android.socialbase.downloader.dq.dq.InterfaceC0248dq
    public void ox() {
        com.ss.android.socialbase.downloader.ox.dq.d(dq, "onAppBackground()");
        dq(6);
    }

    public synchronized void p() {
        d dVar = this.ox;
        if (dVar != null) {
            dVar.d();
            this.ox = null;
        }
    }
}

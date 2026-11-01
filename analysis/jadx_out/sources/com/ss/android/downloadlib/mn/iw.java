package com.ss.android.downloadlib.mn;

import com.ss.android.downloadad.api.constant.AdBaseConstants;
import com.ss.android.socialbase.appdownloader.mn;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class iw {
    public static JSONObject d(JSONObject jSONObject, com.ss.android.downloadad.api.dq.dq dqVar) {
        mp.dq(jSONObject, com.ss.android.socialbase.appdownloader.iw.s.o().replaceAll("\\.", "_") + " versionCode", Integer.valueOf(mp.d(com.ss.android.downloadlib.addownload.no.getContext(), com.ss.android.socialbase.appdownloader.iw.s.o())));
        mp.dq(jSONObject, com.ss.android.socialbase.appdownloader.iw.s.o().replaceAll("\\.", "_") + " versionName", mp.ox(com.ss.android.downloadlib.addownload.no.getContext(), com.ss.android.socialbase.appdownloader.iw.s.o()));
        return jSONObject;
    }

    public static void d(DownloadInfo downloadInfo, JSONObject jSONObject) {
        com.ss.android.downloadad.api.dq.d dq;
        if (jSONObject == null || (dq = com.ss.android.downloadlib.addownload.d.iw.dq().dq(downloadInfo)) == null) {
            return;
        }
        try {
            ox(downloadInfo, jSONObject);
            jSONObject.putOpt("time_after_click", Long.valueOf(System.currentTimeMillis() - dq.uh()));
            jSONObject.putOpt("click_download_size", Long.valueOf(dq.xz()));
            jSONObject.putOpt("download_length", Long.valueOf(downloadInfo.getCurBytes()));
            jSONObject.putOpt("download_apk_size", Long.valueOf(downloadInfo.getTotalBytes()));
            dq.h();
            com.ss.android.downloadlib.addownload.d.kk.dq().dq(dq);
            jSONObject.put("click_pause_times", dq.kx());
            long totalBytes = downloadInfo.getTotalBytes();
            long curBytes = downloadInfo.getCurBytes();
            jSONObject.put("download_percent", (curBytes < 0 || totalBytes <= 0) ? 0.0d : curBytes / totalBytes);
            jSONObject.put("download_status", downloadInfo.getRealStatus());
            long currentTimeMillis = System.currentTimeMillis();
            long c2 = dq.c();
            if (c2 > 0) {
                jSONObject.put("time_from_start_download", currentTimeMillis - c2);
            }
            long ji = dq.ji();
            if (ji > 0) {
                jSONObject.put("time_from_download_resume", currentTimeMillis - ji);
            }
            jSONObject.putOpt("fail_status", Integer.valueOf(dq.op()));
            jSONObject.putOpt("fail_msg", dq.ir());
            jSONObject.put("download_failed_times", dq.wp());
            jSONObject.put("can_show_notification", com.ss.android.socialbase.appdownloader.s.p.dq() ? 1 : 2);
            jSONObject.put("first_speed_time", downloadInfo.getFirstSpeedTime());
            jSONObject.put("all_connect_time", downloadInfo.getAllConnectTime());
            jSONObject.put("download_prepare_time", downloadInfo.getDownloadPrepareTime());
            jSONObject.put("download_time", downloadInfo.getRealDownloadTime() + downloadInfo.getAllConnectTime() + downloadInfo.getDownloadPrepareTime());
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static JSONObject dq(JSONObject jSONObject, com.ss.android.downloadad.api.dq.dq dqVar) {
        mp.dq(jSONObject, AdBaseConstants.MARKET_OPEN_INTENT_OPEN_URL, mp.dq(dqVar.iw(), "open_url_not_exist"));
        return jSONObject;
    }

    public static void dq(com.ss.android.downloadad.api.dq.d dVar, JSONObject jSONObject) {
        if (jSONObject == null || dVar == null) {
            return;
        }
        try {
            jSONObject.put("is_patch_apply_handled", dVar.ds() ? 1 : 0);
            jSONObject.put("origin_mime_type", dVar.v());
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void dq(DownloadInfo downloadInfo, JSONObject jSONObject) {
        try {
            ox(downloadInfo, jSONObject);
            com.ss.android.downloadad.api.dq.d dq = com.ss.android.downloadlib.addownload.d.iw.dq().dq(downloadInfo);
            if (dq == null) {
                return;
            }
            jSONObject.put("is_update_download", dq.yy() ? 1 : 2);
            dq(dq, jSONObject);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void dq(JSONObject jSONObject) {
        try {
            jSONObject.putOpt("harmony_api_version", com.ss.android.socialbase.appdownloader.iw.p.dq());
            jSONObject.putOpt("harmony_release_type", com.ss.android.socialbase.appdownloader.iw.p.ox());
            jSONObject.putOpt("harmony_build_version", com.ss.android.socialbase.appdownloader.iw.p.p());
            jSONObject.putOpt("pure_mode", Integer.valueOf(com.ss.android.socialbase.appdownloader.iw.p.dq(com.ss.android.downloadlib.addownload.no.getContext()) ? 1 : 2));
            jSONObject.putOpt("pure_mode_enable", Integer.valueOf(com.ss.android.socialbase.appdownloader.iw.p.s() ? 1 : 2));
            jSONObject.putOpt("harmony_version", com.ss.android.socialbase.appdownloader.iw.p.d());
            jSONObject.putOpt("pure_enhanced_mode", Integer.valueOf(com.ss.android.socialbase.appdownloader.iw.p.d(com.ss.android.downloadlib.addownload.no.getContext()) ? 1 : 2));
            jSONObject.putOpt("pure_enhanced_mode_enable", Integer.valueOf(com.ss.android.socialbase.appdownloader.iw.p.iw() ? 1 : 2));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static void dq(JSONObject jSONObject, int i) {
        if (jSONObject == null) {
            return;
        }
        JSONArray s = com.ss.android.socialbase.downloader.mn.dq.dq(i).s("ah_report_config");
        if (s != null) {
            for (int i2 = 0; i2 < s.length(); i2++) {
                try {
                    String string = s.getString(i2);
                    mn.dq dq = com.ss.android.socialbase.appdownloader.iw.dq.dq(string);
                    if (dq != null) {
                        jSONObject.put(string.replaceAll("\\.", "_"), dq.iw() + "_" + dq.mn());
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
        try {
            jSONObject.put("is_unknown_source_enabled", com.ss.android.socialbase.appdownloader.d.dq(com.ss.android.socialbase.downloader.downloader.ox.ob()) ? 1 : 2);
        } catch (Throwable unused) {
        }
    }

    public static void ox(DownloadInfo downloadInfo, JSONObject jSONObject) {
        if (downloadInfo != null) {
            try {
                jSONObject.putOpt("total_bytes", Long.valueOf(downloadInfo.getTotalBytes()));
                jSONObject.putOpt("cur_bytes", Long.valueOf(downloadInfo.getCurBytes()));
                jSONObject.putOpt("chunk_count", Integer.valueOf(downloadInfo.getChunkCount()));
                jSONObject.putOpt("app_name", downloadInfo.getTitle());
                jSONObject.putOpt("network_quality", downloadInfo.getNetworkQuality());
                jSONObject.putOpt("save_path", downloadInfo.getSavePath());
                jSONObject.putOpt("file_name", downloadInfo.getName());
                jSONObject.putOpt("download_status", Integer.valueOf(downloadInfo.getRealStatus()));
                com.ss.android.downloadad.api.dq.d dq = com.ss.android.downloadlib.addownload.d.iw.dq().dq(downloadInfo.getId());
                if (dq != null) {
                    jSONObject.putOpt("click_download_time", Long.valueOf(dq.uh()));
                    jSONObject.putOpt("click_download_size", Long.valueOf(dq.xz()));
                }
            } catch (Exception e2) {
                e2.printStackTrace();
                return;
            }
        }
        jSONObject.putOpt("permission_notification", Integer.valueOf(com.ss.android.socialbase.appdownloader.s.p.dq() ? 1 : 2));
        jSONObject.putOpt("network_available", Integer.valueOf(com.ss.android.socialbase.downloader.kk.iw.ox(com.ss.android.downloadlib.addownload.no.getContext()) ? 1 : 2));
        jSONObject.putOpt("network_is_wifi", Integer.valueOf(com.ss.android.socialbase.downloader.kk.iw.d(com.ss.android.downloadlib.addownload.no.getContext()) ? 1 : 2));
    }
}

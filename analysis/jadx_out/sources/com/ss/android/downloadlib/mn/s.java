package com.ss.android.downloadlib.mn;

import com.bykv.vk.component.ttvideo.ILivePlayer;
import com.ss.android.download.api.download.DownloadModel;
import com.ss.android.downloadad.api.constant.AdBaseConstants;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class s {
    public static int d(com.ss.android.downloadad.api.dq.d dVar) {
        return dq((com.ss.android.downloadad.api.dq.dq) dVar).dq("ttdownloader_app_install_detect_interval_ms", AdBaseConstants.DEFAULT_INSTALL_FINISH_TRY_INTERVAL_MS);
    }

    public static long d(int i) {
        return com.ss.android.socialbase.downloader.mn.dq.dq(i).dq("storage_min_size", 0L);
    }

    public static com.ss.android.socialbase.downloader.mn.dq d(DownloadModel downloadModel) {
        return com.ss.android.socialbase.downloader.mn.dq.dq(dq(downloadModel));
    }

    public static boolean d() {
        return com.ss.android.socialbase.downloader.mn.dq.ox().dq("fix_notification_anr");
    }

    public static boolean d(com.ss.android.downloadad.api.dq.dq dqVar) {
        return dq(dqVar).dq("pause_reserve_on_wifi", 0) == 1 && dqVar.fw();
    }

    public static boolean d(com.ss.android.socialbase.downloader.mn.dq dqVar) {
        return dqVar != null && dqVar.dq("kllk_need_rename_apk", 0) == 1;
    }

    public static double dq(int i) {
        return com.ss.android.socialbase.downloader.mn.dq.dq(i).dq("clean_min_install_size", 0.0d);
    }

    public static int dq(com.ss.android.downloadad.api.dq.d dVar) {
        return dq((com.ss.android.downloadad.api.dq.dq) dVar).dq("ttdownloader_app_install_detect_count", 15);
    }

    public static int dq(com.ss.android.socialbase.downloader.mn.dq dqVar) {
        return dqVar.dq("external_storage_permission_path_type", 0);
    }

    public static com.ss.android.socialbase.downloader.mn.dq dq(com.ss.android.downloadad.api.dq.dq dqVar) {
        return dqVar == null ? com.ss.android.socialbase.downloader.mn.dq.ox() : dqVar.gh() != 0 ? com.ss.android.socialbase.downloader.mn.dq.dq(dqVar.gh()) : dqVar.ox() ? com.ss.android.socialbase.downloader.mn.dq.dq(dq()) : dqVar.cd() != null ? com.ss.android.socialbase.downloader.mn.dq.dq(dqVar.cd()) : com.ss.android.socialbase.downloader.mn.dq.ox();
    }

    public static JSONObject dq() {
        return com.ss.android.downloadlib.addownload.no.kk().optJSONObject("ad");
    }

    public static JSONObject dq(DownloadModel downloadModel) {
        if (downloadModel == null) {
            return null;
        }
        return downloadModel.isAd() ? mp.dq(com.ss.android.downloadlib.addownload.no.kk(), downloadModel.getDownloadSettings()) : downloadModel.getDownloadSettings();
    }

    public static int iw(com.ss.android.downloadad.api.dq.d dVar) {
        return dq((com.ss.android.downloadad.api.dq.dq) dVar).dq("app_install_keep_receiver_time_s", 60);
    }

    public static boolean iw(int i) {
        return com.ss.android.socialbase.downloader.mn.dq.dq(i).dq("clean_space_switch", 0) == 1;
    }

    public static long mn(com.ss.android.downloadad.api.dq.d dVar) {
        return dq((com.ss.android.downloadad.api.dq.dq) dVar).dq("ttdownloader_app_install_detect_sum_timestamp", 600000L);
    }

    public static boolean mn(int i) {
        return com.ss.android.socialbase.downloader.mn.dq.dq(i).dq("clean_app_cache_dir", 0) == 1;
    }

    public static int ox(DownloadModel downloadModel) {
        return dq(d(downloadModel));
    }

    public static long ox(int i) {
        return com.ss.android.socialbase.downloader.mn.dq.dq(i).dq("clean_fetch_apk_head_time_out", 800L);
    }

    public static boolean ox() {
        return com.ss.android.downloadlib.addownload.no.kk().optInt("is_enable_start_install_again") == 1;
    }

    public static boolean ox(com.ss.android.downloadad.api.dq.d dVar) {
        return com.ss.android.downloadlib.addownload.no.kk().optInt("market_install_finish_opt_switch", 0) == 1 || dq((com.ss.android.downloadad.api.dq.dq) dVar).dq("market_install_finish_opt_switch", 0) == 1;
    }

    public static boolean ox(com.ss.android.downloadad.api.dq.dq dqVar) {
        return dq(dqVar).dq("cancel_pause_optimise_wifi_retain_switch", 0) == 1 && dqVar.fw();
    }

    public static long p() {
        long optLong = com.ss.android.downloadlib.addownload.no.kk().optLong("start_install_interval");
        if (optLong == 0) {
            return 300000L;
        }
        return optLong;
    }

    public static boolean p(int i) {
        return com.ss.android.socialbase.downloader.mn.dq.dq(i).dq("clean_fetch_apk_switch", 0L) == 1;
    }

    public static boolean p(com.ss.android.downloadad.api.dq.d dVar) {
        return com.ss.android.downloadlib.addownload.no.kk().optInt("market_install_finish_opt_broadcast", 0) == 1 || dq((com.ss.android.downloadad.api.dq.dq) dVar).dq("market_install_finish_opt_broadcast", 0) == 1;
    }

    public static long s() {
        long optLong = com.ss.android.downloadlib.addownload.no.kk().optLong("next_install_min_interval");
        return optLong == 0 ? ILivePlayer.RETRY_TIME_INTERVAL_DEFAULT : optLong;
    }

    public static boolean s(int i) {
        return com.ss.android.socialbase.downloader.mn.dq.dq(i).dq("clean_space_before_download_switch", 0L) == 1;
    }

    public static boolean s(com.ss.android.downloadad.api.dq.d dVar) {
        return com.ss.android.downloadlib.addownload.no.kk().optInt("market_install_finish_opt_polling_thread", 0) == 1 || dq((com.ss.android.downloadad.api.dq.dq) dVar).dq("market_install_finish_opt_polling_thread", 0) == 1;
    }
}

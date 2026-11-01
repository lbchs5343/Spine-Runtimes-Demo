package com.ss.android.socialbase.downloader.p;

import android.net.Uri;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.ss.android.socialbase.downloader.constants.DownloadStatus;
import com.ss.android.socialbase.downloader.depend.q;
import com.ss.android.socialbase.downloader.depend.wp;
import com.ss.android.socialbase.downloader.downloader.fw;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.exception.mn;
import com.ss.android.socialbase.downloader.kk.iw;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import com.ss.android.socialbase.downloader.model.DownloadTask;
import com.ss.android.socialbase.downloader.network.kk;
import com.ss.android.socialbase.downloader.network.s;
import g.abn;
import java.io.IOException;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class dq {
    public static String dq(String str) {
        try {
            return TextUtils.isDigitsOnly(str) ? String.valueOf(Long.valueOf(str).longValue() % 100) : "";
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    private static JSONObject dq(String str, DownloadInfo downloadInfo, BaseException baseException, int i) {
        String str2;
        Object obj;
        Object obj2;
        int i2;
        String str3;
        String str4;
        String str5;
        JSONObject jSONObject = null;
        try {
            JSONObject jSONObject2 = new JSONObject();
            try {
                fw no = com.ss.android.socialbase.downloader.downloader.ox.no();
                if (no != null) {
                    str2 = no.d();
                    obj = dq(str2);
                    obj2 = no.dq();
                    i2 = no.ox();
                } else {
                    str2 = "";
                    obj = str2;
                    obj2 = obj;
                    i2 = 0;
                }
                Object dq = (baseException == null || !(baseException instanceof mn)) ? "" : ((mn) baseException).dq();
                jSONObject2.put("event_page", str);
                jSONObject2.put(PluginConstants.KEY_APP_ID, obj2);
                jSONObject2.put("device_id", str2);
                jSONObject2.put("device_id_postfix", obj);
                jSONObject2.put("update_version", i2);
                jSONObject2.put("download_status", i);
                if (downloadInfo != null) {
                    jSONObject2.put("setting_tag", com.ss.android.socialbase.downloader.mn.dq.dq(downloadInfo.getId()).ox("setting_tag"));
                    jSONObject2.put("download_id", downloadInfo.getId());
                    jSONObject2.put(abn.EXTRA_UA_APP_NAME, downloadInfo.getName());
                    jSONObject2.put(abn.EXTRA_URL, downloadInfo.getUrl());
                    jSONObject2.put("save_path", downloadInfo.getSavePath());
                    jSONObject2.put("download_time", downloadInfo.getDownloadTime());
                    jSONObject2.put("cur_bytes", downloadInfo.getCurBytes());
                    jSONObject2.put("total_bytes", downloadInfo.getTotalBytes());
                    jSONObject2.put("network_quality", downloadInfo.getNetworkQuality());
                    jSONObject2.put("only_wifi", downloadInfo.isOnlyWifi() ? 1 : 0);
                    jSONObject2.put("need_https_degrade", downloadInfo.isNeedHttpsToHttpRetry() ? 1 : 0);
                    jSONObject2.put("https_degrade_retry_used", downloadInfo.isHttpsToHttpRetryUsed() ? 1 : 0);
                    jSONObject2.put(TTDownloadField.TT_MD5, downloadInfo.getMd5() == null ? "" : downloadInfo.getMd5());
                    jSONObject2.put("chunk_count", downloadInfo.getChunkCount());
                    jSONObject2.put("is_force", downloadInfo.isForce() ? 1 : 0);
                    jSONObject2.put("retry_count", downloadInfo.getRetryCount());
                    jSONObject2.put("cur_retry_time", downloadInfo.getCurRetryTime());
                    jSONObject2.put("need_retry_delay", downloadInfo.isNeedRetryDelay() ? 1 : 0);
                    jSONObject2.put("need_reuse_first_connection", downloadInfo.isNeedReuseFirstConnection() ? 1 : 0);
                    jSONObject2.put("default_http_service_backup", downloadInfo.isNeedDefaultHttpServiceBackUp() ? 1 : 0);
                    jSONObject2.put("retry_delay_status", downloadInfo.getRetryDelayStatus().ordinal());
                    jSONObject2.put("backup_url_used", downloadInfo.isBackUpUrlUsed() ? 1 : 0);
                    jSONObject2.put("download_byte_error_retry_status", downloadInfo.getByteInvalidRetryStatus().ordinal());
                    jSONObject2.put("forbidden_handler_status", downloadInfo.getAsyncHandleStatus().ordinal());
                    jSONObject2.put("need_independent_process", downloadInfo.isNeedIndependentProcess() ? 1 : 0);
                    jSONObject2.put("head_connection_error_msg", downloadInfo.getHeadConnectionException() != null ? downloadInfo.getHeadConnectionException() : "");
                    jSONObject2.put("extra", downloadInfo.getExtra() != null ? downloadInfo.getExtra() : "");
                    jSONObject2.put("add_listener_to_same_task", downloadInfo.isAddListenerToSameTask() ? 1 : 0);
                    jSONObject2.put("backup_url_count", downloadInfo.getBackUpUrls() != null ? downloadInfo.getBackUpUrls().size() : 0);
                    jSONObject2.put("cur_backup_url_index", downloadInfo.getBackUpUrls() != null ? downloadInfo.getCurBackUpUrlIndex() : -1);
                    jSONObject2.put("forbidden_urls", downloadInfo.getForbiddenBackupUrls() != null ? downloadInfo.getForbiddenBackupUrls().toString() : "");
                    jSONObject2.put("task_id", TextUtils.isEmpty(downloadInfo.getTaskId()) ? "" : downloadInfo.getTaskId());
                    try {
                        String url = downloadInfo.getUrl();
                        if (TextUtils.isEmpty(url)) {
                            str3 = "";
                            str4 = str3;
                            str5 = str4;
                        } else {
                            Uri parse = Uri.parse(url);
                            str4 = parse.getHost();
                            str5 = parse.getPath();
                            str3 = parse.getLastPathSegment();
                            if (!TextUtils.isEmpty(str5) && !TextUtils.isEmpty(str3)) {
                                try {
                                    str5 = str5.substring(0, str5.length() - str3.length());
                                } catch (Throwable th) {
                                    th.printStackTrace();
                                }
                            }
                        }
                        jSONObject2.put("url_host", str4);
                        jSONObject2.put("url_path", str5);
                        jSONObject2.put("url_last_path_segment", str3);
                    } catch (Throwable th2) {
                        th2.printStackTrace();
                    }
                }
                jSONObject2.put("error_code", baseException != null ? baseException.getErrorCode() : 0);
                jSONObject2.put("error_msg", baseException != null ? baseException.getErrorMessage() : "");
                jSONObject2.put("request_log", dq);
                return jSONObject2;
            } catch (JSONException e2) {
                e = e2;
                jSONObject = jSONObject2;
                e.printStackTrace();
                return jSONObject;
            }
        } catch (JSONException e3) {
            e = e3;
        }
    }

    private static void dq(int i, JSONObject jSONObject, DownloadInfo downloadInfo) throws JSONException {
        String str;
        if (i == -5) {
            str = "download_uncomplete";
        } else if (i == -4) {
            str = "download_cancel";
        } else if (i != -3) {
            str = i != -2 ? i != 0 ? i != 2 ? i != 6 ? "" : "download_first_start" : "download_start" : "download_create" : "download_pause";
        } else {
            double downloadSpeed = downloadInfo.getDownloadSpeed();
            if (downloadSpeed >= 0.0d) {
                jSONObject.put("download_speed", downloadSpeed);
            }
            str = "download_success";
        }
        jSONObject.put("status", str);
    }

    public static void dq(wp wpVar, DownloadInfo downloadInfo, BaseException baseException, int i) {
        if (wpVar == null) {
            return;
        }
        try {
            String d2 = wpVar.d();
            if (TextUtils.isEmpty(d2)) {
                d2 = "default";
            }
            JSONObject dq = dq(d2, downloadInfo, baseException, i);
            if (dq == null) {
                dq = new JSONObject();
            }
            wpVar.dq(dq);
        } catch (Throwable unused) {
        }
    }

    public static void dq(com.ss.android.socialbase.downloader.mn.dq dqVar, DownloadInfo downloadInfo, String str, kk kkVar, boolean z, boolean z2, BaseException baseException, long j, long j2, boolean z3, long j3, long j4, long j5, JSONObject jSONObject) {
        dq("download_io", dqVar.d("monitor_download_io"), dqVar, downloadInfo, str, null, null, kkVar, z, z2, baseException, j, j2, z3, j3, j4, j5, null);
    }

    public static void dq(com.ss.android.socialbase.downloader.mn.dq dqVar, DownloadInfo downloadInfo, String str, String str2, String str3, boolean z, kk kkVar, BaseException baseException, long j, long j2) {
        dq("segment_io", dqVar.d("monitor_segment_io"), dqVar, downloadInfo, str, str2, str3, kkVar, z, false, baseException, j, j2, false, -1L, -1L, -1L, null);
    }

    public static void dq(DownloadInfo downloadInfo, List<com.ss.android.socialbase.downloader.iw.kk> list) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("segments", com.ss.android.socialbase.downloader.iw.kk.dq(list));
            jSONObject.put("cur_bytes", downloadInfo.getCurBytes());
            jSONObject.put("total_bytes", downloadInfo.getTotalBytes());
            ox t = com.ss.android.socialbase.downloader.downloader.ox.t();
            if (t != null) {
                t.dq(downloadInfo.getId(), "segments_error", jSONObject);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void dq(DownloadTask downloadTask, BaseException baseException, int i) {
        if (downloadTask == null) {
            return;
        }
        try {
            DownloadInfo downloadInfo = downloadTask.getDownloadInfo();
            if (downloadInfo == null) {
                return;
            }
            wp monitorDepend = downloadTask.getMonitorDepend();
            boolean isMonitorStatus = DownloadStatus.isMonitorStatus(i);
            if (!isMonitorStatus && !(isMonitorStatus = dq(downloadInfo.getExtraMonitorStatus(), i)) && monitorDepend != null && (monitorDepend instanceof com.ss.android.socialbase.downloader.depend.ox)) {
                isMonitorStatus = dq(((com.ss.android.socialbase.downloader.depend.ox) monitorDepend).dq(), i);
            }
            if (isMonitorStatus) {
                try {
                    q depend = downloadTask.getDepend();
                    if (depend != null) {
                        depend.dq(downloadInfo, baseException, i);
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
                dq(monitorDepend, downloadInfo, baseException, i);
                dq(com.ss.android.socialbase.downloader.downloader.ox.mn(), downloadInfo, baseException, i);
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(22:8|(4:63|64|65|(14:67|11|(3:44|(1:(2:53|(1:55)(2:56|57)))|50)|14|(2:18|19)|22|23|24|(1:26)|27|28|(1:39)|31|(2:36|37)(1:34)))|10|11|(0)|44|(1:46)|(0)|14|(3:16|18|19)|22|23|24|(0)|27|28|(0)|39|31|(0)|36|37) */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00f6, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0111, code lost:
    
        r0.printStackTrace();
     */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00e4 A[Catch: JSONException -> 0x00f6, all -> 0x0130, TryCatch #1 {JSONException -> 0x00f6, blocks: (B:24:0x00aa, B:26:0x00e4, B:27:0x00f9), top: B:23:0x00aa, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0058 A[Catch: all -> 0x0130, TRY_LEAVE, TryCatch #0 {all -> 0x0130, blocks: (B:65:0x0030, B:67:0x0034, B:14:0x007c, B:16:0x0092, B:22:0x00a5, B:24:0x00aa, B:26:0x00e4, B:27:0x00f9, B:36:0x0122, B:39:0x011a, B:43:0x0111, B:44:0x0046, B:46:0x004c, B:53:0x0058, B:57:0x0065, B:60:0x006a, B:62:0x0076, B:70:0x002d, B:64:0x0027), top: B:8:0x0025, inners: #1, #3, #4 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void dq(com.ss.android.socialbase.downloader.network.mn mnVar, String str, String str2, long j, String str3, int i, IOException iOException, DownloadInfo downloadInfo) {
        com.ss.android.socialbase.downloader.mn.dq dq;
        int dq2;
        String s;
        int httpStatusCode;
        String path;
        String lastPathSegment;
        JSONObject jSONObject;
        if (downloadInfo == null || (dq2 = (dq = com.ss.android.socialbase.downloader.mn.dq.dq(downloadInfo.getId())).dq("monitor_download_connect", 0)) <= 0 || TextUtils.isEmpty(str)) {
            return;
        }
        String str4 = null;
        int i2 = -1;
        try {
            if (mnVar != null) {
                try {
                    i2 = mnVar.d();
                } catch (Throwable th) {
                    th.printStackTrace();
                }
                if (mnVar instanceof com.ss.android.socialbase.downloader.network.dq) {
                    s = ((com.ss.android.socialbase.downloader.network.dq) mnVar).s();
                    String str5 = "";
                    if (i2 >= 200 || i2 >= 400) {
                        if (downloadInfo.getCurRetryTime() != 0 || ((httpStatusCode = downloadInfo.getHttpStatusCode()) >= 200 && httpStatusCode < 400)) {
                            if (iOException != null) {
                                if (iw.ox(com.ss.android.socialbase.downloader.downloader.ox.ob())) {
                                    try {
                                        iw.dq((Throwable) iOException, "");
                                    } catch (BaseException e2) {
                                        i2 = e2.getErrorCode();
                                        str4 = e2.getErrorMessage();
                                        if (e2 instanceof mn) {
                                            str5 = ((mn) e2).dq();
                                        }
                                    }
                                } else {
                                    i2 = 1049;
                                }
                            }
                        }
                        return;
                    }
                    Uri parse = Uri.parse(str);
                    String host = parse.getHost();
                    path = parse.getPath();
                    lastPathSegment = parse.getLastPathSegment();
                    if (!TextUtils.isEmpty(path) && !TextUtils.isEmpty(lastPathSegment)) {
                        try {
                            path = path.substring(0, path.length() - lastPathSegment.length());
                        } catch (Throwable unused) {
                        }
                    }
                    jSONObject = new JSONObject();
                    jSONObject.put("setting_tag", dq.ox("setting_tag"));
                    jSONObject.put("url_host", host);
                    jSONObject.putOpt("host_ip", str2);
                    jSONObject.putOpt("host_real_ip", s);
                    jSONObject.put("url_path", path);
                    jSONObject.put("url_last_path_segment", lastPathSegment);
                    jSONObject.put("net_lib", i);
                    jSONObject.put("connect_type", str3);
                    jSONObject.put("status_code", i2);
                    jSONObject.put("request_log", str5);
                    if (str4 != null) {
                        jSONObject.put("error_msg", iw.dq(str4, dq.dq("exception_msg_length", 500)));
                    }
                    jSONObject.put("connect_time", j);
                    jSONObject.put("pkg_name", downloadInfo.getPackageName());
                    jSONObject.put(abn.EXTRA_UA_APP_NAME, downloadInfo.getTitle());
                    if (dq2 != 1 || dq2 == 3) {
                        com.ss.android.socialbase.downloader.downloader.ox.mn();
                    }
                    if (dq2 != 2 || dq2 == 3) {
                        com.ss.android.socialbase.downloader.downloader.ox.t().dq(downloadInfo.getId(), "download_connect", jSONObject);
                    }
                    return;
                }
            }
            s = null;
            String str52 = "";
            if (i2 >= 200) {
            }
            if (downloadInfo.getCurRetryTime() != 0) {
            }
            if (iOException != null) {
            }
            Uri parse2 = Uri.parse(str);
            String host2 = parse2.getHost();
            path = parse2.getPath();
            lastPathSegment = parse2.getLastPathSegment();
            if (!TextUtils.isEmpty(path)) {
                path = path.substring(0, path.length() - lastPathSegment.length());
            }
            jSONObject = new JSONObject();
            jSONObject.put("setting_tag", dq.ox("setting_tag"));
            jSONObject.put("url_host", host2);
            jSONObject.putOpt("host_ip", str2);
            jSONObject.putOpt("host_real_ip", s);
            jSONObject.put("url_path", path);
            jSONObject.put("url_last_path_segment", lastPathSegment);
            jSONObject.put("net_lib", i);
            jSONObject.put("connect_type", str3);
            jSONObject.put("status_code", i2);
            jSONObject.put("request_log", str52);
            if (str4 != null) {
            }
            jSONObject.put("connect_time", j);
            jSONObject.put("pkg_name", downloadInfo.getPackageName());
            jSONObject.put(abn.EXTRA_UA_APP_NAME, downloadInfo.getTitle());
            if (dq2 != 1) {
            }
            com.ss.android.socialbase.downloader.downloader.ox.mn();
            if (dq2 != 2) {
            }
            com.ss.android.socialbase.downloader.downloader.ox.t().dq(downloadInfo.getId(), "download_connect", jSONObject);
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    public static void dq(d dVar, DownloadInfo downloadInfo, BaseException baseException, int i) {
        if (dVar == null || !downloadInfo.isNeedSDKMonitor() || TextUtils.isEmpty(downloadInfo.getMonitorScene())) {
            return;
        }
        try {
            JSONObject dq = dq(downloadInfo.getMonitorScene(), downloadInfo, baseException, i);
            if (dq == null) {
                dq = new JSONObject();
            }
            if (i == -1) {
                dq.put("status", baseException.getErrorCode());
            } else {
                dq(i, dq, downloadInfo);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v15 */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Type inference failed for: r9v7 */
    private static void dq(String str, int i, com.ss.android.socialbase.downloader.mn.dq dqVar, DownloadInfo downloadInfo, String str2, String str3, String str4, kk kkVar, boolean z, boolean z2, BaseException baseException, long j, long j2, boolean z3, long j3, long j4, long j5, JSONObject jSONObject) {
        String str5;
        String str6;
        int i2;
        int i3;
        if (i <= 0 || j2 <= 0) {
            return;
        }
        try {
            Uri parse = Uri.parse(str2);
            String host = parse.getHost();
            String path = parse.getPath();
            String lastPathSegment = parse.getLastPathSegment();
            int i4 = 0;
            if (!TextUtils.isEmpty(path) && !TextUtils.isEmpty(lastPathSegment)) {
                try {
                    path = path.substring(0, path.length() - lastPathSegment.length());
                } catch (Throwable unused) {
                }
            }
            String str7 = null;
            if (z) {
                i4 = 1;
            } else if (z2) {
                i4 = 2;
            } else if (baseException != null) {
                i4 = !iw.ox(com.ss.android.socialbase.downloader.downloader.ox.ob()) ? 1049 : baseException.getErrorCode();
                str7 = baseException.getErrorMessage();
            }
            JSONObject jSONObject2 = new JSONObject();
            str5 = "";
            if (kkVar != null) {
                i3 = !(kkVar instanceof s) ? 1 : 0;
                String dq = kkVar.dq("X-Cache");
                int contains = !TextUtils.isEmpty(dq) ? dq.toLowerCase().contains("hit") : -1;
                dqVar.dq("monitor_sla", 1);
                str5 = kkVar instanceof com.ss.android.socialbase.downloader.network.dq ? ((com.ss.android.socialbase.downloader.network.dq) kkVar).iw() : "";
                i2 = contains;
                str6 = str7;
            } else {
                str6 = str7;
                i2 = -1;
                i3 = -1;
            }
            double d2 = j / 1048576.0d;
            double d3 = j2;
            double nanos = d3 / TimeUnit.SECONDS.toNanos(1L);
            jSONObject2.put("setting_tag", dqVar.ox("setting_tag"));
            jSONObject2.put("url_host", host);
            jSONObject2.putOpt("host_ip", str3);
            jSONObject2.putOpt("host_real_ip", str4);
            jSONObject2.put("url_path", path);
            jSONObject2.put("url_last_path_segment", lastPathSegment);
            jSONObject2.put("net_lib", i3);
            jSONObject2.put("hit_cdn_cache", i2);
            jSONObject2.put("status_code", i4);
            jSONObject2.put("request_log", str5);
            if (str6 != null) {
                jSONObject2.put("error_msg", iw.dq(str6, dqVar.dq("exception_msg_length", 500)));
            }
            jSONObject2.put("download_sec", nanos);
            jSONObject2.put("download_mb", d2);
            if (nanos > 0.0d) {
                jSONObject2.put("download_speed", d2 / nanos);
            }
            if (z3) {
                jSONObject2.put("rw_read_time", j3 / d3);
                jSONObject2.put("rw_write_time", j4 / d3);
                jSONObject2.put("rw_sync_time", j5 / d3);
            }
            jSONObject2.put("pkg_name", downloadInfo.getPackageName());
            jSONObject2.put(abn.EXTRA_UA_APP_NAME, downloadInfo.getTitle());
            if (i != 1) {
                if (i == 3) {
                }
                if (i != 2 || i == 3) {
                    com.ss.android.socialbase.downloader.downloader.ox.t().dq(downloadInfo.getId(), str, jSONObject2);
                }
                return;
            }
            com.ss.android.socialbase.downloader.downloader.ox.mn();
            if (i != 2) {
            }
            com.ss.android.socialbase.downloader.downloader.ox.t().dq(downloadInfo.getId(), str, jSONObject2);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private static boolean dq(int[] iArr, int i) {
        if (iArr != null && iArr.length > 0) {
            for (int i2 : iArr) {
                if (i == i2) {
                    return true;
                }
            }
        }
        return false;
    }
}

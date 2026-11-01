package com.ss.android.downloadlib;

import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import com.bytedance.pangle.ZeusPluginEventCallback;
import com.ss.android.download.api.download.DownloadModel;
import com.ss.android.downloadlib.mn.mp;
import com.ss.android.downloadlib.mn.no;
import com.ss.android.socialbase.downloader.dq.dq;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ox implements com.ss.android.socialbase.appdownloader.ox.ia {
    private static String dq = "ox";

    /* renamed from: d, reason: collision with root package name */
    private Handler f9251d = new Handler(Looper.getMainLooper());

    private void dq(DownloadInfo downloadInfo) {
        if (com.ss.android.downloadlib.mn.s.iw(downloadInfo.getId())) {
            s.dq().d(new com.ss.android.downloadlib.addownload.ox.d(downloadInfo));
        }
    }

    private void dq(final DownloadInfo downloadInfo, final com.ss.android.downloadad.api.dq.d dVar) {
        final long dq2 = mp.dq(Environment.getDataDirectory(), -1L);
        long min = Math.min(524288000L, mp.dq(Environment.getDataDirectory()) / 10);
        final long totalBytes = downloadInfo.getTotalBytes();
        final double d2 = (totalBytes * 2.5d) + min;
        if (dq2 > -1 && totalBytes > -1) {
            double d3 = dq2;
            if (d3 < d2 && d2 - d3 > com.ss.android.downloadlib.addownload.p.d()) {
                com.ss.android.downloadlib.addownload.p.dq(downloadInfo.getId());
            }
        }
        com.ss.android.socialbase.downloader.dq.dq.dq().dq(new dq.InterfaceC0248dq() { // from class: com.ss.android.downloadlib.ox.3
            @Override // com.ss.android.socialbase.downloader.dq.dq.InterfaceC0248dq
            public void d() {
                if (mp.d(dVar)) {
                    com.ss.android.socialbase.downloader.dq.dq.dq().d(this);
                    return;
                }
                long j = dq2;
                if (j <= -1 || totalBytes <= -1 || j >= d2) {
                    return;
                }
                com.ss.android.downloadlib.p.dq.dq().dq("clean_space_install", com.ss.android.downloadlib.addownload.p.dq("install_no_enough_space"), dVar);
                if (com.ss.android.downloadlib.addownload.p.dq(downloadInfo, ((long) d2) - dq2)) {
                    com.ss.android.socialbase.downloader.dq.dq.dq().d(this);
                    dVar.mn(true);
                }
            }

            @Override // com.ss.android.socialbase.downloader.dq.dq.InterfaceC0248dq
            public void ox() {
            }
        });
    }

    @Override // com.ss.android.socialbase.appdownloader.ox.ia
    public void dq(DownloadInfo downloadInfo, BaseException baseException, int i) {
        BaseException baseException2;
        final DownloadModel dq2;
        if (downloadInfo == null) {
            return;
        }
        if (i == -1 && baseException != null) {
            JSONObject jSONObject = new JSONObject();
            com.ss.android.downloadlib.mn.iw.ox(downloadInfo, jSONObject);
            dq.dq(jSONObject, downloadInfo);
            no.dq("download_failed", jSONObject.toString());
        }
        com.ss.android.downloadad.api.dq.d dq3 = com.ss.android.downloadlib.addownload.d.iw.dq().dq(downloadInfo);
        if (dq3 == null) {
            return;
        }
        try {
            if (i != -1) {
                if (i == -3) {
                    dq.dq(downloadInfo, dq3);
                    return;
                }
                if (i == 2001) {
                    dq.dq().dq(downloadInfo, dq3, 2001);
                    return;
                } else {
                    if (i == 11) {
                        dq.dq().dq(downloadInfo, dq3, ZeusPluginEventCallback.EVENT_START_LOAD);
                        if (dq3.by()) {
                            return;
                        }
                        dq(downloadInfo, dq3);
                        return;
                    }
                    return;
                }
            }
            if (baseException != null) {
                if (com.ss.android.socialbase.downloader.mn.dq.dq(downloadInfo.getId()).dq("toast_without_network", 0) == 1 && baseException.getErrorCode() == 1049) {
                    this.f9251d.post(new Runnable() { // from class: com.ss.android.downloadlib.ox.1
                        @Override // java.lang.Runnable
                        public void run() {
                            com.ss.android.downloadlib.addownload.no.ox().dq(5, com.ss.android.downloadlib.addownload.no.getContext(), null, "无网络，请检查网络设置", null, 0);
                        }
                    });
                }
                if (com.ss.android.socialbase.downloader.kk.iw.ia(baseException)) {
                    if (com.ss.android.downloadlib.addownload.no.mp() != null) {
                        com.ss.android.downloadlib.addownload.no.mp();
                        dq3.d();
                    }
                    com.ss.android.downloadlib.p.dq.dq().dq("download_failed_for_space", dq3);
                    if (!dq3.t()) {
                        com.ss.android.downloadlib.p.dq.dq().dq("download_can_restart", dq3);
                        dq(downloadInfo);
                    }
                    if ((com.ss.android.downloadlib.addownload.no.mp() == null || !com.ss.android.downloadlib.addownload.no.mp().ox()) && (dq2 = com.ss.android.downloadlib.addownload.d.iw.dq().dq(dq3.d())) != null && dq2.isShowToast()) {
                        final com.ss.android.socialbase.downloader.mn.dq dq4 = com.ss.android.socialbase.downloader.mn.dq.dq(downloadInfo.getId());
                        if (dq4.dq("show_no_enough_space_toast", 0) == 1) {
                            this.f9251d.post(new Runnable() { // from class: com.ss.android.downloadlib.ox.2
                                @Override // java.lang.Runnable
                                public void run() {
                                    com.ss.android.downloadlib.addownload.no.ox().dq(2, com.ss.android.downloadlib.addownload.no.getContext(), dq2, dq4.dq("no_enough_space_toast_text", "您的存储空间不足，请清理后再试"), null, 0);
                                }
                            });
                        }
                    }
                }
                baseException2 = new BaseException(baseException.getErrorCode(), mp.dq(baseException.getMessage(), com.ss.android.downloadlib.addownload.no.kk().optInt("exception_msg_length", 500)));
            } else {
                baseException2 = null;
            }
            com.ss.android.downloadlib.p.dq.dq().d(downloadInfo, baseException2);
            ia.dq().dq(downloadInfo, baseException, "");
        } catch (Exception e2) {
            com.ss.android.downloadlib.addownload.no.r().dq(e2, "onAppDownloadMonitorSend");
        }
    }
}

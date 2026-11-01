package com.ss.android.socialbase.downloader.kk;

import com.ss.android.socialbase.downloader.model.DownloadInfo;

/* loaded from: classes.dex */
public class p {
    public static boolean d(DownloadInfo downloadInfo) {
        return downloadInfo != null && com.ss.android.socialbase.downloader.mn.dq.dq(downloadInfo.getId()).d("optimize_save_path") == 1;
    }

    public static boolean dq(DownloadInfo downloadInfo) {
        return downloadInfo != null && com.ss.android.socialbase.downloader.mn.dq.dq(downloadInfo.getId()).d("optimize_head_request") == 1;
    }
}

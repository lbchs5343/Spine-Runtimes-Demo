package com.ss.android.socialbase.downloader.depend;

import com.ss.android.socialbase.downloader.model.DownloadInfo;

/* loaded from: classes.dex */
public abstract class dq extends AbsDownloadListener implements gh {
    private static final String dq = "dq";

    public void dq(DownloadInfo downloadInfo) {
        if (!com.ss.android.socialbase.downloader.ox.dq.dq() || downloadInfo == null) {
            return;
        }
        com.ss.android.socialbase.downloader.ox.dq.d(dq, " onWaitingDownloadCompleteHandler -- " + downloadInfo.getName());
    }
}

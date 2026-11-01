package com.ss.android.download.api.download.dq;

import com.ss.android.download.api.download.DownloadController;
import com.ss.android.download.api.download.DownloadEventConfig;
import com.ss.android.download.api.download.DownloadModel;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.model.DownloadInfo;

/* loaded from: classes.dex */
public interface dq {
    void d(DownloadInfo downloadInfo, String str);

    void dq(DownloadModel downloadModel, DownloadController downloadController, DownloadEventConfig downloadEventConfig);

    void dq(DownloadInfo downloadInfo);

    void dq(DownloadInfo downloadInfo, BaseException baseException, String str);

    void dq(DownloadInfo downloadInfo, String str);
}

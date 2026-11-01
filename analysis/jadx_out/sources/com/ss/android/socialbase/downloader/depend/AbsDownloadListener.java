package com.ss.android.socialbase.downloader.depend;

import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.model.DownloadInfo;

/* loaded from: classes.dex */
public abstract class AbsDownloadListener implements IDownloadListener {
    private static final String TAG = "AbsDownloadListener";

    @Override // com.ss.android.socialbase.downloader.depend.IDownloadListener
    public void onCanceled(DownloadInfo downloadInfo) {
        if (!com.ss.android.socialbase.downloader.ox.dq.dq() || downloadInfo == null) {
            return;
        }
        com.ss.android.socialbase.downloader.ox.dq.d(TAG, " onCanceled -- " + downloadInfo.getName());
    }

    @Override // com.ss.android.socialbase.downloader.depend.IDownloadListener
    public void onFailed(DownloadInfo downloadInfo, BaseException baseException) {
        if (!com.ss.android.socialbase.downloader.ox.dq.dq() || downloadInfo == null) {
            return;
        }
        com.ss.android.socialbase.downloader.ox.dq.d(TAG, "onFailed on " + downloadInfo.getName() + " because of : " + (baseException != null ? baseException.getErrorMessage() : "unkown"));
    }

    @Override // com.ss.android.socialbase.downloader.depend.IDownloadListener
    public void onFirstStart(DownloadInfo downloadInfo) {
        if (!com.ss.android.socialbase.downloader.ox.dq.dq() || downloadInfo == null) {
            return;
        }
        com.ss.android.socialbase.downloader.ox.dq.d(TAG, " onFirstStart -- " + downloadInfo.getName());
    }

    @Override // com.ss.android.socialbase.downloader.depend.IDownloadListener
    public void onFirstSuccess(DownloadInfo downloadInfo) {
        if (!com.ss.android.socialbase.downloader.ox.dq.dq() || downloadInfo == null) {
            return;
        }
        com.ss.android.socialbase.downloader.ox.dq.d(TAG, " onFirstSuccess -- " + downloadInfo.getName());
    }

    public void onIntercept(DownloadInfo downloadInfo) {
        if (!com.ss.android.socialbase.downloader.ox.dq.dq() || downloadInfo == null) {
            return;
        }
        com.ss.android.socialbase.downloader.ox.dq.d(TAG, " onIntercept -- " + downloadInfo.getName());
    }

    @Override // com.ss.android.socialbase.downloader.depend.IDownloadListener
    public void onPause(DownloadInfo downloadInfo) {
        if (!com.ss.android.socialbase.downloader.ox.dq.dq() || downloadInfo == null) {
            return;
        }
        com.ss.android.socialbase.downloader.ox.dq.d(TAG, " onPause -- " + downloadInfo.getName());
    }

    @Override // com.ss.android.socialbase.downloader.depend.IDownloadListener
    public void onPrepare(DownloadInfo downloadInfo) {
        if (!com.ss.android.socialbase.downloader.ox.dq.dq() || downloadInfo == null) {
            return;
        }
        com.ss.android.socialbase.downloader.ox.dq.d(TAG, " onPrepare -- " + downloadInfo.getName());
    }

    @Override // com.ss.android.socialbase.downloader.depend.IDownloadListener
    public void onProgress(DownloadInfo downloadInfo) {
        if (!com.ss.android.socialbase.downloader.ox.dq.dq() || downloadInfo == null || downloadInfo.getTotalBytes() == 0) {
            return;
        }
        com.ss.android.socialbase.downloader.ox.dq.d(TAG, String.format("onProgress %s %.2f%%", downloadInfo.getName(), Float.valueOf((downloadInfo.getCurBytes() / downloadInfo.getTotalBytes()) * 100.0f)));
    }

    @Override // com.ss.android.socialbase.downloader.depend.IDownloadListener
    public void onRetry(DownloadInfo downloadInfo, BaseException baseException) {
        if (!com.ss.android.socialbase.downloader.ox.dq.dq() || downloadInfo == null) {
            return;
        }
        com.ss.android.socialbase.downloader.ox.dq.d(TAG, "onRetry on " + downloadInfo.getName() + " because of : " + (baseException != null ? baseException.getErrorMessage() : "unkown"));
    }

    @Override // com.ss.android.socialbase.downloader.depend.IDownloadListener
    public void onRetryDelay(DownloadInfo downloadInfo, BaseException baseException) {
        if (!com.ss.android.socialbase.downloader.ox.dq.dq() || downloadInfo == null) {
            return;
        }
        com.ss.android.socialbase.downloader.ox.dq.d(TAG, "onRetryDelay on " + downloadInfo.getName() + " because of : " + (baseException != null ? baseException.getErrorMessage() : "unkown"));
    }

    @Override // com.ss.android.socialbase.downloader.depend.IDownloadListener
    public void onStart(DownloadInfo downloadInfo) {
        if (!com.ss.android.socialbase.downloader.ox.dq.dq() || downloadInfo == null) {
            return;
        }
        com.ss.android.socialbase.downloader.ox.dq.d(TAG, " onStart -- " + downloadInfo.getName());
    }

    @Override // com.ss.android.socialbase.downloader.depend.IDownloadListener
    public void onSuccessed(DownloadInfo downloadInfo) {
        if (!com.ss.android.socialbase.downloader.ox.dq.dq() || downloadInfo == null) {
            return;
        }
        com.ss.android.socialbase.downloader.ox.dq.d(TAG, " onSuccessed -- " + downloadInfo.getName() + " " + downloadInfo.isSuccessByCache());
    }
}

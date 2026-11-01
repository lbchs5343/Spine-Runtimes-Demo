package com.ss.android.socialbase.appdownloader.s;

import android.content.Context;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.model.DownloadInfo;

/* loaded from: classes.dex */
public class d extends com.ss.android.socialbase.downloader.depend.p {

    /* renamed from: d, reason: collision with root package name */
    private int f9300d;
    private Context dq;
    private String iw;
    private com.ss.android.socialbase.downloader.notification.dq mn;
    private String ox;
    private String p;
    private String s;

    public d(Context context, int i, String str, String str2, String str3, String str4) {
        if (context != null) {
            this.dq = context.getApplicationContext();
        } else {
            this.dq = com.ss.android.socialbase.downloader.downloader.ox.ob();
        }
        this.f9300d = i;
        this.ox = str;
        this.p = str2;
        this.s = str3;
        this.iw = str4;
    }

    public d(com.ss.android.socialbase.downloader.notification.dq dqVar) {
        this.dq = com.ss.android.socialbase.downloader.downloader.ox.ob();
        this.mn = dqVar;
    }

    @Override // com.ss.android.socialbase.downloader.depend.p
    public com.ss.android.socialbase.downloader.notification.dq dq() {
        Context context;
        com.ss.android.socialbase.downloader.notification.dq dqVar = this.mn;
        return (dqVar != null || (context = this.dq) == null) ? dqVar : new dq(context, this.f9300d, this.ox, this.p, this.s, this.iw);
    }

    @Override // com.ss.android.socialbase.downloader.depend.p, com.ss.android.socialbase.downloader.depend.AbsDownloadListener, com.ss.android.socialbase.downloader.depend.IDownloadListener
    public void onFailed(DownloadInfo downloadInfo, BaseException baseException) {
        if (downloadInfo == null || this.dq == null || !downloadInfo.canShowNotification() || downloadInfo.isAutoInstallWithoutNotification()) {
            return;
        }
        super.onFailed(downloadInfo, baseException);
    }

    @Override // com.ss.android.socialbase.downloader.depend.p, com.ss.android.socialbase.downloader.depend.AbsDownloadListener, com.ss.android.socialbase.downloader.depend.IDownloadListener
    public void onPause(DownloadInfo downloadInfo) {
        if (downloadInfo == null || downloadInfo.isAutoInstallWithoutNotification()) {
            return;
        }
        super.onPause(downloadInfo);
    }

    @Override // com.ss.android.socialbase.downloader.depend.p, com.ss.android.socialbase.downloader.depend.AbsDownloadListener, com.ss.android.socialbase.downloader.depend.IDownloadListener
    public void onPrepare(DownloadInfo downloadInfo) {
        if (downloadInfo == null || downloadInfo.isAutoInstallWithoutNotification()) {
            return;
        }
        super.onPrepare(downloadInfo);
    }

    @Override // com.ss.android.socialbase.downloader.depend.p, com.ss.android.socialbase.downloader.depend.AbsDownloadListener, com.ss.android.socialbase.downloader.depend.IDownloadListener
    public void onProgress(DownloadInfo downloadInfo) {
        if (downloadInfo == null || downloadInfo.isAutoInstallWithoutNotification()) {
            return;
        }
        super.onProgress(downloadInfo);
    }

    @Override // com.ss.android.socialbase.downloader.depend.p, com.ss.android.socialbase.downloader.depend.AbsDownloadListener, com.ss.android.socialbase.downloader.depend.IDownloadListener
    public void onStart(DownloadInfo downloadInfo) {
        if (downloadInfo == null || downloadInfo.isAutoInstallWithoutNotification()) {
            return;
        }
        super.onStart(downloadInfo);
    }

    @Override // com.ss.android.socialbase.downloader.depend.p, com.ss.android.socialbase.downloader.depend.AbsDownloadListener, com.ss.android.socialbase.downloader.depend.IDownloadListener
    public void onSuccessed(DownloadInfo downloadInfo) {
        if (downloadInfo == null || this.dq == null) {
            return;
        }
        if (downloadInfo.canShowNotification() && (!downloadInfo.isAutoInstallWithoutNotification() || !downloadInfo.isAutoInstall())) {
            super.onSuccessed(downloadInfo);
        }
        if (downloadInfo.isAutoInstall()) {
            com.ss.android.socialbase.appdownloader.iw.d.dq(downloadInfo);
        }
    }
}

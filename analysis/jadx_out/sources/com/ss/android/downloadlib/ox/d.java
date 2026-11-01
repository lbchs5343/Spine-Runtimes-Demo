package com.ss.android.downloadlib.ox;

import android.content.pm.PackageInfo;
import com.ss.android.downloadlib.addownload.no;
import com.ss.android.socialbase.downloader.depend.mp;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.model.DownloadInfo;

/* loaded from: classes.dex */
public class d implements mp {
    @Override // com.ss.android.socialbase.downloader.depend.mp
    public boolean d(DownloadInfo downloadInfo) {
        return downloadInfo != null && com.ss.android.downloadlib.mn.s.d() && downloadInfo.getPackageInfo() == null;
    }

    @Override // com.ss.android.socialbase.downloader.depend.mp
    public void dq(DownloadInfo downloadInfo) throws BaseException {
        PackageInfo dq = com.ss.android.socialbase.appdownloader.ox.dq(no.getContext(), downloadInfo, downloadInfo.getSavePath(), downloadInfo.getName());
        if (dq != null) {
            downloadInfo.setAppVersionCode(dq.versionCode);
        }
    }
}

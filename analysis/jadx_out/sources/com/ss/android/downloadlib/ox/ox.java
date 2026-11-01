package com.ss.android.downloadlib.ox;

import com.ss.android.downloadlib.addownload.no;
import com.ss.android.socialbase.downloader.depend.mp;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import g.awf;
import java.io.File;

/* loaded from: classes.dex */
public class ox implements mp {
    private File dq(String str, String str2) {
        File file = new File(str2);
        String name = file.getName();
        int lastIndexOf = name.lastIndexOf(46);
        if (lastIndexOf > 0) {
            str = name.substring(0, lastIndexOf);
        }
        return new File(file.getParent(), awf.c(str, ".apk"));
    }

    @Override // com.ss.android.socialbase.downloader.depend.mp
    public boolean d(DownloadInfo downloadInfo) {
        if (downloadInfo != null) {
            return com.ss.android.download.api.ox.d.dq(com.ss.android.socialbase.downloader.mn.dq.dq(downloadInfo.getId()), downloadInfo.getMimeType());
        }
        return false;
    }

    @Override // com.ss.android.socialbase.downloader.depend.mp
    public void dq(DownloadInfo downloadInfo) throws BaseException {
        com.ss.android.download.api.config.mp no = no.no();
        if (downloadInfo == null || no == null) {
            return;
        }
        File dq = dq(downloadInfo.getPackageName(), downloadInfo.getTargetFilePath());
        com.ss.android.downloadad.api.dq.d dq2 = com.ss.android.downloadlib.addownload.d.iw.dq().dq(downloadInfo);
        if (dq2 != null) {
            com.ss.android.downloadlib.mn.mp.dq(dq2.mn());
        }
        downloadInfo.setMimeType("application/vnd.android.package-archive");
        downloadInfo.setName(dq.getName());
        downloadInfo.setMd5(null);
    }
}

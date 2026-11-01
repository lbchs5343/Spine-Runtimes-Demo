package com.ss.android.downloadlib.iw;

import com.ss.android.downloadlib.addownload.d.iw;
import com.ss.android.socialbase.appdownloader.ox.kk;
import com.ss.android.socialbase.appdownloader.ox.o;
import com.ss.android.socialbase.downloader.model.DownloadInfo;

/* loaded from: classes.dex */
public class d implements o {
    @Override // com.ss.android.socialbase.appdownloader.ox.o
    public void dq(DownloadInfo downloadInfo, kk kkVar) {
        com.ss.android.downloadad.api.dq.d dq;
        if (downloadInfo != null && (dq = iw.dq().dq(downloadInfo)) != null) {
            downloadInfo.setLinkMode(dq.ob());
        }
        if (kkVar != null) {
            kkVar.dq();
        }
    }
}

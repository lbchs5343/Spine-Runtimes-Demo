package com.ss.android.downloadlib.iw;

import com.ss.android.downloadlib.activity.TTDelegateActivity;
import com.ss.android.downloadlib.addownload.d.iw;
import com.ss.android.downloadlib.d.kk;
import com.ss.android.socialbase.appdownloader.ox.o;
import com.ss.android.socialbase.downloader.model.DownloadInfo;

/* loaded from: classes.dex */
public class dq implements o {
    /* JADX INFO: Access modifiers changed from: private */
    public void d(DownloadInfo downloadInfo, final com.ss.android.downloadlib.guide.install.dq dqVar) {
        com.ss.android.downloadad.api.dq.d dq = iw.dq().dq(downloadInfo);
        boolean dq2 = com.ss.android.downloadlib.d.iw.dq(dq);
        boolean d2 = com.ss.android.downloadlib.d.iw.d(dq);
        if (dq2 && d2) {
            com.ss.android.downloadlib.d.ox.dq(dq, new com.ss.android.downloadlib.guide.install.dq() { // from class: com.ss.android.downloadlib.iw.dq.3
                @Override // com.ss.android.downloadlib.guide.install.dq
                public void dq() {
                    dqVar.dq();
                }
            });
        } else {
            dqVar.dq();
        }
    }

    public void dq(final DownloadInfo downloadInfo, final com.ss.android.downloadlib.guide.install.dq dqVar) {
        com.ss.android.downloadad.api.dq.d dq = iw.dq().dq(downloadInfo);
        if (dq == null || !kk.dq(dq)) {
            d(downloadInfo, dqVar);
        } else {
            TTDelegateActivity.dq(dq, new com.ss.android.downloadlib.guide.install.dq() { // from class: com.ss.android.downloadlib.iw.dq.2
                @Override // com.ss.android.downloadlib.guide.install.dq
                public void dq() {
                    dq.this.d(downloadInfo, dqVar);
                }
            });
        }
    }

    @Override // com.ss.android.socialbase.appdownloader.ox.o
    public void dq(DownloadInfo downloadInfo, final com.ss.android.socialbase.appdownloader.ox.kk kkVar) {
        dq(downloadInfo, new com.ss.android.downloadlib.guide.install.dq() { // from class: com.ss.android.downloadlib.iw.dq.1
            @Override // com.ss.android.downloadlib.guide.install.dq
            public void dq() {
                kkVar.dq();
            }
        });
    }
}

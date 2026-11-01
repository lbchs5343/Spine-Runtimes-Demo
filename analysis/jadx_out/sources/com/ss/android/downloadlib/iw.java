package com.ss.android.downloadlib;

import android.text.TextUtils;
import com.ss.android.download.api.config.fw;
import com.ss.android.download.api.config.i;
import com.ss.android.download.api.config.ig;
import com.ss.android.downloadlib.addownload.no;
import com.ss.android.socialbase.appdownloader.DownloadHandlerService;
import com.ss.android.socialbase.downloader.depend.op;
import com.ss.android.socialbase.downloader.downloader.Downloader;
import com.ss.android.socialbase.downloader.downloader.DownloaderBuilder;
import com.ss.android.socialbase.downloader.dq.dq;
import com.ss.android.socialbase.downloader.model.DownloadInfo;

/* loaded from: classes.dex */
class iw implements com.ss.android.download.api.dq {
    @Override // com.ss.android.download.api.dq
    public com.ss.android.download.api.dq dq(final com.ss.android.download.api.config.d dVar) {
        no.dq(dVar);
        com.ss.android.socialbase.downloader.dq.dq.dq().dq(new dq.ox() { // from class: com.ss.android.downloadlib.iw.1
        });
        return this;
    }

    @Override // com.ss.android.download.api.dq
    public com.ss.android.download.api.dq dq(fw fwVar) {
        no.dq(fwVar);
        return this;
    }

    @Override // com.ss.android.download.api.dq
    public com.ss.android.download.api.dq dq(com.ss.android.download.api.config.ia iaVar) {
        no.dq(iaVar);
        return this;
    }

    @Override // com.ss.android.download.api.dq
    public com.ss.android.download.api.dq dq(ig igVar) {
        no.dq(igVar);
        return this;
    }

    @Override // com.ss.android.download.api.dq
    public com.ss.android.download.api.dq dq(com.ss.android.download.api.config.kk kkVar) {
        no.dq(kkVar);
        return this;
    }

    @Override // com.ss.android.download.api.dq
    public com.ss.android.download.api.dq dq(com.ss.android.download.api.config.mn mnVar) {
        no.dq(mnVar);
        return this;
    }

    @Override // com.ss.android.download.api.dq
    public com.ss.android.download.api.dq dq(com.ss.android.download.api.config.o oVar) {
        no.dq(oVar);
        return this;
    }

    @Override // com.ss.android.download.api.dq
    public com.ss.android.download.api.dq dq(com.ss.android.download.api.model.dq dqVar) {
        no.dq(dqVar);
        return this;
    }

    @Override // com.ss.android.download.api.dq
    public com.ss.android.download.api.dq dq(DownloaderBuilder downloaderBuilder) {
        if (downloaderBuilder.getNotificationClickCallback() == null) {
            downloaderBuilder.notificationClickCallback(new op() { // from class: com.ss.android.downloadlib.iw.2
                private boolean p(DownloadInfo downloadInfo) {
                    i gh = no.gh();
                    if (gh == null) {
                        return false;
                    }
                    com.ss.android.downloadad.api.dq.d dq = com.ss.android.downloadlib.addownload.d.iw.dq().dq(downloadInfo);
                    String dq2 = (dq == null || !dq.ox()) ? com.ss.android.downloadlib.addownload.kk.dq(downloadInfo) : com.ss.android.socialbase.downloader.mn.dq.dq(downloadInfo.getId()).dq("ad_notification_jump_url", (String) null);
                    if (TextUtils.isEmpty(dq2)) {
                        return false;
                    }
                    return gh.dq(no.getContext(), dq2);
                }

                @Override // com.ss.android.socialbase.downloader.depend.op
                public boolean d(DownloadInfo downloadInfo) {
                    return false;
                }

                @Override // com.ss.android.socialbase.downloader.depend.op
                public boolean dq(DownloadInfo downloadInfo) {
                    com.ss.android.socialbase.downloader.mn.dq dq = com.ss.android.socialbase.downloader.mn.dq.dq(downloadInfo.getId());
                    if (dq.d("notification_opt_2") != 1) {
                        boolean p = p(downloadInfo);
                        if (dq.dq("disable_delete_dialog", 0) == 1) {
                            return true;
                        }
                        return p;
                    }
                    if (downloadInfo.getStatus() == -2) {
                        DownloadHandlerService.dq(no.getContext(), downloadInfo, com.ss.android.socialbase.appdownloader.p.o().d(), Downloader.getInstance(no.getContext()).getDownloadNotificationEventListener(downloadInfo.getId()));
                    }
                    return true;
                }

                @Override // com.ss.android.socialbase.downloader.depend.op
                public boolean ox(DownloadInfo downloadInfo) {
                    if (downloadInfo == null) {
                        return false;
                    }
                    com.ss.android.downloadad.api.dq.d dq = com.ss.android.downloadlib.addownload.d.iw.dq().dq(downloadInfo);
                    if (dq != null) {
                        com.ss.android.downloadlib.d.dq.dq(dq);
                    } else {
                        com.ss.android.downloadlib.mn.kk.d(no.getContext(), downloadInfo.getPackageName());
                    }
                    com.ss.android.socialbase.downloader.notification.d.dq().iw(downloadInfo.getId());
                    return true;
                }
            });
        }
        downloaderBuilder.addDownloadCompleteHandler(new com.ss.android.downloadlib.ox.ox());
        Downloader.initOrCover(downloaderBuilder, true);
        return this;
    }

    @Override // com.ss.android.download.api.dq
    public com.ss.android.download.api.dq dq(String str) {
        no.dq(str);
        return this;
    }

    @Override // com.ss.android.download.api.dq
    public void dq() {
        if (!no.k()) {
            com.ss.android.downloadlib.s.ox.dq().dq("ttdownloader init error");
        }
        no.dq(com.ss.android.downloadlib.s.ox.dq());
        try {
            com.ss.android.socialbase.appdownloader.p.o().d(no.le());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        com.ss.android.socialbase.appdownloader.p.o().dq(dq.dq());
        s.dq().d(new Runnable() { // from class: com.ss.android.downloadlib.iw.3
            @Override // java.lang.Runnable
            public void run() {
                com.ss.android.socialbase.appdownloader.iw.s.dq("");
                if (com.ss.android.socialbase.appdownloader.iw.s.jy()) {
                    com.ss.android.socialbase.downloader.downloader.ox.dq(true);
                }
                if (com.ss.android.socialbase.downloader.mn.dq.ox().dq("disable_security_init", 1) == 1) {
                    com.ss.android.socialbase.appdownloader.iw.iw.dq(no.getContext());
                }
            }
        });
    }
}

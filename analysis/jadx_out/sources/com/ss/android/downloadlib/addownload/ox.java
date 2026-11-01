package com.ss.android.downloadlib.addownload;

import com.ss.android.download.api.download.DownloadModel;
import com.ss.android.downloadad.api.download.AdDownloadModel;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import j$.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public class ox {

    /* renamed from: d, reason: collision with root package name */
    private static volatile ox f9165d = null;
    private static String dq = "ox";
    private ConcurrentHashMap<Long, Runnable> ox;

    public ox() {
        this.ox = null;
        this.ox = new ConcurrentHashMap<>();
    }

    public static ox dq() {
        if (f9165d == null) {
            synchronized (ox.class) {
                try {
                    if (f9165d == null) {
                        f9165d = new ox();
                    }
                } finally {
                }
            }
        }
        return f9165d;
    }

    private void dq(long j, boolean z, int i) {
        com.ss.android.downloadlib.p.dq.dq().dq(j, z, i);
        if (z) {
            no.i();
        }
    }

    public static boolean dq(DownloadInfo downloadInfo) {
        return downloadInfo == null || downloadInfo.getStatus() == 0 || downloadInfo.getStatus() == -4;
    }

    public long d() {
        return no.kk().optLong("quick_app_check_internal", 1200L);
    }

    public void dq(final s sVar, final int i, final DownloadModel downloadModel) {
        com.ss.android.downloadlib.d.s.dq().dq(new com.ss.android.downloadlib.d.p() { // from class: com.ss.android.downloadlib.addownload.ox.1
            @Override // com.ss.android.downloadlib.d.p
            public void dq(boolean z) {
                ox.this.dq(sVar, z, i, downloadModel);
            }
        }, d());
    }

    public void dq(s sVar, boolean z, int i, DownloadModel downloadModel) {
        if (downloadModel instanceof AdDownloadModel) {
            ((AdDownloadModel) downloadModel).setFunnelType(3);
        }
        long id = downloadModel.getId();
        if (i == 4) {
            if (z) {
                dq(id, true, 2);
                return;
            } else {
                dq(id, false, 2);
                sVar.d(false);
                return;
            }
        }
        if (i == 5) {
            if (z) {
                dq(id, true, 1);
                return;
            } else {
                dq(id, false, 1);
                sVar.ox(false);
                return;
            }
        }
        if (i != 7) {
            return;
        }
        Runnable remove = this.ox.remove(Long.valueOf(id));
        if (z) {
            com.ss.android.downloadlib.p.dq.dq().dq(id, 1);
            dq(id, true, 1);
        } else {
            if (remove != null) {
                com.ss.android.downloadlib.ia.dq().d().post(remove);
            }
            dq(id, false, 1);
        }
    }
}

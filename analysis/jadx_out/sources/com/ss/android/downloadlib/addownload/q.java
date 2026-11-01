package com.ss.android.downloadlib.addownload;

import com.ss.android.downloadlib.activity.TTDelegateActivity;
import com.ss.android.socialbase.downloader.downloader.Downloader;
import com.ss.android.socialbase.downloader.impls.cd;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class q {

    /* renamed from: d, reason: collision with root package name */
    private static com.ss.android.downloadlib.addownload.dq.ox f9185d;
    private static com.ss.android.downloadlib.addownload.dq.p dq;

    public static com.ss.android.downloadlib.addownload.dq.ox d() {
        return f9185d;
    }

    public static com.ss.android.downloadlib.addownload.dq.p dq() {
        return dq;
    }

    public static void dq(com.ss.android.downloadlib.addownload.dq.ox oxVar) {
        f9185d = oxVar;
    }

    public static void dq(com.ss.android.downloadlib.addownload.dq.p pVar) {
        dq = pVar;
    }

    public static boolean dq(int i) {
        return i == 1 || i == 2 || i == 3 || i == 4 || i == 5 || i == 7 || i == 8;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [int] */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4 */
    public static boolean dq(final com.ss.android.downloadad.api.dq.d dVar, DownloadInfo downloadInfo, int i, final com.ss.android.downloadlib.addownload.p.ia iaVar, final boolean z, final com.ss.android.downloadlib.addownload.dq.ox oxVar) {
        if (dVar == null) {
            com.ss.android.downloadlib.s.ox.dq().dq("tryReverseWifi nativeModel null");
            return false;
        }
        if (downloadInfo == null) {
            com.ss.android.downloadlib.s.ox.dq().dq("tryReverseWifi info null");
            return false;
        }
        final int id = downloadInfo.getId();
        ?? ox = z ? com.ss.android.downloadlib.mn.s.ox((com.ss.android.downloadad.api.dq.dq) dVar) : com.ss.android.downloadlib.mn.s.d((com.ss.android.downloadad.api.dq.dq) dVar);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("switch_status", Integer.valueOf((int) ox));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if (z) {
            com.ss.android.downloadlib.p.dq.dq().dq("cancel_pause_reserve_wifi_switch_status", jSONObject, dVar);
        } else {
            com.ss.android.downloadlib.p.dq.dq().dq("pause_reserve_wifi_switch_status", jSONObject, dVar);
        }
        if (ox == 0 || !dq(i) || com.ss.android.socialbase.downloader.kk.iw.d(no.getContext())) {
            return false;
        }
        if (!z && downloadInfo.hasPauseReservedOnWifi()) {
            return false;
        }
        dq(new com.ss.android.downloadlib.addownload.dq.p() { // from class: com.ss.android.downloadlib.addownload.q.1
            @Override // com.ss.android.downloadlib.addownload.dq.p
            public void d() {
                q.dq((com.ss.android.downloadlib.addownload.dq.p) null);
                DownloadInfo downloadInfo2 = Downloader.getInstance(no.getContext()).getDownloadInfo(id);
                if (downloadInfo2 != null) {
                    downloadInfo2.stopPauseReserveOnWifi();
                }
                if (z) {
                    com.ss.android.downloadlib.p.dq.dq().dq("cancel_pause_reserve_wifi_cancel", dVar);
                } else {
                    com.ss.android.downloadlib.p.dq.dq().d("pause_reserve_wifi_cancel", dVar);
                }
                iaVar.dq(dVar);
            }

            @Override // com.ss.android.downloadlib.addownload.dq.p
            public void dq() {
                q.dq((com.ss.android.downloadlib.addownload.dq.p) null);
                DownloadInfo downloadInfo2 = Downloader.getInstance(no.getContext()).getDownloadInfo(id);
                if (downloadInfo2 != null) {
                    downloadInfo2.startPauseReserveOnWifi();
                    cd.dq().dq(downloadInfo2);
                    if (z) {
                        com.ss.android.downloadlib.p.dq.dq().dq("cancel_pause_reserve_wifi_confirm", dVar);
                    } else {
                        com.ss.android.downloadlib.p.dq.dq().d("pause_reserve_wifi_confirm", dVar);
                    }
                }
                iaVar.dq(dVar);
            }
        });
        if (z && oxVar != null) {
            dq(new com.ss.android.downloadlib.addownload.dq.ox() { // from class: com.ss.android.downloadlib.addownload.q.2
                @Override // com.ss.android.downloadlib.addownload.dq.ox
                public void delete() {
                    com.ss.android.downloadlib.p.dq.dq().dq("cancel_pause_reserve_wifi_delete", com.ss.android.downloadad.api.dq.d.this);
                    oxVar.delete();
                }
            });
        }
        if (z) {
            TTDelegateActivity.dq(dVar, "删除");
            return true;
        }
        TTDelegateActivity.d(dVar);
        return true;
    }
}

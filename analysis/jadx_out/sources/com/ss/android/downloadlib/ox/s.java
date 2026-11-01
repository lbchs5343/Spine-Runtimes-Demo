package com.ss.android.downloadlib.ox;

import com.ss.android.downloadlib.addownload.no;
import com.ss.android.downloadlib.mn.mp;
import com.ss.android.socialbase.downloader.downloader.Downloader;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class s implements com.ss.android.socialbase.downloader.p.ox {
    @Override // com.ss.android.socialbase.downloader.p.ox
    public void d(int i, String str, JSONObject jSONObject) {
        com.ss.android.downloadad.api.dq.d dq;
        DownloadInfo downloadInfo = Downloader.getInstance(no.getContext()).getDownloadInfo(i);
        if (downloadInfo == null || (dq = com.ss.android.downloadlib.addownload.d.iw.dq().dq(downloadInfo)) == null) {
            return;
        }
        com.ss.android.downloadlib.p.dq.dq().dq(str, jSONObject, dq);
    }

    @Override // com.ss.android.socialbase.downloader.p.ox
    public void dq(int i, String str, JSONObject jSONObject) {
        com.ss.android.downloadad.api.dq.d dq;
        DownloadInfo downloadInfo = Downloader.getInstance(no.getContext()).getDownloadInfo(i);
        if (downloadInfo == null || (dq = com.ss.android.downloadlib.addownload.d.iw.dq().dq(downloadInfo)) == null) {
            return;
        }
        if ("install_view_result".equals(str)) {
            jSONObject = mp.dq(jSONObject);
            com.ss.android.downloadlib.dq.dq(jSONObject, downloadInfo);
            mp.dq(jSONObject, "model_id", Long.valueOf(dq.d()));
        }
        com.ss.android.downloadlib.p.dq.dq().d(str, jSONObject, dq);
    }
}

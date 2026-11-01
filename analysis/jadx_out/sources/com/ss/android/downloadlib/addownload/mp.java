package com.ss.android.downloadlib.addownload;

import com.ss.android.socialbase.downloader.downloader.cd;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class mp implements cd {
    @Override // com.ss.android.socialbase.downloader.downloader.cd
    public void dq(DownloadInfo downloadInfo, int i, int i2) {
        com.ss.android.downloadad.api.dq.d dq = com.ss.android.downloadlib.addownload.d.iw.dq().dq(downloadInfo);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("reserve_wifi_source", Integer.valueOf(i2));
            jSONObject.putOpt("reserve_wifi_status", Integer.valueOf(i));
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        com.ss.android.downloadlib.p.dq.dq().dq("pause_reserve_wifi", jSONObject, dq);
    }
}

package com.ss.android.downloadlib.addownload.p;

import android.text.TextUtils;
import com.ss.android.downloadlib.activity.TTDelegateActivity;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import g.awf;
import g.ekq;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class iw implements kk {
    private static com.ss.android.downloadlib.addownload.dq.p dq;

    private int dq(int i) {
        return com.ss.android.socialbase.downloader.mn.dq.dq(i).dq("pause_optimise_download_percent", 50);
    }

    public static com.ss.android.downloadlib.addownload.dq.p dq() {
        return dq;
    }

    private boolean dq(com.ss.android.downloadad.api.dq.dq dqVar) {
        return com.ss.android.downloadlib.mn.s.dq(dqVar).dq("pause_optimise_download_percent_switch", 0) == 1 && dqVar.fw();
    }

    @Override // com.ss.android.downloadlib.addownload.p.kk
    public boolean dq(final com.ss.android.downloadad.api.dq.d dVar, int i, final ia iaVar) {
        int dq2;
        if (dVar == null || dVar.fd() || !dq(dVar)) {
            return false;
        }
        DownloadInfo dq3 = !TextUtils.isEmpty(dVar.ws()) ? com.ss.android.downloadlib.o.dq(com.ss.android.downloadlib.addownload.no.getContext()).dq(dVar.ws(), null, true) : com.ss.android.downloadlib.o.dq(com.ss.android.downloadlib.addownload.no.getContext()).d(dVar.dq());
        if (dq3 == null) {
            return false;
        }
        long curBytes = dq3.getCurBytes();
        long totalBytes = dq3.getTotalBytes();
        if (curBytes <= 0 || totalBytes <= 0 || (dq2 = com.ss.android.downloadlib.addownload.o.dq(dq3.getId(), (int) ((curBytes * 100) / totalBytes))) <= dq(dVar.gh())) {
            return false;
        }
        dq = new com.ss.android.downloadlib.addownload.dq.p() { // from class: com.ss.android.downloadlib.addownload.p.iw.1
            @Override // com.ss.android.downloadlib.addownload.dq.p
            public void d() {
                com.ss.android.downloadlib.addownload.dq.p unused = iw.dq = null;
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.putOpt("pause_optimise_type", "download_percent");
                    jSONObject.putOpt("pause_optimise_action", ekq.PERMISSION_RESULT_CANCEL);
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
                com.ss.android.downloadlib.p.dq.dq().dq("pause_optimise", jSONObject, dVar);
                iaVar.dq(dVar);
            }

            @Override // com.ss.android.downloadlib.addownload.dq.p
            public void dq() {
                com.ss.android.downloadlib.addownload.dq.p unused = iw.dq = null;
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.putOpt("pause_optimise_type", "download_percent");
                    jSONObject.putOpt("pause_optimise_action", "confirm");
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
                com.ss.android.downloadlib.p.dq.dq().dq("pause_optimise", jSONObject, dVar);
            }
        };
        TTDelegateActivity.d(dVar, awf.b(dq2, "已下载", "%，即将下载完成，是否继续下载？"), "继续", "暂停");
        dVar.jy(true);
        return true;
    }
}

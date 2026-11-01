package com.ss.android.downloadlib.addownload.p;

import android.text.TextUtils;
import com.ss.android.download.api.constant.BaseConstants;
import com.ss.android.downloadlib.activity.TTDelegateActivity;
import com.ss.android.downloadlib.mn.mp;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import g.ekq;
import g.tn;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class d implements mn {

    /* renamed from: d, reason: collision with root package name */
    private static com.ss.android.downloadlib.addownload.dq.ox f9175d;
    private static com.ss.android.downloadlib.addownload.dq.p dq;

    public static com.ss.android.downloadlib.addownload.dq.ox d() {
        return f9175d;
    }

    private int dq(int i) {
        return com.ss.android.socialbase.downloader.mn.dq.dq(i).dq("cancel_pause_optimise_apk_size", 100) * 1048576;
    }

    public static com.ss.android.downloadlib.addownload.dq.p dq() {
        return dq;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(int i, int i2, com.ss.android.downloadad.api.dq.d dVar, String str, String str2) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("pause_optimise_type", str);
            jSONObject.putOpt("pause_optimise_action", str2);
            jSONObject.putOpt("download_current_bytes", Integer.valueOf(i));
            jSONObject.putOpt("download_total_bytes", Integer.valueOf(i2));
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        com.ss.android.downloadlib.p.dq.dq().dq("pause_cancel_optimise", jSONObject, dVar);
    }

    public static void dq(com.ss.android.downloadlib.addownload.dq.ox oxVar) {
        f9175d = oxVar;
    }

    private boolean dq(com.ss.android.downloadad.api.dq.dq dqVar) {
        return com.ss.android.downloadlib.mn.s.dq(dqVar).dq("cancel_pause_optimise_apk_retain_switch", 0) == 1 && dqVar.fw();
    }

    @Override // com.ss.android.downloadlib.addownload.p.mn
    public boolean dq(final com.ss.android.downloadad.api.dq.d dVar, int i, final ia iaVar, final com.ss.android.downloadlib.addownload.dq.ox oxVar) {
        if (dVar == null || !dq(dVar)) {
            return false;
        }
        DownloadInfo dq2 = !TextUtils.isEmpty(dVar.ws()) ? com.ss.android.downloadlib.o.dq(com.ss.android.downloadlib.addownload.no.getContext()).dq(dVar.ws(), null, true) : com.ss.android.downloadlib.o.dq(com.ss.android.downloadlib.addownload.no.getContext()).d(dVar.dq());
        if (dq2 == null) {
            return false;
        }
        long dq3 = com.ss.android.downloadlib.addownload.o.dq(dq2.getId(), dq2.getCurBytes(), dq2.getTotalBytes());
        long totalBytes = dq2.getTotalBytes();
        if (dq3 < 0 || totalBytes <= 0 || totalBytes > dq(dVar.gh())) {
            return false;
        }
        final int i2 = (int) (dq3 / BaseConstants.MB_VALUE);
        dq = new com.ss.android.downloadlib.addownload.dq.p() { // from class: com.ss.android.downloadlib.addownload.p.d.1
            @Override // com.ss.android.downloadlib.addownload.dq.p
            public void d() {
                com.ss.android.downloadlib.addownload.dq.p unused = d.dq = null;
                d.this.dq(i2, i2, dVar, "apk_size_cancel", ekq.PERMISSION_RESULT_CANCEL);
                iaVar.dq(dVar);
            }

            @Override // com.ss.android.downloadlib.addownload.dq.p
            public void dq() {
                com.ss.android.downloadlib.addownload.dq.p unused = d.dq = null;
                d.this.dq(i2, i2, dVar, "apk_size_cancel", "confirm");
            }
        };
        String ad = tn.ad("该下载任务仅需", mp.dq(totalBytes - dq3), "，即将下载完成，是否继续下载？");
        if (oxVar != null) {
            dq(new com.ss.android.downloadlib.addownload.dq.ox() { // from class: com.ss.android.downloadlib.addownload.p.d.2
                @Override // com.ss.android.downloadlib.addownload.dq.ox
                public void delete() {
                    com.ss.android.downloadlib.addownload.dq.p unused = d.dq = null;
                    d.this.dq(i2, i2, dVar, "apk_size_cancel", "delete");
                    oxVar.delete();
                }
            });
        }
        TTDelegateActivity.dq(dVar, ad, "继续", "暂停", "删除");
        return true;
    }
}

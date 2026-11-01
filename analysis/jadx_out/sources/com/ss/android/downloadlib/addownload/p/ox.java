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
public class ox implements mn {

    /* renamed from: d, reason: collision with root package name */
    private static com.ss.android.downloadlib.addownload.dq.ox f9181d;
    private static com.ss.android.downloadlib.addownload.dq.p dq;

    public static com.ss.android.downloadlib.addownload.dq.ox d() {
        return f9181d;
    }

    private int dq(int i) {
        return com.ss.android.socialbase.downloader.mn.dq.dq(i).dq("cancel_pause_optimise_download_percent_value", 50);
    }

    public static com.ss.android.downloadlib.addownload.dq.p dq() {
        return dq;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(int i, int i2, int i3, com.ss.android.downloadad.api.dq.d dVar, String str, String str2) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("pause_optimise_type", str);
            jSONObject.putOpt("pause_optimise_action", str2);
            jSONObject.putOpt("download_percent", Integer.valueOf(i));
            jSONObject.putOpt("download_current_bytes", Integer.valueOf(i2));
            jSONObject.putOpt("download_total_bytes", Integer.valueOf(i3));
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        com.ss.android.downloadlib.p.dq.dq().dq("pause_cancel_optimise", jSONObject, dVar);
    }

    public static void dq(com.ss.android.downloadlib.addownload.dq.ox oxVar) {
        f9181d = oxVar;
    }

    private boolean dq(com.ss.android.downloadad.api.dq.dq dqVar) {
        return com.ss.android.downloadlib.mn.s.dq(dqVar).dq("cancel_pause_optimise_download_percent_retain_switch", 0) == 1 && dqVar.fw();
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
        long curBytes = dq2.getCurBytes();
        long totalBytes = dq2.getTotalBytes();
        if (curBytes < 0 || totalBytes <= 0) {
            return false;
        }
        final int dq3 = com.ss.android.downloadlib.addownload.o.dq(dq2.getId(), (int) ((100 * curBytes) / totalBytes));
        final int i2 = (int) (curBytes / BaseConstants.MB_VALUE);
        boolean z = dq3 > dq(dVar.gh());
        dq = new com.ss.android.downloadlib.addownload.dq.p() { // from class: com.ss.android.downloadlib.addownload.p.ox.1
            @Override // com.ss.android.downloadlib.addownload.dq.p
            public void d() {
                com.ss.android.downloadlib.addownload.dq.p unused = ox.dq = null;
                ox.this.dq(dq3, i2, i2, dVar, "download_percent_cancel", ekq.PERMISSION_RESULT_CANCEL);
                iaVar.dq(dVar);
            }

            @Override // com.ss.android.downloadlib.addownload.dq.p
            public void dq() {
                com.ss.android.downloadlib.addownload.dq.p unused = ox.dq = null;
                ox.this.dq(dq3, i2, i2, dVar, "download_percent_cancel", "confirm");
            }
        };
        String dq4 = mp.dq(com.ss.android.downloadlib.addownload.o.dq(dVar.gh(), curBytes, totalBytes));
        String r = z ? tn.r("该任务已下载", dq4, "，仅需", mp.dq(totalBytes - curBytes), "即可下载完成，是否继续？") : tn.ad("该任务已下载", dq4, "，即将下载完成，是否继续下载？");
        if (oxVar != null) {
            dq(new com.ss.android.downloadlib.addownload.dq.ox() { // from class: com.ss.android.downloadlib.addownload.p.ox.2
                @Override // com.ss.android.downloadlib.addownload.dq.ox
                public void delete() {
                    com.ss.android.downloadlib.addownload.dq.p unused = ox.dq = null;
                    ox.this.dq(dq3, i2, i2, dVar, "download_percent_cancel", "delete");
                    oxVar.delete();
                }
            });
        }
        TTDelegateActivity.d(dVar, r, "继续", "暂停", "删除");
        return true;
    }
}

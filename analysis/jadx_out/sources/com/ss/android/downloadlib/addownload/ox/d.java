package com.ss.android.downloadlib.addownload.ox;

import com.ss.android.downloadlib.addownload.d.iw;
import com.ss.android.downloadlib.addownload.d.kk;
import com.ss.android.downloadlib.addownload.no;
import com.ss.android.downloadlib.mn.mp;
import com.ss.android.socialbase.downloader.downloader.Downloader;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class d implements Runnable {
    private DownloadInfo dq;

    public d(DownloadInfo downloadInfo) {
        this.dq = downloadInfo;
    }

    @Override // java.lang.Runnable
    public void run() {
        final com.ss.android.downloadad.api.dq.d dq;
        if (this.dq == null || (dq = iw.dq().dq(this.dq)) == null) {
            return;
        }
        com.ss.android.downloadlib.p.dq.dq().dq("cleanspace_task", dq);
        long longValue = Double.valueOf((com.ss.android.downloadlib.mn.s.dq(this.dq.getId()) + 1.0d) * this.dq.getTotalBytes()).longValue() - this.dq.getCurBytes();
        long d2 = mp.d(0L);
        if (no.mp() != null) {
            no.mp();
        }
        ox.dq();
        ox.d();
        if (com.ss.android.downloadlib.mn.s.mn(dq.gh())) {
            ox.dq(no.getContext());
        }
        long d3 = mp.d(0L);
        if (d3 >= longValue) {
            dq.ig("1");
            kk.dq().dq(dq);
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.putOpt("quite_clean_size", Long.valueOf(d3 - d2));
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
            com.ss.android.downloadlib.p.dq.dq().dq("cleanspace_download_after_quite_clean", jSONObject, dq);
            Downloader.getInstance(no.getContext()).restart(this.dq.getId());
            return;
        }
        if (no.mp() != null) {
            dq.p(false);
            p.dq().dq(dq.dq(), new s() { // from class: com.ss.android.downloadlib.addownload.ox.d.1
            });
            if (no.mp().dq(this.dq.getId(), this.dq.getUrl(), true, longValue)) {
                dq.s(true);
                return;
            }
            return;
        }
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.putOpt("show_dialog_result", 3);
        } catch (JSONException e3) {
            e3.printStackTrace();
        }
        com.ss.android.downloadlib.p.dq.dq().dq("cleanspace_window_show", jSONObject2, dq);
    }
}

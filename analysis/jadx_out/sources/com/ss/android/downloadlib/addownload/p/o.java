package com.ss.android.downloadlib.addownload.p;

import com.bytedance.sdk.openadsdk.TTAdConstant;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class o implements kk {
    private boolean d(int i) {
        return com.ss.android.socialbase.downloader.mn.dq.dq(i).dq("pause_optimise_mistake_click_interval_switch", 0) == 1;
    }

    private long dq(int i) {
        return com.ss.android.socialbase.downloader.mn.dq.dq(i).dq("pause_optimise_mistake_click_interval", TTAdConstant.DEFAULT_LIVE_SHOW_TIME_MAX);
    }

    @Override // com.ss.android.downloadlib.addownload.p.kk
    public boolean dq(com.ss.android.downloadad.api.dq.d dVar, int i, ia iaVar) {
        if (dVar == null || !d(dVar.gh())) {
            return false;
        }
        if (System.currentTimeMillis() - dVar.uh() > dq(dVar.gh())) {
            return false;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("pause_optimise_type", "mistake_click");
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        com.ss.android.downloadlib.p.dq.dq().dq("pause_optimise", jSONObject, dVar);
        return true;
    }
}

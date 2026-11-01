package com.ss.android.downloadlib.addownload.d;

import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ia {
    private static volatile ia dq;

    private ia() {
    }

    public static ia dq() {
        if (dq == null) {
            synchronized (p.class) {
                try {
                    if (dq == null) {
                        dq = new ia();
                    }
                } finally {
                }
            }
        }
        return dq;
    }

    public void dq(int i, int i2, com.ss.android.downloadad.api.dq.d dVar) {
        if (dVar == null) {
            return;
        }
        com.ss.android.socialbase.downloader.mn.dq dq2 = com.ss.android.socialbase.downloader.mn.dq.dq(dVar.gh());
        if (dq2.dq("report_api_hijack", 0) == 0) {
            return;
        }
        int i3 = i2 - i;
        if (i <= 0 || i3 <= dq2.dq("check_api_hijack_version_code_diff", 500)) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("version_code_diff", i3);
            jSONObject.put("installed_version_code", i2);
            jSONObject.put("hijack_type", 1);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        com.ss.android.downloadlib.p.dq.dq().d("api_hijack", jSONObject, dVar);
    }
}

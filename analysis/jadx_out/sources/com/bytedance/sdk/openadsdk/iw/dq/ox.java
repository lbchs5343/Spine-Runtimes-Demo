package com.bytedance.sdk.openadsdk.iw.dq;

import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class ox implements d {
    d dq;

    @Override // com.bytedance.sdk.openadsdk.iw.dq.d
    public void dq(JSONObject jSONObject) throws JSONException {
        d dVar = this.dq;
        if (dVar != null) {
            dVar.dq(jSONObject);
        }
        jSONObject.put("event_ts", System.currentTimeMillis());
    }
}

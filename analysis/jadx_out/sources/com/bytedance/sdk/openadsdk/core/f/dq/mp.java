package com.bytedance.sdk.openadsdk.core.f.dq;

import org.json.JSONObject;

/* loaded from: classes3.dex */
public class mp extends com.bytedance.sdk.component.dq.s<JSONObject, JSONObject> {
    private JSONObject dq;

    public mp(JSONObject jSONObject) {
        this.dq = jSONObject;
    }

    public static void dq(com.bytedance.sdk.component.dq.fw fwVar, JSONObject jSONObject) {
        fwVar.dq("getData", (com.bytedance.sdk.component.dq.s<?, ?>) new mp(jSONObject));
    }

    @Override // com.bytedance.sdk.component.dq.s
    public JSONObject dq(JSONObject jSONObject, com.bytedance.sdk.component.dq.iw iwVar) throws Exception {
        return com.bytedance.sdk.openadsdk.core.nativeexpress.d.d.dq(this.dq, jSONObject);
    }
}

package com.bytedance.sdk.openadsdk.core.f.dq;

import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class c extends com.bytedance.sdk.component.dq.s<JSONObject, JSONObject> {
    private com.bytedance.sdk.openadsdk.core.c dq;

    public c(com.bytedance.sdk.openadsdk.core.c cVar) {
        this.dq = cVar;
    }

    public static void dq(com.bytedance.sdk.component.dq.fw fwVar, com.bytedance.sdk.openadsdk.core.c cVar) {
        fwVar.dq("ShowUgenDownloadDialog", (com.bytedance.sdk.component.dq.s<?, ?>) new c(cVar));
    }

    @Override // com.bytedance.sdk.component.dq.s
    public JSONObject dq(JSONObject jSONObject, com.bytedance.sdk.component.dq.iw iwVar) throws Exception {
        return ox();
    }

    public JSONObject ox() {
        JSONObject jSONObject = new JSONObject();
        com.bytedance.sdk.openadsdk.core.c cVar = this.dq;
        if (cVar != null) {
            return cVar.q();
        }
        try {
            jSONObject.put(PluginConstants.KEY_ERROR_CODE, -1);
            jSONObject.put("codeMsg", "JsObject is null");
            return jSONObject;
        } catch (JSONException e2) {
            throw new RuntimeException(e2);
        }
    }
}

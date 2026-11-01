package com.bytedance.sdk.openadsdk.core.f.dq;

import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class h extends com.bytedance.sdk.component.dq.s<JSONObject, JSONObject> {
    private com.bytedance.sdk.openadsdk.core.ugeno.d dq;

    public h(com.bytedance.sdk.openadsdk.core.ugeno.d dVar) {
        this.dq = dVar;
    }

    public static void dq(com.bytedance.sdk.component.dq.fw fwVar, com.bytedance.sdk.openadsdk.core.ugeno.d dVar) {
        fwVar.dq("RendUgenDownloadDialogState", (com.bytedance.sdk.component.dq.s<?, ?>) new h(dVar));
    }

    private void dq(JSONObject jSONObject) {
        if (jSONObject == null || this.dq == null) {
            return;
        }
        int optInt = jSONObject.optInt(PluginConstants.KEY_ERROR_CODE);
        if (optInt == 200) {
            this.dq.dq();
        } else {
            this.dq.dq(optInt, jSONObject.optString(MediationConstant.KEY_ERROR_MSG));
        }
    }

    @Override // com.bytedance.sdk.component.dq.s
    public JSONObject dq(JSONObject jSONObject, com.bytedance.sdk.component.dq.iw iwVar) throws Exception {
        dq(jSONObject);
        return ox();
    }

    public JSONObject ox() {
        return new JSONObject();
    }
}

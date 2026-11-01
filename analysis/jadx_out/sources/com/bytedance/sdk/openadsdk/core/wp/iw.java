package com.bytedance.sdk.openadsdk.core.wp;

import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class iw {
    private JSONObject dq;

    public iw(JSONObject jSONObject) {
        this.dq = jSONObject;
    }

    public int dq() {
        JSONObject jSONObject = this.dq;
        if (jSONObject != null) {
            return jSONObject.optInt(PluginConstants.KEY_ERROR_CODE, -1);
        }
        return -1;
    }

    public String toString() {
        JSONObject jSONObject = this.dq;
        return jSONObject != null ? jSONObject.toString() : "pitaya error is null";
    }
}

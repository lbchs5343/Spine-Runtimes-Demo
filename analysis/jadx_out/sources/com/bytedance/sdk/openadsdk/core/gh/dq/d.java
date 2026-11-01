package com.bytedance.sdk.openadsdk.core.gh.dq;

import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class d extends ox<d> {
    @Override // com.bytedance.sdk.openadsdk.core.gh.dq.ox, com.bytedance.sdk.openadsdk.core.gh.dq.dq
    public JSONObject dq() {
        JSONObject dq = super.dq();
        try {
            dq.put(PluginConstants.KEY_PLUGIN_VERSION, com.bytedance.sdk.openadsdk.core.live.d.dq().mn());
        } catch (Exception unused) {
        }
        return dq;
    }
}

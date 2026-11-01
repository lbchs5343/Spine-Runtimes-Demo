package com.bytedance.msdk.mn.ox;

import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class d {
    private static volatile d dq;

    private d() {
    }

    public static d dq() {
        if (dq == null) {
            synchronized (d.class) {
                try {
                    if (dq == null) {
                        dq = new d();
                    }
                } finally {
                }
            }
        }
        return dq;
    }

    public void dq(JSONArray jSONArray) {
        if (jSONArray == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.api.plugin.d.d(com.bytedance.msdk.core.dq.getContext(), "tt_sdk_test_tool_data_" + com.bytedance.msdk.core.d.no().ig(), 0).edit().putString("rit_conf", jSONArray.toString()).apply();
    }

    public void dq(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.api.plugin.d.d(com.bytedance.msdk.core.dq.getContext(), "tt_sdk_test_tool_data_" + com.bytedance.msdk.core.d.no().ig(), 0).edit().putString("adn_init_conf", jSONObject.toString()).apply();
    }
}

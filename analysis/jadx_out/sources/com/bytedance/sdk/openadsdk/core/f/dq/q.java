package com.bytedance.sdk.openadsdk.core.f.dq;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.bytedance.sdk.openadsdk.core.jy.dq;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class q extends com.bytedance.sdk.component.dq.s<JSONObject, JSONObject> {
    public static JSONObject dq(JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        if (jSONObject == null) {
            dq(jSONObject2, 1, "params is null", 1, 1);
            return jSONObject2;
        }
        try {
            String optString = jSONObject.optString("ad_down_load_id");
            if (!TextUtils.isEmpty(optString)) {
                return dq.C0166dq.dq(optString);
            }
            dq(jSONObject2, 1, "ad_down_load_id is null", 1, 1);
            return jSONObject2;
        } catch (Throwable unused) {
            return jSONObject2;
        }
    }

    public static void dq(com.bytedance.sdk.component.dq.fw fwVar) {
        fwVar.dq("getDownloadStatus", (com.bytedance.sdk.component.dq.s<?, ?>) new q());
    }

    private static void dq(JSONObject jSONObject, int i, String str, int i2, int i3) {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put(PluginConstants.KEY_ERROR_CODE, i);
            jSONObject.put("codeMsg", str);
            jSONObject.put("downloadStatus", i2);
            jSONObject.put("downloadProcessRate", i3);
        } catch (Exception unused) {
        }
    }

    @Override // com.bytedance.sdk.component.dq.s
    public JSONObject dq(JSONObject jSONObject, com.bytedance.sdk.component.dq.iw iwVar) throws Exception {
        return dq(jSONObject);
    }
}

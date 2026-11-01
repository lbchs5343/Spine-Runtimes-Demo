package com.bytedance.sdk.openadsdk.core.r;

import android.text.TextUtils;
import g.abn;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class ir {
    public JSONObject dq;

    public static ir dq(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return dq(new JSONObject(str));
        } catch (JSONException unused) {
            return null;
        }
    }

    public static ir dq(JSONObject jSONObject) {
        ir irVar = new ir();
        irVar.dq = jSONObject;
        return irVar;
    }

    public String dq() {
        JSONObject jSONObject = this.dq;
        JSONObject optJSONObject = jSONObject == null ? null : jSONObject.optJSONObject("performance_js");
        return optJSONObject != null ? optJSONObject.optString(abn.EXTRA_URL) : "";
    }

    public String toString() {
        JSONObject jSONObject = this.dq;
        return jSONObject == null ? "" : jSONObject.toString();
    }
}

package com.bytedance.sdk.openadsdk.core.live.p;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.r.j;
import g.abn;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class p {
    public static boolean dq(j jVar) {
        JSONObject s;
        com.bytedance.sdk.openadsdk.core.ugeno.o.dq r = jVar.r();
        return (r == null || (s = r.s()) == null || s.optBoolean("landing_type", false)) ? false : true;
    }

    public static boolean dq(String str) {
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        try {
            JSONArray jSONArray = new JSONArray(str);
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                if (jSONObject != null) {
                    String optString = jSONObject.optString(abn.EXTRA_UA_APP_NAME, null);
                    if (TextUtils.equals(optString, "ec_reward_gold") || TextUtils.equals(optString, "reward_gold") || TextUtils.equals(optString, "auth_reward_gold")) {
                        return false;
                    }
                }
            }
            return true;
        } catch (Throwable unused) {
            return true;
        }
    }
}

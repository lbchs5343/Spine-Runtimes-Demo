package com.bytedance.sdk.openadsdk.api.plugin;

import android.os.Bundle;
import android.util.Pair;
import com.bytedance.sdk.openadsdk.TTAdManager;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
final class s {
    private static List<Pair<String, JSONObject>> dq = new ArrayList();

    public static void d(String str, JSONObject jSONObject) {
        dq.add(new Pair<>(str, jSONObject));
    }

    public static void dq() {
        if (dq.size() <= 0) {
            return;
        }
        try {
            for (Pair<String, JSONObject> pair : dq) {
                if (pair != null) {
                    ox((String) pair.first, (JSONObject) pair.second);
                }
            }
            dq.clear();
        } catch (Exception unused) {
        }
    }

    public static void dq(int i, String str, long j) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt(MediationConstant.EXTRA_DURATION, Long.valueOf(j));
            jSONObject.putOpt(PluginConstants.KEY_ERROR_CODE, Integer.valueOf(i));
            jSONObject.putOpt("message", str);
            jSONObject.putOpt("isBoost", Boolean.TRUE);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        ox("plugin_load_failed", jSONObject);
    }

    public static void dq(String str, JSONObject jSONObject) {
        ox("zeus_".concat(String.valueOf(str)), jSONObject);
    }

    private static void ox(String str, JSONObject jSONObject) {
        TTAdManager adManager = TTAdSdk.getAdManager();
        if (adManager != null) {
            Bundle bundle = new Bundle();
            bundle.putInt("action", 1);
            bundle.putString("event_name", str);
            bundle.putString("event_extra", jSONObject.toString());
            adManager.getExtra(Bundle.class, bundle);
        }
    }
}

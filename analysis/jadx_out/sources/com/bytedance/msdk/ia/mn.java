package com.bytedance.msdk.ia;

import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class mn {
    public static JSONObject dq() {
        Map<String, com.bytedance.msdk.dq.dq.p> d2 = com.bytedance.msdk.iw.d.d.dq().d();
        if (d2 == null) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry<String, com.bytedance.msdk.dq.dq.p> entry : d2.entrySet()) {
            if (entry.getKey() != null) {
                String[] split = entry.getKey().split("\\.");
                if (split.length >= 5) {
                    try {
                        jSONObject.put(split[4] + "Adapter", entry.getValue().dq());
                    } catch (JSONException e2) {
                        e2.printStackTrace();
                    }
                }
            }
        }
        return jSONObject;
    }
}

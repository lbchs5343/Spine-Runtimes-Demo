package com.bytedance.sdk.openadsdk.core.r;

import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class op {

    /* renamed from: d, reason: collision with root package name */
    private int f3502d;
    private boolean dq;

    public op(JSONObject jSONObject) {
        JSONObject optJSONObject = jSONObject.optJSONObject("landing_page_conf");
        if (optJSONObject != null) {
            this.dq = optJSONObject.optInt("swipe_back_type", 0) == 1;
            this.f3502d = optJSONObject.optInt("filter_track", 0);
        }
    }

    public static boolean d(j jVar) {
        op ox = ox(jVar);
        return ox != null && ox.f3502d == 1;
    }

    public static boolean dq(j jVar) {
        op ox = ox(jVar);
        if (ox == null) {
            return false;
        }
        return ox.dq;
    }

    private static op ox(j jVar) {
        if (jVar == null) {
            return null;
        }
        return jVar.nm();
    }

    public void dq(JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("swipe_back_type", this.dq ? 1 : 0);
            jSONObject2.put("filter_track", this.f3502d);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        try {
            jSONObject.put("landing_page_conf", jSONObject2);
        } catch (JSONException e3) {
            e3.printStackTrace();
        }
    }
}

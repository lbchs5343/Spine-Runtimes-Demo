package com.bytedance.msdk.core.no;

import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class s {

    /* renamed from: d, reason: collision with root package name */
    private double f999d;
    private double dq;
    private String iw;
    private JSONObject mn;
    private int ox;
    private String p;
    private int s;

    private s(double d2, double d3, int i, String str, int i2, String str2, JSONObject jSONObject) {
        this.dq = d2;
        this.f999d = d3;
        this.ox = i;
        this.p = str;
        this.s = i2;
        this.iw = str2;
        this.mn = jSONObject;
    }

    public static void dq(JSONObject jSONObject, Map<String, s> map) {
        JSONArray optJSONArray;
        String optString;
        if (jSONObject == null || (optJSONArray = jSONObject.optJSONArray("prime_rits")) == null) {
            return;
        }
        for (int i = 0; i < optJSONArray.length(); i++) {
            try {
                optString = optJSONArray.optString(i);
            } catch (Exception e2) {
                e = e2;
            }
            try {
                map.put(optString, new s(jSONObject.optDouble("upper", 0.0d), jSONObject.optDouble("lower", 0.0d), jSONObject.optInt("type"), optString, jSONObject.optInt("js_mode"), jSONObject.optString("rule_id"), jSONObject.optJSONObject("refresh_time")));
            } catch (Exception e3) {
                e = e3;
                e.printStackTrace();
            }
        }
    }

    public double d() {
        return this.f999d;
    }

    public double dq() {
        return this.dq;
    }

    public int dq(String str) {
        JSONObject jSONObject = this.mn;
        if (jSONObject != null) {
            return jSONObject.optInt(str);
        }
        return 0;
    }

    public int getType() {
        return this.ox;
    }

    public int ox() {
        return this.s;
    }

    public String p() {
        return this.iw;
    }

    public boolean s() {
        return this.dq <= 0.0d && this.f999d <= 0.0d;
    }
}

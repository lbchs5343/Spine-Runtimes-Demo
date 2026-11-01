package com.bytedance.sdk.openadsdk.core.r;

import android.text.TextUtils;
import g.awf;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class fw {
    private static volatile String dq;

    /* renamed from: d, reason: collision with root package name */
    private String f3441d;
    private String ox;
    private int p;
    private JSONObject s;

    public fw() {
    }

    public fw(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        d(jSONObject.optString("deeplink_url"));
        ox(jSONObject.optString("fallback_url"));
        dq(jSONObject.optInt("fallback_type"));
        this.s = jSONObject.optJSONObject("addon_params");
    }

    public static void dq(String str) {
        dq = str;
    }

    private String p(String str) {
        if (this.s != null && !TextUtils.isEmpty(str) && this.f3441d != null) {
            String optString = this.s.optString(str);
            if (!TextUtils.isEmpty(optString)) {
                return awf.f(this.f3441d, this.f3441d.contains("?") ? "&" : "?", optString, new StringBuilder());
            }
        }
        return this.f3441d;
    }

    public String d() {
        return this.ox;
    }

    public void d(String str) {
        this.f3441d = str;
    }

    public String dq() {
        return p(dq);
    }

    public void dq(int i) {
        this.p = i;
    }

    public void dq(fw fwVar) {
        if (fwVar == null) {
            return;
        }
        if (!TextUtils.isEmpty(fwVar.dq())) {
            d(fwVar.dq());
        }
        if (!TextUtils.isEmpty(fwVar.d())) {
            ox(fwVar.d());
        }
        if (fwVar.ox() != 0) {
            dq(fwVar.ox());
        }
    }

    public void dq(JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("deeplink_url", dq());
            jSONObject2.put("fallback_url", d());
            jSONObject2.put("fallback_type", ox());
            jSONObject2.put("addon_params", this.s);
            jSONObject.put("deep_link", jSONObject2);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    public int ox() {
        return this.p;
    }

    public void ox(String str) {
        this.ox = str;
    }
}

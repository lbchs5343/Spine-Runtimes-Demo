package com.bytedance.sdk.openadsdk.core.r;

import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class wn {

    /* renamed from: d, reason: collision with root package name */
    private int f3520d;
    private int dq;
    private String ox;
    private String p;

    public static wn dq(String str) {
        try {
            return dq(new JSONObject(str));
        } catch (JSONException e2) {
            com.bytedance.sdk.component.utils.ig.d("LiveSdkConfig", "parse failed:".concat(String.valueOf(e2)));
            return new wn();
        }
    }

    public static wn dq(JSONObject jSONObject) {
        wn wnVar = new wn();
        wnVar.dq(jSONObject.optInt("ad_live_status"));
        wnVar.d(jSONObject.optInt(PluginConstants.KEY_APP_ID));
        wnVar.d(jSONObject.optString("partner"));
        wnVar.ox(jSONObject.optString("secure_key"));
        return wnVar;
    }

    public int d() {
        return this.f3520d;
    }

    public void d(int i) {
        this.f3520d = i;
    }

    public void d(String str) {
        this.ox = str;
    }

    public int dq() {
        return this.dq;
    }

    public void dq(int i) {
        this.dq = i;
    }

    public String ox() {
        return this.ox;
    }

    public void ox(String str) {
        this.p = str;
    }

    public String p() {
        return this.p;
    }

    public boolean s() {
        return this.dq == 1;
    }

    public String toString() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("ad_live_status", dq());
            jSONObject.put(PluginConstants.KEY_APP_ID, d());
            jSONObject.put("partner", ox());
            jSONObject.put("secure_key", p());
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        return jSONObject.toString();
    }
}

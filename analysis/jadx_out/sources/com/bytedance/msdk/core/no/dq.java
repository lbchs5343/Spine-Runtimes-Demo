package com.bytedance.msdk.core.no;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class dq {

    /* renamed from: d, reason: collision with root package name */
    private String f987d;
    private String dq;
    private com.bytedance.msdk.api.p.dq.d.ox.d ox;

    public dq(String str, String str2) {
        this.dq = str;
        this.f987d = str2;
        this.ox = new com.bytedance.msdk.api.p.dq.d.ox.d();
    }

    public dq(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12) {
        this.dq = str2;
        this.f987d = str3;
        this.ox = new com.bytedance.msdk.api.p.dq.d.ox.d(str, str2, str3, str4, str5, str6, str7, str8, str9, str10, str11, str12);
    }

    public static dq dq(String str, JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        String optString = jSONObject.optString(PluginConstants.KEY_APP_ID);
        String optString2 = jSONObject.optString("app_key");
        String optString3 = jSONObject.optString("custom_type");
        return !TextUtils.equals(optString3, "1") ? new dq(optString, optString2) : new dq(str, optString, optString2, jSONObject.optString("init_class_name"), jSONObject.optString("banner_class_name"), jSONObject.optString("interstitial_class_name"), jSONObject.optString("reward_class_name"), jSONObject.optString("full_video_class_name"), jSONObject.optString("splash_class_name"), jSONObject.optString("feed_class_name"), jSONObject.optString("draw_class_name"), optString3);
    }

    public String d() {
        return this.f987d;
    }

    public String dq() {
        return this.dq;
    }

    public com.bytedance.msdk.api.p.dq.d.ox.d ox() {
        return this.ox;
    }

    public boolean p() {
        com.bytedance.msdk.api.p.dq.d.ox.d dVar = this.ox;
        return dVar != null && dVar.p();
    }

    public String s() {
        com.bytedance.msdk.api.p.dq.d.ox.d dVar = this.ox;
        if (dVar != null) {
            return dVar.d();
        }
        return null;
    }

    public String toString() {
        return "AdNetworkConfValue{mAppId='" + this.dq + "', mAppKey='" + this.f987d + "', mGMCustomConfig=" + this.ox + '}';
    }
}

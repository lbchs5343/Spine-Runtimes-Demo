package com.bytedance.sdk.openadsdk.core.f.dq;

import com.bytedance.sdk.openadsdk.core.c;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class i extends com.bytedance.sdk.component.dq.s<JSONObject, JSONObject> {

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.core.c f2852d;
    private String dq;

    public i(String str, com.bytedance.sdk.openadsdk.core.c cVar) {
        this.f2852d = cVar;
        this.dq = str;
    }

    public static void dq(com.bytedance.sdk.component.dq.fw fwVar, com.bytedance.sdk.openadsdk.core.c cVar) {
        fwVar.dq("appInfo", (com.bytedance.sdk.component.dq.s<?, ?>) new i("appInfo", cVar));
        fwVar.dq("adInfo", (com.bytedance.sdk.component.dq.s<?, ?>) new i("adInfo", cVar));
        fwVar.dq("playable_style", (com.bytedance.sdk.component.dq.s<?, ?>) new i("playable_style", cVar));
        fwVar.dq("getTemplateInfo", (com.bytedance.sdk.component.dq.s<?, ?>) new i("getTemplateInfo", cVar));
        fwVar.dq("getTeMaiAds", (com.bytedance.sdk.component.dq.s<?, ?>) new i("getTeMaiAds", cVar));
        fwVar.dq("isViewable", (com.bytedance.sdk.component.dq.s<?, ?>) new i("isViewable", cVar));
        fwVar.dq("getScreenSize", (com.bytedance.sdk.component.dq.s<?, ?>) new i("getScreenSize", cVar));
        fwVar.dq("getCloseButtonInfo", (com.bytedance.sdk.component.dq.s<?, ?>) new i("getCloseButtonInfo", cVar));
        fwVar.dq("getVolume", (com.bytedance.sdk.component.dq.s<?, ?>) new i("getVolume", cVar));
        fwVar.dq("removeLoading", (com.bytedance.sdk.component.dq.s<?, ?>) new i("removeLoading", cVar));
        fwVar.dq("sendReward", (com.bytedance.sdk.component.dq.s<?, ?>) new i("sendReward", cVar));
        fwVar.dq("subscribe_app_ad", (com.bytedance.sdk.component.dq.s<?, ?>) new i("subscribe_app_ad", cVar));
        fwVar.dq("download_app_ad", (com.bytedance.sdk.component.dq.s<?, ?>) new i("download_app_ad", cVar));
        fwVar.dq("cancel_download_app_ad", (com.bytedance.sdk.component.dq.s<?, ?>) new i("cancel_download_app_ad", cVar));
        fwVar.dq("unsubscribe_app_ad", (com.bytedance.sdk.component.dq.s<?, ?>) new i("unsubscribe_app_ad", cVar));
        fwVar.dq("landscape_click", (com.bytedance.sdk.component.dq.s<?, ?>) new i("landscape_click", cVar));
        fwVar.dq("clickEvent", (com.bytedance.sdk.component.dq.s<?, ?>) new i("clickEvent", cVar));
        fwVar.dq("renderDidFinish", (com.bytedance.sdk.component.dq.s<?, ?>) new i("renderDidFinish", cVar));
        fwVar.dq("dynamicTrack", (com.bytedance.sdk.component.dq.s<?, ?>) new i("dynamicTrack", cVar));
        fwVar.dq("skipVideo", (com.bytedance.sdk.component.dq.s<?, ?>) new i("skipVideo", cVar));
        fwVar.dq("muteVideo", (com.bytedance.sdk.component.dq.s<?, ?>) new i("muteVideo", cVar));
        fwVar.dq("changeVideoState", (com.bytedance.sdk.component.dq.s<?, ?>) new i("changeVideoState", cVar));
        fwVar.dq("getCurrentVideoState", (com.bytedance.sdk.component.dq.s<?, ?>) new i("getCurrentVideoState", cVar));
        fwVar.dq("send_temai_product_ids", (com.bytedance.sdk.component.dq.s<?, ?>) new i("send_temai_product_ids", cVar));
        fwVar.dq("getMaterialMeta", (com.bytedance.sdk.component.dq.s<?, ?>) new i("getMaterialMeta", cVar));
        fwVar.dq("endcard_load", (com.bytedance.sdk.component.dq.s<?, ?>) new i("endcard_load", cVar));
        fwVar.dq("pauseWebView", (com.bytedance.sdk.component.dq.s<?, ?>) new i("pauseWebView", cVar));
        fwVar.dq("pauseWebViewTimers", (com.bytedance.sdk.component.dq.s<?, ?>) new i("pauseWebViewTimers", cVar));
        fwVar.dq("webview_time_track", (com.bytedance.sdk.component.dq.s<?, ?>) new i("webview_time_track", cVar));
        fwVar.dq("adInfoStash", (com.bytedance.sdk.component.dq.s<?, ?>) new i("adInfoStash", cVar));
    }

    @Override // com.bytedance.sdk.component.dq.s
    public JSONObject dq(JSONObject jSONObject, com.bytedance.sdk.component.dq.iw iwVar) throws Exception {
        c.dq dqVar = new c.dq();
        dqVar.dq = "call";
        dqVar.ox = this.dq;
        dqVar.p = jSONObject;
        return this.f2852d.dq(dqVar, 3);
    }
}

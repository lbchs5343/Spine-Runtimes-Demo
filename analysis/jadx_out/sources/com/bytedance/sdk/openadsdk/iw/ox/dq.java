package com.bytedance.sdk.openadsdk.iw.ox;

import org.json.JSONObject;

/* loaded from: classes3.dex */
public abstract class dq implements p {
    private com.bykv.vk.openvk.component.video.api.ox.p dq;

    public com.bykv.vk.openvk.component.video.api.ox.p dq() {
        return this.dq;
    }

    public void dq(com.bykv.vk.openvk.component.video.api.ox.p pVar) {
        this.dq = pVar;
    }

    public void dq(JSONObject jSONObject) {
        try {
            com.bykv.vk.openvk.component.video.api.ox.p pVar = this.dq;
            if (pVar == null || jSONObject == null) {
                return;
            }
            JSONObject dq = pVar.dq();
            jSONObject.put("pitaya_cache_size", this.dq.d());
            jSONObject.put("pitaya_code", this.dq.ox());
            jSONObject.put("pitaya_msg", this.dq.p());
            jSONObject.put("ext_plugin_code", dq.optInt("ext_plugin_code"));
            jSONObject.put("package", dq.optJSONObject("package"));
        } catch (Exception unused) {
        }
    }
}

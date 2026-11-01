package com.bytedance.sdk.openadsdk.core.f.dq;

import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class d extends com.bytedance.sdk.component.dq.s<JSONObject, JSONObject> {

    /* renamed from: d, reason: collision with root package name */
    private String f2847d;
    private SSWebView dq;

    public d(SSWebView sSWebView, String str) {
        this.dq = sSWebView;
        this.f2847d = str;
    }

    public static void dq(com.bytedance.sdk.component.dq.fw fwVar, SSWebView sSWebView, String str) {
        fwVar.dq("start_twist_observer", (com.bytedance.sdk.component.dq.s<?, ?>) new d(sSWebView, str));
    }

    @Override // com.bytedance.sdk.component.dq.s
    public JSONObject dq(JSONObject jSONObject, com.bytedance.sdk.component.dq.iw iwVar) throws Exception {
        return ox();
    }

    public JSONObject ox() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (com.bytedance.sdk.openadsdk.core.no.ia().d(com.bytedance.sdk.openadsdk.core.wp.getContext()) && this.dq != null) {
                jSONObject.put(PluginConstants.KEY_ERROR_CODE, 0);
                jSONObject.put("codeMsg", "success");
                this.dq.dq(2, com.bytedance.sdk.openadsdk.core.no.ia().s());
                return jSONObject;
            }
            jSONObject.put(PluginConstants.KEY_ERROR_CODE, -1);
            jSONObject.put("codeMsg", "unavailable");
        } catch (Throwable unused) {
        }
        return jSONObject;
    }
}

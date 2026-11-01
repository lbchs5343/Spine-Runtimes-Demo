package com.bytedance.sdk.openadsdk.core.f.dq;

import com.bytedance.sdk.component.widget.SSWebView;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class wp extends com.bytedance.sdk.component.dq.s<JSONObject, JSONObject> {
    private WeakReference<SSWebView> dq;

    public wp(SSWebView sSWebView) {
        this.dq = new WeakReference<>(sSWebView);
    }

    public static void dq(com.bytedance.sdk.component.dq.fw fwVar, SSWebView sSWebView) {
        fwVar.dq("preventTouchEvent", (com.bytedance.sdk.component.dq.s<?, ?>) new wp(sSWebView));
    }

    @Override // com.bytedance.sdk.component.dq.s
    public JSONObject dq(JSONObject jSONObject, com.bytedance.sdk.component.dq.iw iwVar) throws Exception {
        JSONObject jSONObject2 = new JSONObject();
        try {
            boolean optBoolean = jSONObject.optBoolean("isPrevent", false);
            SSWebView sSWebView = this.dq.get();
            if (sSWebView == null) {
                jSONObject2.put("success", false);
                return jSONObject2;
            }
            sSWebView.setIsPreventTouchEvent(optBoolean);
            jSONObject2.put("success", true);
            return jSONObject2;
        } catch (Throwable unused) {
            jSONObject2.put("success", false);
            return jSONObject2;
        }
    }
}

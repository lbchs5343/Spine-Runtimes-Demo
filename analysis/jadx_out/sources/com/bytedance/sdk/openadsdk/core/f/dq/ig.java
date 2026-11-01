package com.bytedance.sdk.openadsdk.core.f.dq;

import java.lang.ref.WeakReference;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class ig extends com.bytedance.sdk.component.dq.s<JSONObject, JSONObject> {
    private WeakReference<com.bytedance.sdk.openadsdk.core.c> dq;

    public ig(com.bytedance.sdk.openadsdk.core.c cVar) {
        this.dq = new WeakReference<>(cVar);
    }

    public static void dq(com.bytedance.sdk.component.dq.fw fwVar, com.bytedance.sdk.openadsdk.core.c cVar) {
        fwVar.dq("getAppManage", (com.bytedance.sdk.component.dq.s<?, ?>) new ig(cVar));
    }

    @Override // com.bytedance.sdk.component.dq.s
    public JSONObject dq(JSONObject jSONObject, com.bytedance.sdk.component.dq.iw iwVar) throws Exception {
        return ox();
    }

    public JSONObject ox() {
        com.bytedance.sdk.openadsdk.core.c cVar;
        JSONObject jSONObject = new JSONObject();
        try {
            WeakReference<com.bytedance.sdk.openadsdk.core.c> weakReference = this.dq;
            if (weakReference != null && (cVar = weakReference.get()) != null) {
                return cVar.bl();
            }
            return jSONObject;
        } catch (Throwable unused) {
            return jSONObject;
        }
    }
}

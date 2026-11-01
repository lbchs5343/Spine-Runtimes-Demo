package com.bytedance.sdk.openadsdk.core.f.dq;

import java.lang.ref.WeakReference;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class fw extends com.bytedance.sdk.component.dq.s<JSONObject, JSONObject> {
    private WeakReference<com.bytedance.sdk.openadsdk.core.c> dq;

    public fw(com.bytedance.sdk.openadsdk.core.c cVar) {
        this.dq = new WeakReference<>(cVar);
    }

    public static void dq(com.bytedance.sdk.component.dq.fw fwVar, com.bytedance.sdk.openadsdk.core.c cVar) {
        fwVar.dq("getSendRewardStatus", (com.bytedance.sdk.component.dq.s<?, ?>) new fw(cVar));
    }

    @Override // com.bytedance.sdk.component.dq.s
    public JSONObject dq(JSONObject jSONObject, com.bytedance.sdk.component.dq.iw iwVar) throws Exception {
        com.bytedance.sdk.openadsdk.core.c cVar;
        JSONObject jSONObject2 = new JSONObject();
        WeakReference<com.bytedance.sdk.openadsdk.core.c> weakReference = this.dq;
        if (weakReference != null && weakReference.get() != null && (cVar = this.dq.get()) != null) {
            jSONObject2.put("isReward", cVar.mn());
        }
        return jSONObject2;
    }
}

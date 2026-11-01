package com.bytedance.sdk.openadsdk.core.f.dq;

import java.lang.ref.WeakReference;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class k extends com.bytedance.sdk.component.dq.s<JSONObject, JSONObject> {

    /* renamed from: d, reason: collision with root package name */
    private WeakReference<com.bytedance.sdk.openadsdk.core.ugeno.ia.d> f2856d;
    private com.bytedance.sdk.openadsdk.core.c dq;

    public k(com.bytedance.sdk.openadsdk.core.c cVar, WeakReference<com.bytedance.sdk.openadsdk.core.ugeno.ia.d> weakReference) {
        this.dq = cVar;
        this.f2856d = weakReference;
    }

    public static void dq(com.bytedance.sdk.component.dq.fw fwVar, com.bytedance.sdk.openadsdk.core.c cVar, WeakReference<com.bytedance.sdk.openadsdk.core.ugeno.ia.d> weakReference) {
        fwVar.dq("pauseRewardCountDown", (com.bytedance.sdk.component.dq.s<?, ?>) new k(cVar, weakReference));
    }

    @Override // com.bytedance.sdk.component.dq.s
    public JSONObject dq(JSONObject jSONObject, com.bytedance.sdk.component.dq.iw iwVar) throws Exception {
        JSONObject jSONObject2 = new JSONObject();
        WeakReference<com.bytedance.sdk.openadsdk.core.ugeno.ia.d> weakReference = this.f2856d;
        if (weakReference == null || weakReference.get() == null) {
            jSONObject2.put("success", false);
            return jSONObject2;
        }
        this.f2856d.get().dq();
        jSONObject2.put("success", true);
        return jSONObject2;
    }
}

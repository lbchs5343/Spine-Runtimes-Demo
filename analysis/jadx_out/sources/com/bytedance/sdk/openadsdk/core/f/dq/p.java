package com.bytedance.sdk.openadsdk.core.f.dq;

import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class p extends com.bytedance.sdk.component.dq.s<JSONObject, JSONObject> {
    private WeakReference<com.bytedance.sdk.openadsdk.core.c> dq;

    public p(com.bytedance.sdk.openadsdk.core.c cVar) {
        this.dq = new WeakReference<>(cVar);
    }

    public static void dq(com.bytedance.sdk.component.dq.fw fwVar, com.bytedance.sdk.openadsdk.core.c cVar) {
        fwVar.dq("changePlaySpeedRatio", (com.bytedance.sdk.component.dq.s<?, ?>) new p(cVar));
    }

    @Override // com.bytedance.sdk.component.dq.s
    public JSONObject dq(JSONObject jSONObject, com.bytedance.sdk.component.dq.iw iwVar) throws Exception {
        WeakReference<com.bytedance.sdk.openadsdk.core.c> weakReference = this.dq;
        if (weakReference == null || weakReference.get() == null) {
            return new JSONObject();
        }
        float optDouble = (float) jSONObject.optDouble("ratio");
        if (optDouble > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT && optDouble <= 3.0f) {
            this.dq.get().dq(optDouble);
        }
        return new JSONObject();
    }
}

package com.bytedance.sdk.openadsdk.core.f.dq;

import com.bytedance.sdk.openadsdk.core.r.j;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class er extends com.bytedance.sdk.component.dq.s<JSONObject, JSONObject> {

    /* renamed from: d, reason: collision with root package name */
    private j f2851d;
    private WeakReference<com.bytedance.sdk.openadsdk.core.c> dq;

    public er(com.bytedance.sdk.openadsdk.core.c cVar, j jVar) {
        this.dq = new WeakReference<>(cVar);
        this.f2851d = jVar;
    }

    public static void dq(com.bytedance.sdk.component.dq.fw fwVar, com.bytedance.sdk.openadsdk.core.c cVar, j jVar) {
        fwVar.dq("uploadPlayableSignal", (com.bytedance.sdk.component.dq.s<?, ?>) new er(cVar, jVar));
    }

    @Override // com.bytedance.sdk.component.dq.s
    public JSONObject dq(JSONObject jSONObject, com.bytedance.sdk.component.dq.iw iwVar) throws Exception {
        JSONObject jSONObject2 = new JSONObject();
        WeakReference<com.bytedance.sdk.openadsdk.core.c> weakReference = this.dq;
        if (weakReference != null && weakReference.get() != null) {
            com.bytedance.sdk.openadsdk.core.wp.dq().dq(this.f2851d, jSONObject);
        }
        return jSONObject2;
    }
}

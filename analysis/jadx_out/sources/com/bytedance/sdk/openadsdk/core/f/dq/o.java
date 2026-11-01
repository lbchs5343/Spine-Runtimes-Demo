package com.bytedance.sdk.openadsdk.core.f.dq;

import com.bytedance.sdk.openadsdk.core.r.j;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class o extends com.bytedance.sdk.component.dq.s<JSONObject, JSONObject> {

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.core.c f2862d;
    private j dq;

    public o(j jVar, com.bytedance.sdk.openadsdk.core.c cVar) {
        this.dq = jVar;
        this.f2862d = cVar;
    }

    public static void dq(com.bytedance.sdk.component.dq.fw fwVar, j jVar, com.bytedance.sdk.openadsdk.core.c cVar) {
        fwVar.dq("adViewInfo", (com.bytedance.sdk.component.dq.s<?, ?>) new o(jVar, cVar));
    }

    @Override // com.bytedance.sdk.component.dq.s
    public JSONObject dq(JSONObject jSONObject, com.bytedance.sdk.component.dq.iw iwVar) throws Exception {
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("container", this.f2862d.dq());
        jSONObject2.put("creative", this.f2862d.d());
        return jSONObject2;
    }
}

package com.bytedance.sdk.openadsdk.core.f.dq;

import com.bytedance.sdk.openadsdk.core.r.j;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class kk extends com.bytedance.sdk.component.dq.s<JSONObject, JSONObject> {

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.core.c f2857d;
    private j dq;
    private String ox;

    public kk(j jVar, com.bytedance.sdk.openadsdk.core.c cVar, String str) {
        this.dq = jVar;
        this.f2857d = cVar;
        this.ox = str;
    }

    public static void dq(com.bytedance.sdk.component.dq.fw fwVar, j jVar, com.bytedance.sdk.openadsdk.core.c cVar) {
        fwVar.dq("getEstimatedInteractionAreaInfo", (com.bytedance.sdk.component.dq.s<?, ?>) new kk(jVar, cVar, "getEstimatedInteractionAreaInfo"));
        fwVar.dq("interactionAreaInfo", (com.bytedance.sdk.component.dq.s<?, ?>) new kk(jVar, cVar, "interactionAreaInfo"));
    }

    @Override // com.bytedance.sdk.component.dq.s
    public JSONObject dq(JSONObject jSONObject, com.bytedance.sdk.component.dq.iw iwVar) throws Exception {
        com.bytedance.sdk.openadsdk.core.r.f fVar;
        com.bytedance.sdk.openadsdk.core.r.f fVar2;
        JSONObject jSONObject2;
        com.bytedance.sdk.openadsdk.core.ugeno.component.interact.kk ox = this.f2857d.ox();
        String str = this.ox;
        str.getClass();
        if (str.equals("interactionAreaInfo")) {
            JSONArray optJSONArray = jSONObject.optJSONArray("areas");
            if (optJSONArray == null || optJSONArray.length() <= 0 || (jSONObject2 = optJSONArray.getJSONObject(0)) == null) {
                fVar = null;
                fVar2 = null;
            } else {
                fVar = com.bytedance.sdk.openadsdk.core.r.f.dq(jSONObject2);
                if (ox != null) {
                    ox.setEasyPlayInteractionAreaInfo(fVar);
                    fVar2 = com.bytedance.sdk.openadsdk.core.r.f.dq(ox.getEstimatedInteractionAreaInfo());
                } else {
                    fVar2 = null;
                }
            }
            if (fVar2 == null) {
                if (ox != null) {
                    ox.dq(com.bytedance.sdk.openadsdk.core.r.f.d(null, fVar), 1.0d);
                    this.f2857d.dq("canMakeVisiable", (JSONObject) null);
                }
            } else {
                if (fVar != null) {
                    double dq = com.bytedance.sdk.openadsdk.core.r.f.dq(fVar2, fVar);
                    double d2 = fVar.ox * fVar.p;
                    double d3 = fVar2.ox * fVar2.p;
                    if (d3 == 0.0d) {
                        ox.dq(com.bytedance.sdk.openadsdk.core.r.f.d(fVar2, fVar), 1.0d);
                        this.f2857d.dq("canMakeVisiable", (JSONObject) null);
                        return null;
                    }
                    if (d2 == 0.0d) {
                        ox.dq(null, -1.0d);
                        ox.Y_();
                        this.f2857d.dq("expressWebviewRecycle", (JSONObject) null);
                        return null;
                    }
                    double d4 = dq / d2;
                    boolean z = d4 > 0.8d;
                    com.bytedance.sdk.component.utils.ig.dq("xeasy", "A:" + d3 + " B:" + d2 + " o:" + dq + " R:" + d4);
                    if (z) {
                        ox.dq(com.bytedance.sdk.openadsdk.core.r.f.d(fVar2, fVar), (dq - d3) / d3);
                        this.f2857d.dq("canMakeVisiable", (JSONObject) null);
                        return null;
                    }
                    ox.dq(null, -1.0d);
                    ox.Y_();
                    this.f2857d.dq("expressWebviewRecycle", (JSONObject) null);
                    return null;
                }
                ox.dq(null, -1.0d);
                ox.Y_();
                this.f2857d.dq("expressWebviewRecycle", (JSONObject) null);
            }
        } else if (str.equals("getEstimatedInteractionAreaInfo") && ox != null) {
            return ox.getEstimatedInteractionAreaInfo();
        }
        return null;
    }
}

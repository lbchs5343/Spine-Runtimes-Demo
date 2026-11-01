package com.bytedance.sdk.openadsdk.core.f.dq;

import com.bytedance.sdk.openadsdk.core.r.j;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class no extends com.bytedance.sdk.component.dq.s<JSONObject, JSONObject> {

    /* renamed from: d, reason: collision with root package name */
    private List<JSONObject> f2861d;
    private j dq;

    public no(j jVar, List<JSONObject> list) {
        this.dq = jVar;
        this.f2861d = list;
    }

    public static void dq(com.bytedance.sdk.component.dq.fw fwVar, j jVar, List<JSONObject> list) {
        fwVar.dq("getAdsData", (com.bytedance.sdk.component.dq.s<?, ?>) new no(jVar, list));
    }

    @Override // com.bytedance.sdk.component.dq.s
    public JSONObject dq(JSONObject jSONObject, com.bytedance.sdk.component.dq.iw iwVar) throws Exception {
        JSONObject jSONObject2 = new JSONObject();
        int optInt = jSONObject != null ? jSONObject.optInt("ads_num", 3) : -1;
        if (optInt < 0) {
            optInt = 3;
        }
        JSONObject jSONObject3 = new JSONObject();
        jSONObject3.put("creatives", new JSONArray().put(this.dq.ve()));
        jSONObject2.put("firstRes", jSONObject3);
        JSONArray jSONArray = new JSONArray();
        List<JSONObject> list = this.f2861d;
        if (list != null && list.size() > 0) {
            if (optInt > this.f2861d.size()) {
                optInt = this.f2861d.size();
            }
            int min = Math.min(optInt, 3);
            for (int i = 0; i < min; i++) {
                jSONArray.put(i, this.f2861d.get(i));
            }
        }
        JSONObject jSONObject4 = new JSONObject();
        jSONObject4.put("creatives", jSONArray);
        jSONObject2.put("secondRes", jSONObject4);
        JSONObject jSONObject5 = new JSONObject();
        jSONObject5.put("data", jSONObject2);
        return jSONObject5;
    }
}

package com.bytedance.sdk.openadsdk.core.f.dq;

import com.bytedance.sdk.openadsdk.core.r.j;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class jy extends com.bytedance.sdk.component.dq.s<JSONObject, JSONObject> {
    private j dq;

    public jy(j jVar) {
        this.dq = jVar;
    }

    public static void dq(com.bytedance.sdk.component.dq.fw fwVar, j jVar) {
        fwVar.dq("getLiveSaasAuthStatus", (com.bytedance.sdk.component.dq.s<?, ?>) new jy(jVar));
    }

    @Override // com.bytedance.sdk.component.dq.s
    public JSONObject dq(JSONObject jSONObject, com.bytedance.sdk.component.dq.iw iwVar) throws Exception {
        com.bytedance.sdk.openadsdk.core.r.er dq;
        j jVar;
        JSONObject jSONObject2 = new JSONObject();
        com.bytedance.sdk.openadsdk.core.r.fw fwVar = null;
        if (jSONObject != null) {
            try {
                dq = com.bytedance.sdk.openadsdk.core.r.er.dq(jSONObject.optJSONObject("live_info"));
                JSONObject optJSONObject = jSONObject.optJSONObject("deep_link");
                if (optJSONObject != null) {
                    fwVar = new com.bytedance.sdk.openadsdk.core.r.fw(optJSONObject);
                }
            } catch (Throwable th) {
                com.bytedance.sdk.component.utils.ig.p("glsas", "method:" + th.getMessage());
                return jSONObject2;
            }
        } else {
            dq = null;
        }
        if (fwVar == null && (jVar = this.dq) != null) {
            fwVar = jVar.kf();
        }
        if (dq == null) {
            dq = this.dq.nr();
        }
        jSONObject2.put("has_live_silent_auth", dq != null && dq.ox());
        jSONObject2.put("has_install_douyin", com.bytedance.sdk.openadsdk.core.live.p.dq.dq(fwVar));
        jSONObject2.put("has_live_authed", com.bytedance.sdk.openadsdk.core.live.d.dq().s() == 2);
        boolean z = dq != null && dq.p();
        if (z) {
            z = com.bytedance.sdk.openadsdk.core.live.d.dq().ox() == 2;
        }
        jSONObject2.put("has_playable_auth_switch", z);
        JSONObject jSONObject3 = new JSONObject();
        if (dq != null) {
            jSONObject3.put("aweme_agreements", dq.s());
            jSONObject3.put("aweme_privacy", dq.iw());
        }
        jSONObject2.put("aweme_auth_protocol", jSONObject3);
        return jSONObject2;
    }
}

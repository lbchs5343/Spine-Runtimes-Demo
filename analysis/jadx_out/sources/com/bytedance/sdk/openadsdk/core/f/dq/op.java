package com.bytedance.sdk.openadsdk.core.f.dq;

import com.bytedance.sdk.component.dq.p;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.bytedance.sdk.openadsdk.core.r.j;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class op extends com.bytedance.sdk.component.dq.p<JSONObject, JSONObject> {
    private WeakReference<com.bytedance.sdk.openadsdk.core.c> dq;

    public op(com.bytedance.sdk.openadsdk.core.c cVar) {
        this.dq = new WeakReference<>(cVar);
    }

    public static void dq(com.bytedance.sdk.component.dq.fw fwVar, final com.bytedance.sdk.openadsdk.core.c cVar) {
        fwVar.dq("commonConvert", new p.d() { // from class: com.bytedance.sdk.openadsdk.core.f.dq.op.1
            @Override // com.bytedance.sdk.component.dq.p.d
            public com.bytedance.sdk.component.dq.p dq() {
                return new op(com.bytedance.sdk.openadsdk.core.c.this);
            }
        });
    }

    @Override // com.bytedance.sdk.component.dq.p
    public void dq(JSONObject jSONObject, com.bytedance.sdk.component.dq.iw iwVar) throws Exception {
        com.bytedance.sdk.openadsdk.core.ugeno.o.dq r;
        JSONObject d2;
        com.bytedance.sdk.openadsdk.core.no.ia().c();
        WeakReference<com.bytedance.sdk.openadsdk.core.c> weakReference = this.dq;
        if (weakReference == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.c cVar = weakReference.get();
        if (cVar == null) {
            ox();
            return;
        }
        if (jSONObject == null) {
            return;
        }
        j dq = com.bytedance.sdk.openadsdk.core.d.dq(jSONObject);
        int optInt = jSONObject.optInt("j_live_saas_param_interaction_type", -1);
        if (dq == null) {
            return;
        }
        if (dq.vr() == null && (r = dq.r()) != null && (d2 = r.d()) != null) {
            dq.dq(com.bytedance.sdk.openadsdk.core.r.q.dq(d2));
        }
        cVar.dq(dq, optInt);
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(PluginConstants.KEY_ERROR_CODE, 200);
            dq((op) jSONObject2);
        } catch (Exception e2) {
            com.bytedance.sdk.component.utils.ig.dq("xeasy", e2.getMessage());
        }
    }

    @Override // com.bytedance.sdk.component.dq.p
    public void p() {
    }
}

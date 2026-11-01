package com.bytedance.sdk.openadsdk.core.f.dq;

import com.bytedance.sdk.component.dq.p;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class mn extends com.bytedance.sdk.component.dq.p<JSONObject, JSONObject> {
    private WeakReference<com.bytedance.sdk.openadsdk.core.c> dq;

    public mn(com.bytedance.sdk.openadsdk.core.c cVar) {
        this.dq = new WeakReference<>(cVar);
    }

    public static void dq(com.bytedance.sdk.component.dq.fw fwVar, final com.bytedance.sdk.openadsdk.core.c cVar) {
        fwVar.dq("newClickEvent", new p.d() { // from class: com.bytedance.sdk.openadsdk.core.f.dq.mn.1
            @Override // com.bytedance.sdk.component.dq.p.d
            public com.bytedance.sdk.component.dq.p dq() {
                return new mn(com.bytedance.sdk.openadsdk.core.c.this);
            }
        });
    }

    @Override // com.bytedance.sdk.component.dq.p
    public void dq(JSONObject jSONObject, com.bytedance.sdk.component.dq.iw iwVar) throws Exception {
        com.bytedance.sdk.openadsdk.core.c cVar = this.dq.get();
        if (cVar == null) {
            ox();
        } else {
            cVar.no(jSONObject);
        }
    }

    @Override // com.bytedance.sdk.component.dq.p
    public void p() {
    }
}

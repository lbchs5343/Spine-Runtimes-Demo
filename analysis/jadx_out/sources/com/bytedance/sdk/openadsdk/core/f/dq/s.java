package com.bytedance.sdk.openadsdk.core.f.dq;

import com.bytedance.sdk.component.dq.p;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class s extends com.bytedance.sdk.component.dq.p<JSONObject, JSONObject> {
    private WeakReference<com.bytedance.sdk.openadsdk.core.c> dq;

    public s(com.bytedance.sdk.openadsdk.core.c cVar) {
        this.dq = new WeakReference<>(cVar);
    }

    public static void dq(com.bytedance.sdk.component.dq.fw fwVar, final com.bytedance.sdk.openadsdk.core.c cVar) {
        fwVar.dq("immersiveVideoPageBack", new p.d() { // from class: com.bytedance.sdk.openadsdk.core.f.dq.s.1
            @Override // com.bytedance.sdk.component.dq.p.d
            public com.bytedance.sdk.component.dq.p dq() {
                return new s(com.bytedance.sdk.openadsdk.core.c.this);
            }
        });
    }

    @Override // com.bytedance.sdk.component.dq.p
    public void dq(JSONObject jSONObject, com.bytedance.sdk.component.dq.iw iwVar) throws Exception {
        WeakReference<com.bytedance.sdk.openadsdk.core.c> weakReference = this.dq;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.c cVar = this.dq.get();
        if (cVar == null) {
            ox();
        } else {
            cVar.ia();
        }
    }

    @Override // com.bytedance.sdk.component.dq.p
    public void p() {
    }
}

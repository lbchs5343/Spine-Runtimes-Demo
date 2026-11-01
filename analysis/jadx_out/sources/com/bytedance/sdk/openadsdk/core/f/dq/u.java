package com.bytedance.sdk.openadsdk.core.f.dq;

import com.bytedance.sdk.component.dq.p;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class u extends com.bytedance.sdk.component.dq.p<JSONObject, JSONObject> {
    private WeakReference<com.bytedance.sdk.openadsdk.core.c> dq;

    public u(com.bytedance.sdk.openadsdk.core.c cVar) {
        this.dq = new WeakReference<>(cVar);
    }

    public static void dq(com.bytedance.sdk.component.dq.fw fwVar, final com.bytedance.sdk.openadsdk.core.c cVar) {
        fwVar.dq("showAppDetailOrPrivacyDialog", new p.d() { // from class: com.bytedance.sdk.openadsdk.core.f.dq.u.1
            @Override // com.bytedance.sdk.component.dq.p.d
            public com.bytedance.sdk.component.dq.p dq() {
                return new u(com.bytedance.sdk.openadsdk.core.c.this);
            }
        });
    }

    @Override // com.bytedance.sdk.component.dq.p
    public void dq(JSONObject jSONObject, com.bytedance.sdk.component.dq.iw iwVar) throws Exception {
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
        int optInt = jSONObject.optInt("show_dialog_style");
        if (optInt == 1) {
            cVar.ji();
        } else if (optInt == 2) {
            cVar.h();
        }
    }

    @Override // com.bytedance.sdk.component.dq.p
    public void p() {
    }
}

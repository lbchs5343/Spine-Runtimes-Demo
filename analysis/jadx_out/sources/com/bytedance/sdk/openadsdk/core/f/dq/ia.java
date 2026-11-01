package com.bytedance.sdk.openadsdk.core.f.dq;

import java.lang.ref.WeakReference;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class ia extends com.bytedance.sdk.component.dq.s<JSONObject, JSONObject> {
    private WeakReference<com.bytedance.sdk.openadsdk.core.c> dq;

    public ia(com.bytedance.sdk.openadsdk.core.c cVar) {
        this.dq = new WeakReference<>(cVar);
    }

    public static void dq(com.bytedance.sdk.component.dq.fw fwVar, com.bytedance.sdk.openadsdk.core.c cVar) {
        fwVar.dq("render_button", (com.bytedance.sdk.component.dq.s<?, ?>) new ia(cVar));
    }

    @Override // com.bytedance.sdk.component.dq.s
    public JSONObject dq(JSONObject jSONObject, com.bytedance.sdk.component.dq.iw iwVar) throws Exception {
        WeakReference<com.bytedance.sdk.openadsdk.core.c> weakReference = this.dq;
        if (weakReference == null || weakReference.get() == null) {
            return new JSONObject();
        }
        WeakReference<com.bytedance.sdk.openadsdk.core.c> weakReference2 = this.dq;
        if (weakReference2 == null || weakReference2.get() == null) {
            return null;
        }
        try {
            if (jSONObject.getBoolean("is_direct_download")) {
                this.dq.get().mp(false);
                com.bytedance.sdk.openadsdk.core.d.s no = this.dq.get().no();
                if (no != null) {
                    no.d();
                }
            } else {
                this.dq.get().mp(true);
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }
}

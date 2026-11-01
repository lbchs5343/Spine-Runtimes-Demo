package com.bytedance.sdk.openadsdk.kk.dq;

import com.bytedance.sdk.component.dq.fw;
import com.bytedance.sdk.openadsdk.core.c;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class d extends com.bytedance.sdk.component.dq.s<JSONObject, JSONObject> {
    private WeakReference<c> dq;

    public d(c cVar) {
        this.dq = new WeakReference<>(cVar);
    }

    public static void dq(fw fwVar, c cVar) {
        fwVar.dq("openPlayable", (com.bytedance.sdk.component.dq.s<?, ?>) new d(cVar));
    }

    @Override // com.bytedance.sdk.component.dq.s
    public JSONObject dq(JSONObject jSONObject, com.bytedance.sdk.component.dq.iw iwVar) throws Exception {
        c cVar;
        JSONObject jSONObject2 = new JSONObject();
        WeakReference<c> weakReference = this.dq;
        if (weakReference != null && weakReference.get() != null && (cVar = this.dq.get()) != null) {
            cVar.cd();
        }
        return jSONObject2;
    }
}

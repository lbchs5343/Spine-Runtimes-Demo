package com.bytedance.sdk.openadsdk.core.cd;

import com.bytedance.sdk.openadsdk.core.c;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class s implements com.bytedance.sdk.openadsdk.q.ox {
    c dq;

    public s(c cVar) {
        this.dq = cVar;
    }

    @Override // com.bytedance.sdk.openadsdk.q.ox
    public void dq(String str, JSONObject jSONObject) {
        c cVar = this.dq;
        if (cVar != null) {
            cVar.dq(str, jSONObject);
        }
    }
}

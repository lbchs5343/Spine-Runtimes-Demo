package com.bytedance.sdk.openadsdk.kk.dq;

import com.bytedance.sdk.component.dq.fw;
import com.bytedance.sdk.openadsdk.core.c;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class mn extends com.bytedance.sdk.component.dq.s<JSONObject, JSONObject> {
    private WeakReference<c> dq;

    public mn(c cVar) {
        this.dq = new WeakReference<>(cVar);
    }

    public static void dq(fw fwVar, c cVar) {
        fwVar.dq("startVideoTransform", (com.bytedance.sdk.component.dq.s<?, ?>) new mn(cVar));
    }

    @Override // com.bytedance.sdk.component.dq.s
    public JSONObject dq(JSONObject jSONObject, com.bytedance.sdk.component.dq.iw iwVar) throws Exception {
        c cVar;
        JSONObject optJSONObject;
        JSONObject jSONObject2 = new JSONObject();
        WeakReference<c> weakReference = this.dq;
        if (weakReference != null && weakReference.get() != null && jSONObject != null && (cVar = this.dq.get()) != null && (optJSONObject = jSONObject.optJSONObject("videoInfo")) != null) {
            cVar.dq((float) optJSONObject.optDouble("toX"), (float) optJSONObject.optDouble("toY"), (float) optJSONObject.optDouble("pivotX"), (float) optJSONObject.optDouble("pivotY"), jSONObject.optInt(MediationConstant.EXTRA_DURATION));
        }
        return jSONObject2;
    }
}

package com.bytedance.sdk.openadsdk.core.f.dq;

import com.bytedance.sdk.openadsdk.core.widget.ia;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class ce extends com.bytedance.sdk.component.dq.s<JSONObject, JSONObject> {
    private ia.dq dq;

    public ce(ia.dq dqVar) {
        this.dq = dqVar;
    }

    public static void dq(com.bytedance.sdk.component.dq.fw fwVar, ia.dq dqVar) {
        fwVar.dq("UgenDownloadDialogInteraction", (com.bytedance.sdk.component.dq.s<?, ?>) new ce(dqVar));
    }

    private void dq(JSONObject jSONObject) {
        if (jSONObject == null || this.dq == null) {
            return;
        }
        int optInt = jSONObject.optInt("InteractionType");
        if (optInt == 1) {
            this.dq.ox(null);
            return;
        }
        if (optInt == 2) {
            this.dq.dq(null);
            return;
        }
        if (optInt == 3) {
            this.dq.dq();
        } else if (optInt == 4) {
            this.dq.d(null);
        } else {
            if (optInt != 5) {
                return;
            }
            this.dq.p(null);
        }
    }

    @Override // com.bytedance.sdk.component.dq.s
    public JSONObject dq(JSONObject jSONObject, com.bytedance.sdk.component.dq.iw iwVar) throws Exception {
        dq(jSONObject);
        return ox();
    }

    public JSONObject ox() {
        return new JSONObject();
    }
}

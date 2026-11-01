package com.bytedance.sdk.openadsdk.core.ugeno.ia;

import com.bytedance.sdk.openadsdk.core.le.d;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class s {

    public interface dq {
        void dq(JSONObject jSONObject);
    }

    public static void dq(com.bytedance.sdk.openadsdk.core.ugeno.mn.dq dqVar, dq dqVar2) {
        if (dqVar == null) {
            if (dqVar2 != null) {
                dqVar2.dq(null);
            }
        } else {
            dq(dqVar.ox(), dqVar.dq(), dqVar.d(), dqVar2);
        }
    }

    public static void dq(String str, String str2, String str3, final dq dqVar) {
        JSONObject dq2 = com.bytedance.sdk.openadsdk.core.ugeno.mn.dq().dq(str2, str3);
        if (dq2 == null) {
            com.bytedance.sdk.openadsdk.core.le.d.dq(str, str2, str3, new d.InterfaceC0169d() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.ia.s.1
                @Override // com.bytedance.sdk.openadsdk.core.le.d.InterfaceC0169d
                public void dq() {
                    dq dqVar2 = dq.this;
                    if (dqVar2 != null) {
                        dqVar2.dq(null);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.core.le.d.InterfaceC0169d
                public void dq(JSONObject jSONObject) {
                    dq dqVar2 = dq.this;
                    if (dqVar2 != null) {
                        dqVar2.dq(jSONObject);
                    }
                }
            });
        } else if (dqVar != null) {
            dqVar.dq(dq2);
        }
    }
}

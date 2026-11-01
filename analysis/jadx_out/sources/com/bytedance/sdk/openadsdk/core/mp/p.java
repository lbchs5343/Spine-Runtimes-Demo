package com.bytedance.sdk.openadsdk.core.mp;

import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.op;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class p {
    private static JSONObject d(String str, long j, boolean z) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("type", "over_freq");
            jSONObject.put("rit", str);
            jSONObject.put("ad_sdk_version", op.ox);
            jSONObject.put("timestamp", j);
            jSONObject.put("is_agg", z);
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    public static void dq(String str, long j, boolean z) {
        JSONObject d2 = d(str, j, z);
        com.bytedance.sdk.component.kk.d.s d3 = com.bytedance.sdk.openadsdk.core.le.s.dq().d().d();
        d3.dq(c.ia("/api/ad/union/sdk/stats/"));
        d3.ox(d2.toString());
        d3.dq(new com.bytedance.sdk.component.kk.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.mp.p.1
            @Override // com.bytedance.sdk.component.kk.dq.dq
            public void dq(com.bytedance.sdk.component.kk.d.p pVar, com.bytedance.sdk.component.kk.d dVar) {
                if (dVar != null) {
                    ig.dq("FrequentCallEventHelper", Boolean.valueOf(dVar.ia()), dVar.p());
                } else {
                    ig.dq("FrequentCallEventHelper", "NetResponse is null");
                }
            }

            @Override // com.bytedance.sdk.component.kk.dq.dq
            public void dq(com.bytedance.sdk.component.kk.d.p pVar, IOException iOException) {
                ig.dq("FrequentCallEventHelper", iOException.getMessage());
            }
        });
    }
}

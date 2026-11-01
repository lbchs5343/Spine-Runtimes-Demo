package com.bytedance.sdk.openadsdk.core.ir;

import android.util.Pair;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class wn extends com.bytedance.sdk.component.kk.d.s {
    public wn(com.bytedance.sdk.component.d.dq.ig igVar) {
        super(igVar);
    }

    public void d(JSONObject jSONObject, String str) {
        if (com.bytedance.sdk.openadsdk.core.wp.d().yo()) {
            dq(jSONObject, str);
        } else {
            ox(com.bytedance.sdk.component.utils.dq.dq(jSONObject).toString());
        }
    }

    public void dq(JSONObject jSONObject, String str) {
        Pair<Integer, ?> pair;
        Object obj;
        try {
            pair = com.bytedance.sdk.openadsdk.core.ox.iw.dq().dq(jSONObject.toString(), str);
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.ig.d(th.getMessage());
            pair = null;
        }
        if (pair == null || (obj = pair.first) == null) {
            ox(com.bytedance.sdk.component.utils.dq.dq(jSONObject).toString());
        } else {
            if (((Integer) obj).intValue() != 4) {
                dq((JSONObject) pair.second);
                return;
            }
            dq("application/octet-stream", (byte[]) pair.second);
            dq(true);
            d("x-pglcypher", String.valueOf(pair.first));
        }
    }

    public void ox(JSONObject jSONObject, String str) {
        if (com.bytedance.sdk.openadsdk.core.wp.d().jo()) {
            dq(jSONObject, str);
        } else {
            ox(com.bytedance.sdk.component.utils.dq.dq(jSONObject).toString());
        }
    }
}

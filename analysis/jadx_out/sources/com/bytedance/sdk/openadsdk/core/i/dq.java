package com.bytedance.sdk.openadsdk.core.i;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.gh.ig;
import java.util.HashSet;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class dq {
    static HashSet<String> dq = new HashSet<>();

    public static void d(final String str) {
        if (TextUtils.isEmpty(str) || !dq.contains(str)) {
            return;
        }
        dq.remove(str);
        ig.dq().d(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.i.dq.1
            @Override // com.bytedance.sdk.openadsdk.no.dq.dq
            public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("union_key", str);
                return com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().dq("listener_process_but_not_register").d(jSONObject.toString());
            }
        }, "listener_process_but_not_register");
    }

    public static void dq(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        dq.add(str);
    }
}

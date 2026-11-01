package com.bytedance.sdk.openadsdk.core.nativeexpress.onepointfive;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.op;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class s {
    public static int dq(com.bytedance.sdk.openadsdk.f.d.ox.d dVar) {
        try {
            if (!dq() || TextUtils.isEmpty(dVar.f())) {
                return 0;
            }
            JSONObject jSONObject = new JSONObject(dVar.f());
            if (jSONObject.has("_tt_group_load_more")) {
                return jSONObject.optInt("_tt_group_load_more");
            }
            return 0;
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return 0;
    }

    public static boolean dq() {
        return op.f3334d >= 4700;
    }
}

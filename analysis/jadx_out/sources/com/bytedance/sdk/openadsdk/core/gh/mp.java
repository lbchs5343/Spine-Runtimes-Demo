package com.bytedance.sdk.openadsdk.core.gh;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.wp;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class mp {
    public static boolean dq(String str, double d2) {
        JSONObject cv = wp.d().cv();
        if (cv != null && !TextUtils.isEmpty(str)) {
            try {
                double optDouble = cv.optDouble(str, d2);
                if (optDouble >= 1.0d || optDouble < 0.0d || com.bytedance.sdk.openadsdk.core.ig.d.dq.contains(str)) {
                    return true;
                }
                return com.bytedance.sdk.openadsdk.core.s.d.dq((float) optDouble, false);
            } catch (Throwable th) {
                com.bytedance.sdk.component.utils.ig.d("sample throwable:" + th.getMessage());
            }
        }
        return true;
    }
}

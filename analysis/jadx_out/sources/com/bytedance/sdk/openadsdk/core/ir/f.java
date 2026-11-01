package com.bytedance.sdk.openadsdk.core.ir;

import android.text.TextUtils;
import java.util.Map;

/* loaded from: classes3.dex */
public class f {
    public static String dq(Map<String, String> map) {
        if (map == null || map.isEmpty()) {
            return null;
        }
        return map.get(TextUtils.isEmpty(map.get("content-type")) ? "Content-Type" : "content-type");
    }
}

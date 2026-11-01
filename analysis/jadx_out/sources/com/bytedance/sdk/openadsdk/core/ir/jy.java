package com.bytedance.sdk.openadsdk.core.ir;

import org.json.JSONObject;

/* loaded from: classes3.dex */
public class jy {
    public static boolean d() {
        JSONObject fd = com.bytedance.sdk.openadsdk.core.wp.d().fd();
        return fd != null && dq() && fd.optInt("force_drop", 0) == 1;
    }

    public static boolean dq() {
        long currentTimeMillis = System.currentTimeMillis();
        JSONObject fd = com.bytedance.sdk.openadsdk.core.wp.d().fd();
        if (fd == null) {
            return false;
        }
        return currentTimeMillis >= fd.optLong("start", 1707480000000L) && currentTimeMillis <= fd.optLong("end", 1707498000000L);
    }
}

package com.bytedance.sdk.openadsdk.core.playable;

import android.content.Context;
import com.bytedance.sdk.openadsdk.core.ir.i;
import com.bytedance.sdk.openadsdk.core.r.j;
import java.util.HashMap;

/* loaded from: classes3.dex */
public class d {
    public static void dq(Context context, j jVar) {
        if (i.ox(jVar)) {
            com.bytedance.sdk.openadsdk.core.ig.ox.kk(jVar, "playable_preload", "preload_start", null);
        }
    }

    public static void dq(Context context, j jVar, int i, String str) {
        if (i.ox(jVar)) {
            HashMap hashMap = new HashMap();
            hashMap.put("error_code", Integer.valueOf(i));
            hashMap.put("error_reason", str);
            com.bytedance.sdk.openadsdk.core.ig.ox.kk(jVar, "playable_preload", "preload_fail", hashMap);
        }
    }

    public static void dq(Context context, j jVar, long j, long j2) {
        if (i.ox(jVar)) {
            HashMap hashMap = new HashMap();
            hashMap.put("loadzip_success_time", Long.valueOf(j));
            hashMap.put("unzip_success_time", Long.valueOf(j2));
            com.bytedance.sdk.openadsdk.core.ig.ox.kk(jVar, "playable_preload", "preload_success", hashMap);
        }
    }
}

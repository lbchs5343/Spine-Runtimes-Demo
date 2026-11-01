package com.bytedance.sdk.openadsdk.core.ir;

import android.content.Context;
import java.io.BufferedReader;
import java.io.InputStreamReader;

/* loaded from: classes3.dex */
public class ia {
    public static void dq(com.bytedance.sdk.openadsdk.f.d.ox.dq dqVar) {
        try {
            if (!dqVar.ia() || com.bytedance.sdk.component.utils.ig.dq()) {
                return;
            }
            System.currentTimeMillis();
            if (Boolean.parseBoolean(new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("getprop debug.ttcsj.debugmode").getInputStream())).readLine())) {
                com.bytedance.sdk.component.utils.ig.d();
                com.bykv.vk.openvk.component.video.api.iw.ox.dq();
                com.bytedance.sdk.component.kk.dq.dq();
                com.bytedance.sdk.openadsdk.tools.d.d();
                com.bytedance.sdk.component.ig.d.dq.dq(true);
            }
        } catch (Exception unused) {
        }
    }

    public static boolean dq() {
        if (com.bytedance.sdk.openadsdk.core.no.ia().ce()) {
            return true;
        }
        Context context = com.bytedance.sdk.openadsdk.core.wp.getContext();
        if (context.getApplicationInfo() != null) {
            if ((context.getApplicationInfo().flags & 2) != 0) {
                return true;
            }
        }
        return false;
    }
}

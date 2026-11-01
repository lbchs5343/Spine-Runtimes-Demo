package com.bytedance.sdk.gromore.init;

import android.os.Bundle;
import com.bykv.vk.openvk.api.proto.Manager;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.core.ir;
import com.bytedance.sdk.openadsdk.core.op;

/* loaded from: classes.dex */
public class dq {
    public static ir d() {
        Manager csjManger = DispatchAdSdkInitializerHolder.getCsjManger();
        if (csjManger instanceof ir) {
            return (ir) csjManger;
        }
        return null;
    }

    public static int dq() {
        return op.f3334d;
    }

    public static void dq(int i) {
        ir d2 = d();
        if (d2 != null) {
            d2.dq(i);
        }
    }

    public static void dq(boolean z) {
        ir d2 = d();
        if (d2 == null) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putBoolean("is_paid", z);
        if (bundle.keySet().isEmpty()) {
            return;
        }
        d2.dq(ValueSet.class, bundle);
    }

    public static String ox() {
        return op.ox;
    }

    public static String p() {
        return "6.6.0.7";
    }

    public static boolean s() {
        return DispatchAdSdkInitializerHolder.isInitSuccess();
    }
}

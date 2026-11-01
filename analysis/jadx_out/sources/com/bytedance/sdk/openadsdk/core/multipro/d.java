package com.bytedance.sdk.openadsdk.core.multipro;

import com.bytedance.sdk.openadsdk.core.ir.n;

/* loaded from: classes3.dex */
public class d {

    /* renamed from: d, reason: collision with root package name */
    public static boolean f3195d;
    public static boolean dq;

    public static class dq {
        static final com.bytedance.sdk.component.mn.dq dq = n.dq("sp_multi_info");
    }

    public static void d() {
        if (f3195d) {
            dq.dq.dq("is_support_multi_process", false);
        }
        dq = false;
    }

    public static void dq() {
        if (!f3195d) {
            dq.dq.dq("is_support_multi_process", true);
        }
        dq = true;
        f3195d = true;
    }

    public static boolean ox() {
        if (!f3195d) {
            dq = dq.dq.d("is_support_multi_process", false);
            f3195d = true;
        }
        return dq;
    }
}

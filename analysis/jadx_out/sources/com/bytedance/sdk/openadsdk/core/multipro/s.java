package com.bytedance.sdk.openadsdk.core.multipro;

import com.bytedance.sdk.openadsdk.core.wp;
import g.awf;

/* loaded from: classes3.dex */
public class s {
    public static String dq = "com.bytedance.openadsdk";

    /* renamed from: d, reason: collision with root package name */
    public static String f3198d = awf.ad(new StringBuilder("content://"), dq, ".TTMultiProvider");

    static {
        dq();
    }

    public static void dq() {
        if (wp.getContext() != null) {
            dq = wp.getContext().getPackageName();
            f3198d = awf.ad(new StringBuilder("content://"), dq, ".TTMultiProvider");
        }
    }
}

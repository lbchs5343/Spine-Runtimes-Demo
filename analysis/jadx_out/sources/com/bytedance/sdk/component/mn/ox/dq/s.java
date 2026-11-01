package com.bytedance.sdk.component.mn.ox.dq;

import android.content.Context;
import g.awf;

/* loaded from: classes.dex */
public class s {
    public static String dq = "com.bytedance.openadsdk";

    /* renamed from: d, reason: collision with root package name */
    public static String f2006d = awf.ad(new StringBuilder("content://"), dq, ".TTMultiProvider");

    static {
        dq();
    }

    public static void dq() {
        Context context = d.getContext();
        if (context == null) {
            context = com.bytedance.sdk.component.mn.ox.getContext();
        }
        if (context != null) {
            dq = context.getPackageName();
            f2006d = awf.ad(new StringBuilder("content://"), dq, ".TTMultiProvider");
        }
    }
}

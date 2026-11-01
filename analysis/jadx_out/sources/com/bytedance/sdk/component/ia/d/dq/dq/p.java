package com.bytedance.sdk.component.ia.d.dq.dq;

import com.bytedance.sdk.component.ia.dq.s;
import g.awf;

/* loaded from: classes.dex */
public class p {
    private static String dq = "com.bytedance.openadsdk";

    /* renamed from: d, reason: collision with root package name */
    private static String f1912d = awf.ad(new StringBuilder("content://"), dq, ".TTMultiProvider");

    public static String dq(s sVar) {
        if (sVar.getContext() != null) {
            dq = sVar.getContext().getPackageName();
            f1912d = awf.ad(new StringBuilder("content://"), dq, ".TTMultiProvider");
        }
        return f1912d;
    }
}

package com.bytedance.sdk.component.kk.p;

import com.bytedance.sdk.component.utils.ig;

/* loaded from: classes.dex */
public class s {

    /* renamed from: d, reason: collision with root package name */
    private static int f2000d = 4;
    private static boolean dq;

    public static void dq(String str, String str2) {
        if (dq && str2 != null && f2000d <= 4) {
            ig.ox(str);
        }
    }

    public static boolean dq() {
        return dq;
    }
}

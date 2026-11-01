package com.bytedance.sdk.component.utils;

import android.text.TextUtils;

/* loaded from: classes.dex */
public class f {
    private static void d(String str) {
        throw new IllegalArgumentException(str);
    }

    public static void dq(Object obj, String str) {
        if (obj == null) {
            d(str);
        }
    }

    public static void dq(String str) {
        d(str);
    }

    public static void dq(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            d(str2);
        }
    }

    public static void dq(boolean z, String str) {
        if (z) {
            return;
        }
        d(str);
    }
}

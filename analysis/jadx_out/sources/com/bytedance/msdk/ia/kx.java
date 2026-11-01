package com.bytedance.msdk.ia;

import android.text.TextUtils;

/* loaded from: classes.dex */
public class kx {
    private static void dq(String str) {
        throw new IllegalArgumentException(str);
    }

    public static void dq(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            dq(str2);
        }
    }
}

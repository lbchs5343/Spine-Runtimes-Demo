package com.bytedance.sdk.openadsdk.api.plugin.d;

import android.text.TextUtils;

/* loaded from: classes.dex */
public class dq {
    public static String dq(String str) {
        if (TextUtils.isEmpty(str) || str.length() < 49) {
            return str;
        }
        String dq = dq(str.substring(1, 33), 32);
        String substring = str.substring(33, 49);
        return (substring == null || dq == null) ? str : com.bytedance.sdk.component.s.dq.d(str.substring(49), substring, dq);
    }

    public static String dq(String str, int i) {
        if (str == null || str.length() != i) {
            return null;
        }
        int i2 = i / 2;
        return str.substring(i2, i) + str.substring(0, i2);
    }
}

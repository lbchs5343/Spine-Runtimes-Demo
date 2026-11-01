package com.bytedance.sdk.component.utils;

import android.os.Build;
import android.text.TextUtils;

/* loaded from: classes.dex */
public class le {
    private static volatile String dq;

    public static String dq() {
        if (!TextUtils.isEmpty(dq)) {
            return dq;
        }
        String str = Build.MODEL;
        dq = str;
        return str;
    }
}

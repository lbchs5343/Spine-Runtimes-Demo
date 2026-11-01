package com.bytedance.sdk.component.dq;

import android.text.TextUtils;
import g.awf;
import g.tn;

/* loaded from: classes.dex */
class wp {
    private static boolean dq;

    public static String dq() {
        return "";
    }

    public static String dq(String str) {
        if (TextUtils.isEmpty(str)) {
            return "{\"code\":1}";
        }
        String substring = dq ? str.substring(1, str.length() - 1) : "";
        String x = tn.x("{\"code\":1,\"__data\":", str);
        if (substring.isEmpty()) {
            return awf.c(x, "}");
        }
        return x + "," + substring + "}";
    }

    public static String dq(Throwable th) {
        return awf.x(new StringBuilder("{\"code\":"), th instanceof cd ? ((cd) th).dq : 0, "}");
    }

    public static void dq(boolean z) {
        dq = z;
    }
}

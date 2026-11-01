package com.bytedance.msdk.d;

import android.text.TextUtils;
import com.bytedance.msdk.ia.c;

/* loaded from: classes.dex */
public class p {
    public static final String dq = c.p();

    /* renamed from: d, reason: collision with root package name */
    public static boolean f1030d = true;

    public static String d() {
        return com.bytedance.sdk.gromore.init.dq.ox();
    }

    public static int dq() {
        return Integer.parseInt(d().replace(".", ""));
    }

    public static String ox() {
        if (TextUtils.isEmpty(d())) {
            return "";
        }
        String[] split = d().split("\\.");
        if (split.length < 4) {
            return "";
        }
        return split[0] + "." + split[1] + "." + split[2];
    }

    public static String p() {
        return com.bytedance.sdk.gromore.init.dq.p();
    }
}

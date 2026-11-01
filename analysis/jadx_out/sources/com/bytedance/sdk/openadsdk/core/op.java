package com.bytedance.sdk.openadsdk.core;

import android.content.Context;
import android.text.TextUtils;

/* loaded from: classes3.dex */
public final class op {

    /* renamed from: d, reason: collision with root package name */
    public static int f3334d = 6607;
    public static boolean dq = false;
    public static String ia = "6.6.0.0";
    public static String iw = "main";
    public static boolean mn = false;
    public static String ox = "6.6.0.7";
    public static int p = 999;
    public static boolean s = true;

    public static boolean d() {
        return false;
    }

    public static String dq(Context context) {
        return "";
    }

    public static boolean dq() {
        return true;
    }

    public static boolean iw() {
        return TextUtils.equals("internal", iw);
    }

    public static boolean ox() {
        return com.bytedance.sdk.openadsdk.h.iw.dq();
    }

    public static boolean p() {
        return com.bytedance.sdk.component.ig.d.d.r();
    }

    public static String s() {
        StringBuilder sb = new StringBuilder();
        sb.append(iw);
        sb.append(dq() ? "_plugin" : "");
        sb.append(mn ? "_open" : "_close");
        return sb.toString();
    }
}
